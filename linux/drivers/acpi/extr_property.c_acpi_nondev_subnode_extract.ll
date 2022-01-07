; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_nondev_subnode_extract.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_nondev_subnode_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.list_head = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.acpi_data_node = type { i32, %struct.TYPE_10__, i32*, %struct.TYPE_11__, %struct.fwnode_handle*, i32 }
%struct.TYPE_10__ = type { %union.acpi_object*, i32, i32 }
%struct.TYPE_11__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@acpi_data_fwnode_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Invalid properties/subnodes data, skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_object*, i32*, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*)* @acpi_nondev_subnode_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nondev_subnode_extract(%union.acpi_object* %0, i32* %1, %union.acpi_object* %2, %struct.list_head* %3, %struct.fwnode_handle* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.fwnode_handle*, align 8
  %12 = alloca %struct.acpi_data_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %union.acpi_object* %0, %union.acpi_object** %7, align 8
  store i32* %1, i32** %8, align 8
  store %union.acpi_object* %2, %union.acpi_object** %9, align 8
  store %struct.list_head* %3, %struct.list_head** %10, align 8
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.acpi_data_node* @kzalloc(i32 56, i32 %16)
  store %struct.acpi_data_node* %17, %struct.acpi_data_node** %12, align 8
  %18 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %19 = icmp ne %struct.acpi_data_node* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %99

21:                                               ; preds = %5
  %22 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %23 = bitcast %union.acpi_object* %22 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %31 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %33 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32* @acpi_data_fwnode_ops, i32** %34, align 8
  %35 = load %struct.fwnode_handle*, %struct.fwnode_handle** %11, align 8
  %36 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %37 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %36, i32 0, i32 4
  store %struct.fwnode_handle* %35, %struct.fwnode_handle** %37, align 8
  %38 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %39 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %43 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %47 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %48 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %47, i32 0, i32 1
  %49 = call i32 @acpi_extract_properties(%union.acpi_object* %46, %struct.TYPE_10__* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %21
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @acpi_get_parent(i32* %53, i32** %14)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i64 @ACPI_SUCCESS(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32*, i32** %14, align 8
  %60 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %61 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %62 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %61, i32 0, i32 1
  %63 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %64 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %63, i32 0, i32 3
  %65 = call i64 @acpi_enumerate_nondev_subnodes(i32* %59, %union.acpi_object* %60, %struct.TYPE_10__* %62, %struct.TYPE_11__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  br label %68

68:                                               ; preds = %67, %58, %52
  br label %79

69:                                               ; preds = %21
  %70 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %71 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %72 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %71, i32 0, i32 1
  %73 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %74 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %73, i32 0, i32 3
  %75 = call i64 @acpi_enumerate_nondev_subnodes(i32* null, %union.acpi_object* %70, %struct.TYPE_10__* %72, %struct.TYPE_11__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 1, i32* %13, align 4
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %85 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %87 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %88 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store %union.acpi_object* %86, %union.acpi_object** %89, align 8
  %90 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %91 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %90, i32 0, i32 0
  %92 = load %struct.list_head*, %struct.list_head** %10, align 8
  %93 = call i32 @list_add_tail(i32* %91, %struct.list_head* %92)
  store i32 1, i32* %6, align 4
  br label %99

94:                                               ; preds = %79
  %95 = load %struct.acpi_data_node*, %struct.acpi_data_node** %12, align 8
  %96 = call i32 @kfree(%struct.acpi_data_node* %95)
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @acpi_handle_debug(i32* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %82, %20
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.acpi_data_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @acpi_extract_properties(%union.acpi_object*, %struct.TYPE_10__*) #1

declare dso_local i32 @acpi_get_parent(i32*, i32**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i64 @acpi_enumerate_nondev_subnodes(i32*, %union.acpi_object*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.acpi_data_node*) #1

declare dso_local i32 @acpi_handle_debug(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
