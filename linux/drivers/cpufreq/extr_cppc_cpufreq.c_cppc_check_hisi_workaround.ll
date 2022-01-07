; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_check_hisi_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_check_hisi_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.acpi_table_header = type { i64, i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_SIG_PCCT = common dso_local global i32 0, align 4
@wa_info = common dso_local global %struct.TYPE_3__* null, align 8
@ACPI_OEM_ID_SIZE = common dso_local global i32 0, align 4
@ACPI_OEM_TABLE_ID_SIZE = common dso_local global i32 0, align 4
@apply_hisi_workaround = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cppc_check_hisi_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppc_check_hisi_workaround() #0 {
  %1 = alloca %struct.acpi_table_header*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @AE_OK, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @ACPI_SIG_PCCT, align 4
  %6 = call i32 @acpi_get_table(i32 %5, i32 0, %struct.acpi_table_header** %1)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %1, align 8
  %12 = icmp ne %struct.acpi_table_header* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %0
  br label %62

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %59, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wa_info, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wa_info, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.acpi_table_header*, %struct.acpi_table_header** %1, align 8
  %28 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ACPI_OEM_ID_SIZE, align 4
  %31 = call i32 @memcmp(i32 %26, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %20
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wa_info, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.acpi_table_header*, %struct.acpi_table_header** %1, align 8
  %41 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ACPI_OEM_TABLE_ID_SIZE, align 4
  %44 = call i32 @memcmp(i32 %39, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %33
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wa_info, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.acpi_table_header*, %struct.acpi_table_header** %1, align 8
  %54 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 1, i32* @apply_hisi_workaround, align 4
  br label %58

58:                                               ; preds = %57, %46, %33, %20
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %15

62:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
