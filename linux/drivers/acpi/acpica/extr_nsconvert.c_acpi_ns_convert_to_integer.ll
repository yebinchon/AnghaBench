; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsconvert.c_acpi_ns_convert_to_integer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsconvert.c_acpi_ns_convert_to_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_convert_to_integer(%union.acpi_operand_object* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  store i64 0, i64* %8, align 8
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %11 = bitcast %union.acpi_operand_object* %10 to %struct.TYPE_5__*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %61 [
    i32 128, label %14
    i32 129, label %26
  ]

14:                                               ; preds = %2
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @acpi_ut_strtoul64(i32 %18, i64* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %14
  br label %63

26:                                               ; preds = %2
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i64, i64* %9, align 8
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %38 = bitcast %union.acpi_operand_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %36, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %9, align 8
  %53 = mul i64 %52, 8
  %54 = shl i64 %51, %53
  %55 = load i64, i64* %8, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %43
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %35

60:                                               ; preds = %35
  br label %63

61:                                               ; preds = %2
  %62 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %60, %25
  %64 = load i64, i64* %8, align 8
  %65 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %64)
  store %union.acpi_operand_object* %65, %union.acpi_operand_object** %6, align 8
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %67 = icmp ne %union.acpi_operand_object* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %69, i32* %3, align 4
  br label %74

70:                                               ; preds = %63
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %72 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* %71, %union.acpi_operand_object** %72, align 8
  %73 = load i32, i32* @AE_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %68, %61, %32, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @acpi_ut_strtoul64(i32, i64*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
