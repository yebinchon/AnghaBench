; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_of_device_common.c_of_propagate_archdata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_of_device_common.c_of_propagate_archdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dev_archdata, %struct.device_node* }
%struct.dev_archdata = type { i32, i32, i32, i32 }
%struct.device_node = type { %struct.device_node*, %struct.device_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_propagate_archdata(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dev_archdata*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.dev_archdata* %9, %struct.dev_archdata** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = getelementptr inbounds %struct.device_node, %struct.device_node* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  br label %17

17:                                               ; preds = %58, %1
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %21)
  store %struct.platform_device* %22, %struct.platform_device** %6, align 8
  %23 = load %struct.dev_archdata*, %struct.dev_archdata** %3, align 8
  %24 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %28, i32 0, i32 3
  store i32 %25, i32* %29, align 4
  %30 = load %struct.dev_archdata*, %struct.dev_archdata** %3, align 8
  %31 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 8
  %37 = load %struct.dev_archdata*, %struct.dev_archdata** %3, align 8
  %38 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.dev_archdata*, %struct.dev_archdata** %3, align 8
  %45 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = getelementptr inbounds %struct.device_node, %struct.device_node* %51, i32 0, i32 0
  %53 = load %struct.device_node*, %struct.device_node** %52, align 8
  %54 = icmp ne %struct.device_node* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %20
  %56 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  call void @of_propagate_archdata(%struct.platform_device* %56)
  br label %57

57:                                               ; preds = %55, %20
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = getelementptr inbounds %struct.device_node, %struct.device_node* %59, i32 0, i32 1
  %61 = load %struct.device_node*, %struct.device_node** %60, align 8
  store %struct.device_node* %61, %struct.device_node** %5, align 8
  br label %17

62:                                               ; preds = %17
  ret void
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
