; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_nondev_subnode_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_nondev_subnode_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32 }
%struct.fwnode_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*)* @acpi_nondev_subnode_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nondev_subnode_ok(i32 %0, %union.acpi_object* %1, %struct.list_head* %2, %struct.fwnode_handle* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %union.acpi_object* %1, %union.acpi_object** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %18 = bitcast %union.acpi_object* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @acpi_get_handle(i32 %16, i32 %24, i32* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %36

30:                                               ; preds = %15
  %31 = load i32, i32* %10, align 4
  %32 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %33 = load %struct.list_head*, %struct.list_head** %8, align 8
  %34 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %35 = call i32 @acpi_nondev_subnode_data_ok(i32 %31, %union.acpi_object* %32, %struct.list_head* %33, %struct.fwnode_handle* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %29, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_nondev_subnode_data_ok(i32, %union.acpi_object*, %struct.list_head*, %struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
