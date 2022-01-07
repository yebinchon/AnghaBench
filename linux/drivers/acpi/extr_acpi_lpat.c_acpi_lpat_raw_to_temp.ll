; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpat.c_acpi_lpat_raw_to_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpat.c_acpi_lpat_raw_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_lpat_conversion_table = type { i32, %struct.acpi_lpat* }
%struct.acpi_lpat = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_lpat_raw_to_temp(%struct.acpi_lpat_conversion_table* %0, i32 %1) #0 {
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

14:                                               ; preds = %61, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %23, i64 %25
  %27 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %22, %28
  br i1 %29, label %30, label %40

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
  br i1 %39, label %59, label %40

40:                                               ; preds = %30, %21
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %42, i64 %44
  %46 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %41, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %51, i64 %54
  %56 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %50, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49, %30
  br label %64

60:                                               ; preds = %49, %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %14

64:                                               ; preds = %59, %14
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %4, align 8
  %67 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %123

74:                                               ; preds = %64
  %75 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %75, i64 %78
  %80 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %82, i64 %84
  %86 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %81, %87
  store i32 %88, i32* %7, align 4
  %89 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %89, i64 %92
  %94 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %96, i64 %98
  %100 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %95, %101
  store i32 %102, i32* %8, align 4
  %103 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %103, i64 %105
  %107 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.acpi_lpat*, %struct.acpi_lpat** %10, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %110, i64 %112
  %114 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %109, %115
  %117 = load i32, i32* %7, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = sdiv i32 %118, %119
  %121 = add nsw i32 %108, %120
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %74, %71
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
