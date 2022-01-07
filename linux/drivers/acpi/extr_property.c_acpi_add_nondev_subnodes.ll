; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_add_nondev_subnodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_add_nondev_subnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.list_head = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*)* @acpi_add_nondev_subnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_add_nondev_subnodes(i32 %0, %union.acpi_object* %1, %struct.list_head* %2, %struct.fwnode_handle* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca %union.acpi_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %union.acpi_object* %1, %union.acpi_object** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %95, %4
  %16 = load i32, i32* %10, align 4
  %17 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %18 = bitcast %union.acpi_object* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %98

22:                                               ; preds = %15
  %23 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %24 = bitcast %union.acpi_object* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %union.acpi_object*, %union.acpi_object** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %26, i64 %28
  store %union.acpi_object* %29, %union.acpi_object** %11, align 8
  %30 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %95

36:                                               ; preds = %22
  %37 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %union.acpi_object*, %union.acpi_object** %39, align 8
  %41 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %40, i64 0
  %42 = bitcast %union.acpi_object* %41 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 128
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %95

46:                                               ; preds = %36
  %47 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %48 = bitcast %union.acpi_object* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %union.acpi_object*, %union.acpi_object** %49, align 8
  %51 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %50, i64 1
  %52 = bitcast %union.acpi_object* %51 to i32*
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %85 [
    i32 128, label %54
    i32 130, label %60
    i32 129, label %74
  ]

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %57 = load %struct.list_head*, %struct.list_head** %7, align 8
  %58 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %59 = call i32 @acpi_nondev_subnode_ok(i32 %55, %union.acpi_object* %56, %struct.list_head* %57, %struct.fwnode_handle* %58)
  store i32 %59, i32* %14, align 4
  br label %86

60:                                               ; preds = %46
  %61 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %union.acpi_object*, %union.acpi_object** %63, align 8
  %65 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %64, i64 1
  %66 = bitcast %union.acpi_object* %65 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %71 = load %struct.list_head*, %struct.list_head** %7, align 8
  %72 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %73 = call i32 @acpi_nondev_subnode_data_ok(i32 %69, %union.acpi_object* %70, %struct.list_head* %71, %struct.fwnode_handle* %72)
  store i32 %73, i32* %14, align 4
  br label %86

74:                                               ; preds = %46
  %75 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %76 = bitcast %union.acpi_object* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %union.acpi_object*, %union.acpi_object** %77, align 8
  %79 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %78, i64 1
  store %union.acpi_object* %79, %union.acpi_object** %12, align 8
  %80 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %81 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %82 = load %struct.list_head*, %struct.list_head** %7, align 8
  %83 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %84 = call i32 @acpi_nondev_subnode_extract(%union.acpi_object* %80, i32* null, %union.acpi_object* %81, %struct.list_head* %82, %struct.fwnode_handle* %83)
  store i32 %84, i32* %14, align 4
  br label %86

85:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %85, %74, %60, %54
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ true, %86 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %45, %35
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %15

98:                                               ; preds = %15
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @acpi_nondev_subnode_ok(i32, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*) #1

declare dso_local i32 @acpi_nondev_subnode_data_ok(i32, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*) #1

declare dso_local i32 @acpi_nondev_subnode_extract(%union.acpi_object*, i32*, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
