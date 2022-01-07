; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_count_non_bridge_devices.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_count_non_bridge_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.msi_counts = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"rtas_msi: counting %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"class-code\00", align 1
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_node*, i8*)* @count_non_bridge_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @count_non_bridge_devices(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.msi_counts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.msi_counts*
  store %struct.msi_counts* %9, %struct.msi_counts** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.device_node* %10)
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call i32* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @be32_to_cpup(i32* %17)
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 8
  %24 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.msi_counts*, %struct.msi_counts** %5, align 8
  %28 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %20
  ret i8* null
}

declare dso_local i32 @pr_debug(i8*, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
