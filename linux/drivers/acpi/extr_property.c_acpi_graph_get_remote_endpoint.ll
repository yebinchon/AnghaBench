; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_graph_get_remote_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_graph_get_remote_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.fwnode_reference_args = type { i32, i32*, %struct.fwnode_handle* }

@.str = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwnode_handle* (%struct.fwnode_handle*)* @acpi_graph_get_remote_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwnode_handle* @acpi_graph_get_remote_endpoint(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fwnode_reference_args, align 8
  %8 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  %9 = call i32 @memset(%struct.fwnode_reference_args* %7, i32 0, i32 24)
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %11 = call i32 @acpi_node_get_property_reference(%struct.fwnode_handle* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, %struct.fwnode_reference_args* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %2, align 8
  br label %52

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %7, i32 0, i32 2
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %16, align 8
  %18 = call i32 @is_acpi_device_node(%struct.fwnode_handle* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %7, i32 0, i32 2
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %26, align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi %struct.fwnode_handle* [ null, %24 ], [ %27, %25 ]
  store %struct.fwnode_handle* %29, %struct.fwnode_handle** %2, align 8
  br label %52

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %2, align 8
  br label %52

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %7, i32 0, i32 2
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %36, align 8
  store %struct.fwnode_handle* %37, %struct.fwnode_handle** %4, align 8
  %38 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %7, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %7, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.fwnode_handle* @acpi_graph_get_child_prop_value(%struct.fwnode_handle* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store %struct.fwnode_handle* %48, %struct.fwnode_handle** %4, align 8
  %49 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.fwnode_handle* @acpi_graph_get_child_prop_value(%struct.fwnode_handle* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store %struct.fwnode_handle* %51, %struct.fwnode_handle** %2, align 8
  br label %52

52:                                               ; preds = %35, %34, %28, %14
  %53 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  ret %struct.fwnode_handle* %53
}

declare dso_local i32 @memset(%struct.fwnode_reference_args*, i32, i32) #1

declare dso_local i32 @acpi_node_get_property_reference(%struct.fwnode_handle*, i8*, i32, %struct.fwnode_reference_args*) #1

declare dso_local i32 @is_acpi_device_node(%struct.fwnode_handle*) #1

declare dso_local %struct.fwnode_handle* @acpi_graph_get_child_prop_value(%struct.fwnode_handle*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
