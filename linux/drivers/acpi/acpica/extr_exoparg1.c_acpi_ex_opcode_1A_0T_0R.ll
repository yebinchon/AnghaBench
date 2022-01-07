; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg1.c_acpi_ex_opcode_1A_0T_0R.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg1.c_acpi_ex_opcode_1A_0T_0R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_1A_0T_0R = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_1A_0T_0R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 1
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %9 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %8, i64 0
  store %union.acpi_operand_object** %9, %union.acpi_operand_object*** %4, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @ex_opcode_1A_0T_0R, align 4
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @acpi_ps_get_opcode_name(i32 %14)
  %16 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %11, i32 %15)
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %57 [
    i32 133, label %20
    i32 132, label %26
    i32 131, label %31
    i32 130, label %36
    i32 129, label %44
    i32 128, label %52
  ]

20:                                               ; preds = %1
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %22 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %21, i64 0
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %22, align 8
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %25 = call i32 @acpi_ex_release_mutex(%union.acpi_operand_object* %23, %struct.acpi_walk_state* %24)
  store i32 %25, i32* %5, align 4
  br label %64

26:                                               ; preds = %1
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %28 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %27, i64 0
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %28, align 8
  %30 = call i32 @acpi_ex_system_reset_event(%union.acpi_operand_object* %29)
  store i32 %30, i32* %5, align 4
  br label %64

31:                                               ; preds = %1
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %33 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %32, i64 0
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %33, align 8
  %35 = call i32 @acpi_ex_system_signal_event(%union.acpi_operand_object* %34)
  store i32 %35, i32* %5, align 4
  br label %64

36:                                               ; preds = %1
  %37 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %38 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %37, i64 0
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %38, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @acpi_ex_system_do_sleep(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %64

44:                                               ; preds = %1
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %46 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %45, i64 0
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %46, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @acpi_ex_system_do_stall(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %64

52:                                               ; preds = %1
  %53 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %54 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %53, i64 0
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8
  %56 = call i32 @acpi_ex_unload_table(%union.acpi_operand_object* %55)
  store i32 %56, i32* %5, align 4
  br label %64

57:                                               ; preds = %1
  %58 = load i32, i32* @AE_INFO, align 4
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ACPI_ERROR(i32 %61)
  %63 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %52, %44, %36, %31, %26, %20
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @return_ACPI_STATUS(i32 %65)
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local i32 @acpi_ex_release_mutex(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_system_reset_event(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_system_signal_event(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_system_do_sleep(i32) #1

declare dso_local i32 @acpi_ex_system_do_stall(i32) #1

declare dso_local i32 @acpi_ex_unload_table(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
