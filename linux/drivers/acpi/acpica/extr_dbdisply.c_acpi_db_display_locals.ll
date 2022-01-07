; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_locals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_locals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32 }

@acpi_gbl_current_walk_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"There is no method currently executing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_display_locals() #0 {
  %1 = alloca %struct.acpi_walk_state*, align 8
  %2 = load i32, i32* @acpi_gbl_current_walk_list, align 4
  %3 = call %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(i32 %2)
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %1, align 8
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %1, align 8
  %5 = icmp ne %struct.acpi_walk_state* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %11

8:                                                ; preds = %0
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %1, align 8
  %10 = call i32 @acpi_db_decode_locals(%struct.acpi_walk_state* %9)
  br label %11

11:                                               ; preds = %8, %6
  ret void
}

declare dso_local %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(i32) #1

declare dso_local i32 @acpi_os_printf(i8*) #1

declare dso_local i32 @acpi_db_decode_locals(%struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
