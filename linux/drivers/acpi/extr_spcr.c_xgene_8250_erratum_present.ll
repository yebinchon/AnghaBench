; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_spcr.c_xgene_8250_erratum_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_spcr.c_xgene_8250_erratum_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_spcr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ACPI_DBG2_16550_COMPATIBLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"APMC0D\00", align 1
@ACPI_OEM_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"HPE   \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"XGENESPC\00", align 1
@ACPI_OEM_TABLE_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ProLiant\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_spcr*)* @xgene_8250_erratum_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_8250_erratum_present(%struct.acpi_table_spcr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_table_spcr*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_table_spcr* %0, %struct.acpi_table_spcr** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %3, align 8
  %6 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ACPI_DBG2_16550_COMPATIBLE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

11:                                               ; preds = %1
  %12 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ACPI_OEM_ID_SIZE, align 4
  %17 = call i64 @memcmp(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ACPI_OEM_ID_SIZE, align 4
  %25 = call i64 @memcmp(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %60

28:                                               ; preds = %19, %11
  %29 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACPI_OEM_TABLE_ID_SIZE, align 4
  %34 = call i64 @memcmp(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %36, %28
  %44 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ACPI_OEM_TABLE_ID_SIZE, align 4
  %49 = call i64 @memcmp(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %43
  %52 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %3, align 8
  %53 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %51, %43
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %27, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
