; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbhistry.c_acpi_db_get_history_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbhistry.c_acpi_db_get_history_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@acpi_gbl_lo_history = common dso_local global i64 0, align 8
@acpi_gbl_num_history = common dso_local global i64 0, align 8
@acpi_gbl_history_buffer = common dso_local global %struct.TYPE_2__* null, align 8
@HISTORY_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid history number: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_db_get_history_by_index(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @acpi_gbl_lo_history, align 8
  store i64 %6, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @acpi_gbl_num_history, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_history_buffer, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_history_buffer, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %2, align 8
  br label %39

25:                                               ; preds = %11
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @HISTORY_SIZE, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %7

36:                                               ; preds = %7
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %37)
  store i8* null, i8** %2, align 8
  br label %39

39:                                               ; preds = %36, %19
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @acpi_os_printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
