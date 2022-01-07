; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exsystem.c_acpi_ex_system_wait_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exsystem.c_acpi_ex_system_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_system_wait_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_system_wait_event(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  %7 = load i32, i32* @AE_OK, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @ex_system_wait_event, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %11 = icmp ne %union.acpi_operand_object* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %14 = bitcast %union.acpi_operand_object* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @acpi_ex_system_wait_semaphore(i32 %16, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %12, %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ex_system_wait_semaphore(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
