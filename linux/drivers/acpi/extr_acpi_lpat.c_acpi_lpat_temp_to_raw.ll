; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpat.c_acpi_lpat_temp_to_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpat.c_acpi_lpat_temp_to_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_lpat_conversion_table = type { i32, %struct.acpi_lpat* }
%struct.acpi_lpat = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_lpat_temp_to_raw(%struct.acpi_lpat_conversion_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_lpat_conversion_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_lpat*, align 8
  store %struct.acpi_lpat_conversion_table* %0, %struct.acpi_lpat_conversion_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %11, i32 0, i32 1
  %13 = load %struct.acpi_lpat*, %struct.acpi_lpat** %12, align 8
  store %struct.acpi_lpat* %13, %struct.acpi_lpat** %10, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %23, i64 %25
  %27 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %22, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %32, i64 %35
  %37 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %31, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30, %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %14

45:                                               ; preds = %40, %14
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %104

55:                                               ; preds = %45
  %56 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %56, i64 %59
  %61 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %63, i64 %65
  %67 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %62, %68
  store i32 %69, i32* %7, align 4
  %70 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %70, i64 %73
  %75 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %77, i64 %79
  %81 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %76, %82
  store i32 %83, i32* %8, align 4
  %84 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %84, i64 %86
  %88 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %91, i64 %93
  %95 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %90, %96
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 %99, %100
  %102 = add nsw i32 %89, %101
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %55, %52
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
