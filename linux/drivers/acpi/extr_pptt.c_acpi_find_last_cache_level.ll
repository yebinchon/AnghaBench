; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_find_last_cache_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_find_last_cache_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Cache Setup find last level CPU=%d\0A\00", align 1
@ACPI_SIG_PPTT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cache Setup find last level level=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_find_last_cache_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_table_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @get_acpi_id_for_cpu(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @ACPI_SIG_PPTT, align 4
  %12 = call i32 @acpi_get_table(i32 %11, i32 0, %struct.acpi_table_header** %4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @acpi_pptt_warn_missing()
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @acpi_find_cache_levels(%struct.acpi_table_header* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %23 = call i32 @acpi_put_table(%struct.acpi_table_header* %22)
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @get_acpi_id_for_cpu(i32) #1

declare dso_local i32 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_pptt_warn_missing(...) #1

declare dso_local i32 @acpi_find_cache_levels(%struct.acpi_table_header*, i32) #1

declare dso_local i32 @acpi_put_table(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
