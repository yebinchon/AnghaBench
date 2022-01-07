; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_check_duplication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_check_duplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_table_desc = type { i32 }

@tb_check_duplication = common dso_local global i32 0, align 4
@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ACPI_TABLE_IS_VERIFIED = common dso_local global i32 0, align 4
@ACPI_TABLE_IS_LOADED = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_desc*, i64*)* @acpi_tb_check_duplication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tb_check_duplication(%struct.acpi_table_desc* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_table_desc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.acpi_table_desc* %0, %struct.acpi_table_desc** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i32, i32* @tb_check_duplication, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ACPI_TABLE_IS_VERIFIED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %47

23:                                               ; preds = %13
  %24 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @acpi_tb_compare_tables(%struct.acpi_table_desc* %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %47

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ACPI_TABLE_IS_LOADED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  br label %46

41:                                               ; preds = %29
  %42 = load i64, i64* %6, align 8
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %28, %22
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %9

50:                                               ; preds = %9
  %51 = load i32, i32* @AE_OK, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_tb_compare_tables(%struct.acpi_table_desc*, i64) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
