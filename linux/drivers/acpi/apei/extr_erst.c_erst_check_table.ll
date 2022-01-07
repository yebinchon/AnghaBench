; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_check_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_check_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_erst = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_erst*)* @erst_check_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erst_check_table(%struct.acpi_table_erst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_table_erst*, align 8
  store %struct.acpi_table_erst* %0, %struct.acpi_table_erst** %3, align 8
  %4 = load %struct.acpi_table_erst*, %struct.acpi_table_erst** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_table_erst, %struct.acpi_table_erst* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 8
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.acpi_table_erst*, %struct.acpi_table_erst** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_table_erst, %struct.acpi_table_erst* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 12
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %9, %1
  %19 = load %struct.acpi_table_erst*, %struct.acpi_table_erst** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_table_erst, %struct.acpi_table_erst* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 12
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %45

28:                                               ; preds = %18
  %29 = load %struct.acpi_table_erst*, %struct.acpi_table_erst** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_table_erst, %struct.acpi_table_erst* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.acpi_table_erst*, %struct.acpi_table_erst** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_table_erst, %struct.acpi_table_erst* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 12
  %39 = udiv i64 %38, 4
  %40 = icmp ne i64 %32, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %41, %25, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
