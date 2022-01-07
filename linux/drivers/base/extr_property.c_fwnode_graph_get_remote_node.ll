; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_graph_get_remote_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_graph_get_remote_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.fwnode_endpoint = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_node(%struct.fwnode_handle* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca %struct.fwnode_endpoint, align 8
  %10 = alloca %struct.fwnode_handle*, align 8
  %11 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %8, align 8
  br label %12

12:                                               ; preds = %33, %22, %3
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %15 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* %13, %struct.fwnode_handle* %14)
  store %struct.fwnode_handle* %15, %struct.fwnode_handle** %8, align 8
  %16 = icmp ne %struct.fwnode_handle* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %19 = call i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle* %18, %struct.fwnode_endpoint* %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %12

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %9, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23
  br label %12

34:                                               ; preds = %28
  %35 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %36 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* %35)
  store %struct.fwnode_handle* %36, %struct.fwnode_handle** %10, align 8
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %38 = icmp ne %struct.fwnode_handle* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %4, align 8
  br label %50

40:                                               ; preds = %34
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %42 = call i64 @fwnode_device_is_available(%struct.fwnode_handle* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  br label %47

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi %struct.fwnode_handle* [ %45, %44 ], [ null, %46 ]
  store %struct.fwnode_handle* %48, %struct.fwnode_handle** %4, align 8
  br label %50

49:                                               ; preds = %12
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %4, align 8
  br label %50

50:                                               ; preds = %49, %47, %39
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  ret %struct.fwnode_handle* %51
}

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle*, %struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle*, %struct.fwnode_endpoint*) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle*) #1

declare dso_local i64 @fwnode_device_is_available(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
