; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_check_acpi_cpu_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_check_acpi_cpu_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }
%struct.acpi_pptt_processor = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ACPI_SIG_PPTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @check_acpi_cpu_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_acpi_cpu_flag(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_table_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_pptt_processor*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @get_acpi_id_for_cpu(i32 %13)
  store i32 %14, i32* %10, align 4
  store %struct.acpi_pptt_processor* null, %struct.acpi_pptt_processor** %11, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @ACPI_SIG_PPTT, align 4
  %18 = call i32 @acpi_get_table(i32 %17, i32 0, %struct.acpi_table_header** %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = call i32 (...) @acpi_pptt_warn_missing()
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %3
  %26 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %27 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.acpi_pptt_processor* @acpi_find_processor_node(%struct.acpi_table_header* %32, i32 %33)
  store %struct.acpi_pptt_processor* %34, %struct.acpi_pptt_processor** %11, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %11, align 8
  %37 = icmp ne %struct.acpi_pptt_processor* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %11, align 8
  %40 = getelementptr inbounds %struct.acpi_pptt_processor, %struct.acpi_pptt_processor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %38, %35
  %47 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %48 = call i32 @acpi_put_table(%struct.acpi_table_header* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @get_acpi_id_for_cpu(i32) #1

declare dso_local i32 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_pptt_warn_missing(...) #1

declare dso_local %struct.acpi_pptt_processor* @acpi_find_processor_node(%struct.acpi_table_header*, i32) #1

declare dso_local i32 @acpi_put_table(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
