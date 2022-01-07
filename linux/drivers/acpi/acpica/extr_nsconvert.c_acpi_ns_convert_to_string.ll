; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsconvert.c_acpi_ns_convert_to_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsconvert.c_acpi_ns_convert_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_convert_to_string(%union.acpi_operand_object* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %10 = bitcast %union.acpi_operand_object* %9 to %struct.TYPE_8__*
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %77 [
    i32 128, label %13
    i32 129, label %37
  ]

13:                                               ; preds = %2
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %15 = bitcast %union.acpi_operand_object* %14 to %struct.TYPE_5__*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 0)
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %6, align 8
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %22 = icmp ne %union.acpi_operand_object* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %19
  br label %36

26:                                               ; preds = %13
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %28 = load i32, i32* @ACPI_IMPLICIT_CONVERT_HEX, align 4
  %29 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %27, %union.acpi_operand_object** %6, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %83

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  br label %79

37:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i64, i64* %7, align 8
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %45, %38
  %55 = phi i1 [ false, %38 ], [ %53, %45 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %38

59:                                               ; preds = %54
  %60 = load i64, i64* %7, align 8
  %61 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %60)
  store %union.acpi_operand_object* %61, %union.acpi_operand_object** %6, align 8
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %63 = icmp ne %union.acpi_operand_object* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %65, i32* %3, align 4
  br label %83

66:                                               ; preds = %59
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %68 = bitcast %union.acpi_operand_object* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %72 = bitcast %union.acpi_operand_object* %71 to %struct.TYPE_7__*
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @memcpy(i32 %70, i32* %74, i64 %75)
  br label %79

77:                                               ; preds = %2
  %78 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %66, %36
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %81 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* %80, %union.acpi_operand_object** %81, align 8
  %82 = load i32, i32* @AE_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %77, %64, %33, %23
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #1

declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
