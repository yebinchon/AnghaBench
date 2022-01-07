; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_dart_iommu.c_dart_device_on_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_dart_iommu.c_dart_device_on_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"U4-pcie\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"u4-pcie\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dart_device_on_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dart_device_on_pcie(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.device_node* @of_node_get(i32 %7)
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i64 @of_device_is_compatible(%struct.device_node* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call i64 @of_device_is_compatible(%struct.device_node* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %12
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @of_node_put(%struct.device_node* %21)
  store i32 1, i32* %2, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %24)
  store %struct.device_node* %25, %struct.device_node** %4, align 8
  br label %9

26:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
