; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_remove_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_remove_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %union.acpi_operand_object** }

@ns_remove_element = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*, i64)* @acpi_ns_remove_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ns_remove_element(%union.acpi_operand_object* %0, i64 %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @ns_remove_element, align 4
  %11 = call i32 @ACPI_FUNCTION_NAME(i32 %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %8, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %20, align 8
  store %union.acpi_operand_object** %21, %union.acpi_operand_object*** %5, align 8
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object** %22, %union.acpi_operand_object*** %6, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %47, %2
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %32, align 8
  %34 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %33)
  %35 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %35, align 8
  %37 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %36)
  br label %44

38:                                               ; preds = %27
  %39 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %39, align 8
  %41 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %41, align 8
  %42 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %43 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %42, i32 1
  store %union.acpi_operand_object** %43, %union.acpi_operand_object*** %6, align 8
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %46 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %45, i32 1
  store %union.acpi_operand_object** %46, %union.acpi_operand_object*** %5, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %23

50:                                               ; preds = %23
  %51 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
