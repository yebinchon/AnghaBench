; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_nondev_subnode_data_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_nondev_subnode_data_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i32 }
%struct.list_head = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.acpi_buffer = type { i32, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*)* @acpi_nondev_subnode_data_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nondev_subnode_data_ok(i32 %0, %union.acpi_object* %1, %struct.list_head* %2, %struct.fwnode_handle* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  %10 = alloca %struct.acpi_buffer, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %union.acpi_object* %1, %union.acpi_object** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %9, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %17 = call i32 @acpi_evaluate_object_typed(i32 %15, i32* null, i32* null, %struct.acpi_buffer* %10, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %27 = load %struct.list_head*, %struct.list_head** %8, align 8
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %29 = call i64 @acpi_nondev_subnode_extract(i32 %24, i32 %25, %union.acpi_object* %26, %struct.list_head* %27, %struct.fwnode_handle* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %36

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ACPI_FREE(i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %31, %21
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @acpi_evaluate_object_typed(i32, i32*, i32*, %struct.acpi_buffer*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @acpi_nondev_subnode_extract(i32, i32, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*) #1

declare dso_local i32 @ACPI_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
