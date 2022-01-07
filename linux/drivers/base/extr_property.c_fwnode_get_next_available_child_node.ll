; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_get_next_available_child_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_get_next_available_child_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %6, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %9 = icmp ne %struct.fwnode_handle* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %3, align 8
  br label %29

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %24, %11
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %15 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %13, %struct.fwnode_handle* %14)
  store %struct.fwnode_handle* %15, %struct.fwnode_handle** %6, align 8
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %17 = icmp ne %struct.fwnode_handle* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %20 = call i64 @fwnode_device_is_available(%struct.fwnode_handle* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %12
  br label %27

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %26 = icmp ne %struct.fwnode_handle* %25, null
  br i1 %26, label %12, label %27

27:                                               ; preds = %24, %22
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  store %struct.fwnode_handle* %28, %struct.fwnode_handle** %3, align 8
  br label %29

29:                                               ; preds = %27, %10
  %30 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  ret %struct.fwnode_handle* %30
}

declare dso_local %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle*, %struct.fwnode_handle*) #1

declare dso_local i64 @fwnode_device_is_available(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
