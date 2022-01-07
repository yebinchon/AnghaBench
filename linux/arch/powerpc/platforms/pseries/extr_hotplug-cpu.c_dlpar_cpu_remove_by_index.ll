; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_dlpar_cpu_remove_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_dlpar_cpu_remove_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Cannot find CPU (drc index %x) to remove\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dlpar_cpu_remove_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlpar_cpu_remove_by_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.device_node* @cpu_drc_index_to_dn(i32 %6)
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dlpar_cpu_remove(%struct.device_node* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.device_node* @cpu_drc_index_to_dn(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dlpar_cpu_remove(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
