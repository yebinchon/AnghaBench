; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg3.c_acpi_ex_opcode_3A_0T_0R.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg3.c_acpi_ex_opcode_3A_0T_0R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_signal_fatal_info = type { i8*, i8*, i8* }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_3A_0T_0R = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"FatalOp: Type %X Code %X Arg %X <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\0A\00", align 1
@ACPI_SIGNAL_FATAL = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Executed External Op\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_3A_0T_0R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %struct.acpi_signal_fatal_info*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 1
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %10 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 0
  store %union.acpi_operand_object** %10, %union.acpi_operand_object*** %4, align 8
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @ex_opcode_3A_0T_0R, align 4
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @acpi_ps_get_opcode_name(i32 %15)
  %17 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %12, i32 %16)
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %93 [
    i32 128, label %21
    i32 129, label %89
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @ACPI_DB_INFO, align 4
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %24 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %23, i64 0
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %24, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %32 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %31, i64 1
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %32, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %40 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %39, i64 2
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %40, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = ptrtoint i8* %46 to i32
  %48 = call i32 @ACPI_DEBUG_PRINT(i32 %47)
  %49 = call %struct.acpi_signal_fatal_info* @ACPI_ALLOCATE(i32 24)
  store %struct.acpi_signal_fatal_info* %49, %struct.acpi_signal_fatal_info** %5, align 8
  %50 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %5, align 8
  %51 = icmp ne %struct.acpi_signal_fatal_info* %50, null
  br i1 %51, label %52, label %83

52:                                               ; preds = %21
  %53 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %54 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %53, i64 0
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %5, align 8
  %62 = getelementptr inbounds %struct.acpi_signal_fatal_info, %struct.acpi_signal_fatal_info* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %64 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %63, i64 1
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %64, align 8
  %66 = bitcast %union.acpi_operand_object* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %5, align 8
  %72 = getelementptr inbounds %struct.acpi_signal_fatal_info, %struct.acpi_signal_fatal_info* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %74 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %73, i64 2
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %74, align 8
  %76 = bitcast %union.acpi_operand_object* %75 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %5, align 8
  %82 = getelementptr inbounds %struct.acpi_signal_fatal_info, %struct.acpi_signal_fatal_info* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %52, %21
  %84 = load i32, i32* @ACPI_SIGNAL_FATAL, align 4
  %85 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %5, align 8
  %86 = call i32 @acpi_os_signal(i32 %84, %struct.acpi_signal_fatal_info* %85)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %5, align 8
  %88 = call i32 @ACPI_FREE(%struct.acpi_signal_fatal_info* %87)
  br label %100

89:                                               ; preds = %1
  %90 = load i32, i32* @AE_INFO, align 4
  %91 = call i32 @ACPI_ERROR(i32 ptrtoint ([21 x i8]* @.str.1 to i32))
  %92 = load i32, i32* @AE_OK, align 4
  store i32 %92, i32* %6, align 4
  br label %100

93:                                               ; preds = %1
  %94 = load i32, i32* @AE_INFO, align 4
  %95 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %96 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ACPI_ERROR(i32 %97)
  %99 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %93, %89, %83
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @return_ACPI_STATUS(i32 %101)
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %struct.acpi_signal_fatal_info* @ACPI_ALLOCATE(i32) #1

declare dso_local i32 @acpi_os_signal(i32, %struct.acpi_signal_fatal_info*) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_signal_fatal_info*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
