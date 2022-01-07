; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.TYPE_6__ }

@ds_method_data_init = common dso_local global i32 0, align 4
@ACPI_METHOD_NUM_ARGS = common dso_local global i64 0, align 8
@NAMEOF_ARG_NTE = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i8* null, align 8
@ACPI_TYPE_ANY = common dso_local global i8* null, align 8
@ANOBJ_METHOD_ARG = common dso_local global i32 0, align 4
@ACPI_METHOD_NUM_LOCALS = common dso_local global i64 0, align 8
@NAMEOF_LOCAL_NTE = common dso_local global i32 0, align 4
@ANOBJ_METHOD_LOCAL = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ds_method_data_init(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %2, align 8
  %4 = load i32, i32* @ds_method_data_init, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %51, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ACPI_METHOD_NUM_ARGS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %6
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* @NAMEOF_ARG_NTE, align 4
  %18 = call i32 @ACPI_MOVE_32_TO_32(%struct.TYPE_6__* %16, i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = shl i64 %19, 24
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %28, %20
  store i64 %29, i64* %27, align 8
  %30 = load i8*, i8** @ACPI_DESC_TYPE_NAMED, align 8
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %32 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i8* %30, i8** %36, align 8
  %37 = load i8*, i8** @ACPI_TYPE_ANY, align 8
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %39 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %37, i8** %43, align 8
  %44 = load i32, i32* @ANOBJ_METHOD_ARG, align 4
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %46 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %44, i32* %50, align 8
  br label %51

51:                                               ; preds = %10
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %6

54:                                               ; preds = %6
  store i64 0, i64* %3, align 8
  br label %55

55:                                               ; preds = %100, %54
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @ACPI_METHOD_NUM_LOCALS, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %55
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %61 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* @NAMEOF_LOCAL_NTE, align 4
  %67 = call i32 @ACPI_MOVE_32_TO_32(%struct.TYPE_6__* %65, i32 %66)
  %68 = load i64, i64* %3, align 8
  %69 = shl i64 %68, 24
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %71 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = or i64 %77, %69
  store i64 %78, i64* %76, align 8
  %79 = load i8*, i8** @ACPI_DESC_TYPE_NAMED, align 8
  %80 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %81 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i64, i64* %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i8* %79, i8** %85, align 8
  %86 = load i8*, i8** @ACPI_TYPE_ANY, align 8
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %88 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i64, i64* %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i8* %86, i8** %92, align 8
  %93 = load i32, i32* @ANOBJ_METHOD_LOCAL, align 4
  %94 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %95 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %93, i32* %99, align 8
  br label %100

100:                                              ; preds = %59
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %3, align 8
  br label %55

103:                                              ; preds = %55
  %104 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
