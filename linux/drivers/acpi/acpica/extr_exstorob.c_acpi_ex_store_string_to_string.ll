; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exstorob.c_acpi_ex_store_string_to_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exstorob.c_acpi_ex_store_string_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@u8 = common dso_local global i32 0, align 4
@buffer = common dso_local global i32 0, align 4
@ex_store_string_to_string = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AOPOBJ_STATIC_POINTER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_store_string_to_string(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  %7 = load i32, i32* @u8, align 4
  %8 = load i32, i32* @buffer, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* @ex_store_string_to_string, align 4
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %union.acpi_operand_object* %11)
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %15 = icmp eq %union.acpi_operand_object* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @AE_OK, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @u8, align 4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ACPI_CAST_PTR(i32 %20, i32 %24)
  store i32 %25, i32* @buffer, align 4
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %19
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %38 = bitcast %union.acpi_operand_object* %37 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %36
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %50 = bitcast %union.acpi_operand_object* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @memset(i32 %48, i32 0, i64 %53)
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @buffer, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @memcpy(i32 %58, i32 %59, i64 %60)
  br label %112

62:                                               ; preds = %36, %19
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_3__*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %68
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %78 = bitcast %union.acpi_operand_object* %77 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ACPI_FREE(i32 %80)
  br label %82

82:                                               ; preds = %76, %68, %62
  %83 = load i64, i64* %6, align 8
  %84 = add nsw i64 %83, 1
  %85 = call i32 @ACPI_ALLOCATE_ZEROED(i64 %84)
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %87 = bitcast %union.acpi_operand_object* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %82
  %95 = load i32, i32* @AE_NO_MEMORY, align 4
  %96 = call i32 @return_ACPI_STATUS(i32 %95)
  br label %97

97:                                               ; preds = %94, %82
  %98 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %99 = xor i32 %98, -1
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_3__*
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %99
  store i32 %104, i32* %102, align 8
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %106 = bitcast %union.acpi_operand_object* %105 to %struct.TYPE_4__*
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @buffer, align 4
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @memcpy(i32 %108, i32 %109, i64 %110)
  br label %112

112:                                              ; preds = %97, %44
  %113 = load i64, i64* %6, align 8
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %115 = bitcast %union.acpi_operand_object* %114 to %struct.TYPE_4__*
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i64 %113, i64* %116, align 8
  %117 = load i32, i32* @AE_OK, align 4
  %118 = call i32 @return_ACPI_STATUS(i32 %117)
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ACPI_FREE(i32) #1

declare dso_local i32 @ACPI_ALLOCATE_ZEROED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
