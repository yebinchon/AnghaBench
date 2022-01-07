; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_graph_get_next_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_graph_get_next_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type opaque

@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @acpi_graph_get_next_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwnode_handle* @acpi_graph_get_next_endpoint(%struct.fwnode_handle* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %6, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %9 = icmp ne %struct.fwnode_handle* %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %20, %10
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %14 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %12, %struct.fwnode_handle* %13)
  store %struct.fwnode_handle* %14, %struct.fwnode_handle** %6, align 8
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %16 = call i64 @is_acpi_graph_node(%struct.fwnode_handle* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %23

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %22 = icmp ne %struct.fwnode_handle* %21, null
  br i1 %22, label %11, label %23

23:                                               ; preds = %20, %18
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %26 = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %25)
  store %struct.fwnode_handle* %26, %struct.fwnode_handle** %6, align 8
  br label %27

27:                                               ; preds = %24, %23
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %29 = icmp ne %struct.fwnode_handle* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %3, align 8
  br label %61

31:                                               ; preds = %27
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %33 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %34 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %32, %struct.fwnode_handle* %33)
  store %struct.fwnode_handle* %34, %struct.fwnode_handle** %7, align 8
  br label %35

35:                                               ; preds = %53, %31
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %37 = icmp ne %struct.fwnode_handle* %36, null
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %42 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %40, %struct.fwnode_handle* %41)
  store %struct.fwnode_handle* %42, %struct.fwnode_handle** %6, align 8
  %43 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %44 = icmp ne %struct.fwnode_handle* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %54

46:                                               ; preds = %39
  %47 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %48 = call i64 @is_acpi_graph_node(%struct.fwnode_handle* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %52 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %51, %struct.fwnode_handle* null)
  store %struct.fwnode_handle* %52, %struct.fwnode_handle** %7, align 8
  br label %53

53:                                               ; preds = %50, %46
  br label %35

54:                                               ; preds = %45, %35
  %55 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %56 = call i64 @is_acpi_graph_node(%struct.fwnode_handle* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %3, align 8
  br label %61

59:                                               ; preds = %54
  %60 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  store %struct.fwnode_handle* %60, %struct.fwnode_handle** %3, align 8
  br label %61

61:                                               ; preds = %59, %58, %30
  %62 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  ret %struct.fwnode_handle* %62
}

declare dso_local %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle*, %struct.fwnode_handle*) #1

declare dso_local i64 @is_acpi_graph_node(%struct.fwnode_handle*, i8*) #1

declare dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
