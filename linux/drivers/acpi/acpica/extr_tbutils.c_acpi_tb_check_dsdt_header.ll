; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbutils.c_acpi_tb_check_dsdt_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbutils.c_acpi_tb_check_dsdt_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@acpi_gbl_original_dsdt_header = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@acpi_gbl_DSDT = common dso_local global %struct.TYPE_4__* null, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"The DSDT has been corrupted or replaced - old, new headers below\00", align 1
@.str.1 = private unnamed_addr constant [120 x i8] c"Please send DMI info to linux-acpi@vger.kernel.org\0AIf system does not work as expected, please boot with acpi=copy_dsdt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_tb_check_dsdt_header() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_original_dsdt_header, i32 0, i32 0), align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_DSDT, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %1, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_original_dsdt_header, i32 0, i32 1), align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_DSDT, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %6, %0
  %13 = load i32, i32* @AE_INFO, align 4
  %14 = call i32 @ACPI_BIOS_ERROR(i32 ptrtoint ([65 x i8]* @.str to i32))
  %15 = call i32 @acpi_tb_print_table_header(i32 0, %struct.TYPE_4__* @acpi_gbl_original_dsdt_header)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_DSDT, align 8
  %17 = call i32 @acpi_tb_print_table_header(i32 0, %struct.TYPE_4__* %16)
  %18 = load i32, i32* @AE_INFO, align 4
  %19 = call i32 @ACPI_ERROR(i32 ptrtoint ([120 x i8]* @.str.1 to i32))
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_DSDT, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_original_dsdt_header, i32 0, i32 0), align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_DSDT, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_original_dsdt_header, i32 0, i32 1), align 8
  br label %26

26:                                               ; preds = %12, %6
  ret void
}

declare dso_local i32 @ACPI_BIOS_ERROR(i32) #1

declare dso_local i32 @acpi_tb_print_table_header(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
