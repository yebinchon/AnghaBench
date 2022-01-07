; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbmethod.c_acpi_db_set_method_call_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbmethod.c_acpi_db_set_method_call_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"There is no method currently executing\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_step_to_next_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_set_method_call_breakpoint(%union.acpi_parse_object* %0) #0 {
  %2 = alloca %union.acpi_parse_object*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %2, align 8
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %4 = icmp ne %union.acpi_parse_object* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* @acpi_gbl_step_to_next_call, align 4
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
