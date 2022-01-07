; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exserial.c_acpi_ex_read_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exserial.c_acpi_ex_read_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ex_read_gpio = common dso_local global i32 0, align 4
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"GPIO FieldRead [FROM]:  Pin %u Bits %u\0A\00", align 1
@ACPI_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_read_gpio(%union.acpi_operand_object* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @ex_read_gpio, align 4
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %union.acpi_operand_object* %8)
  %10 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %12 = bitcast %union.acpi_operand_object* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 %18)
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @acpi_ex_acquire_global_lock(i32 %23)
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* @ACPI_READ, align 4
  %29 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %25, i32 0, i32* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @acpi_ex_release_global_lock(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ex_acquire_global_lock(i32) #1

declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i32*, i32) #1

declare dso_local i32 @acpi_ex_release_global_lock(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
