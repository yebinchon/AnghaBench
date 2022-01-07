; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_flag_identical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_flag_identical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }
%struct.acpi_pptt_processor = type { i32, i32 }

@ACPI_PPTT_ACPI_IDENTICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_header*, %struct.acpi_pptt_processor*)* @flag_identical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flag_identical(%struct.acpi_table_header* %0, %struct.acpi_pptt_processor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_table_header*, align 8
  %5 = alloca %struct.acpi_pptt_processor*, align 8
  %6 = alloca %struct.acpi_pptt_processor*, align 8
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %4, align 8
  store %struct.acpi_pptt_processor* %1, %struct.acpi_pptt_processor** %5, align 8
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %5, align 8
  %14 = getelementptr inbounds %struct.acpi_pptt_processor, %struct.acpi_pptt_processor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ACPI_PPTT_ACPI_IDENTICAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %21 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_pptt_processor, %struct.acpi_pptt_processor* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.acpi_pptt_processor* @fetch_pptt_node(%struct.acpi_table_header* %20, i32 %23)
  store %struct.acpi_pptt_processor* %24, %struct.acpi_pptt_processor** %6, align 8
  %25 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %6, align 8
  %26 = icmp ne %struct.acpi_pptt_processor* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %6, align 8
  %29 = getelementptr inbounds %struct.acpi_pptt_processor, %struct.acpi_pptt_processor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ACPI_PPTT_ACPI_IDENTICAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %19
  store i32 1, i32* %3, align 4
  br label %37

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %12
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.acpi_pptt_processor* @fetch_pptt_node(%struct.acpi_table_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
