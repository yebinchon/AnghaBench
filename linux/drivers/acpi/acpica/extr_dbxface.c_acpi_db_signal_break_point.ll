; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbxface.c_acpi_db_signal_break_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbxface.c_acpi_db_signal_break_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32 }

@acpi_gbl_db_thread_id = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_cm_single_step = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"**break** Executed AML BreakPoint opcode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_signal_break_point(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %2, align 8
  %3 = load i64, i64* @acpi_gbl_db_thread_id, align 8
  %4 = call i64 (...) @acpi_os_get_thread_id()
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* @acpi_gbl_cm_single_step, align 4
  %9 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @acpi_os_get_thread_id(...) #1

declare dso_local i32 @acpi_os_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
