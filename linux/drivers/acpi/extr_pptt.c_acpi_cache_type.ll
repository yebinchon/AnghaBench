; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_cache_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_cache_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Looking for data cache\0A\00", align 1
@ACPI_PPTT_CACHE_TYPE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Looking for instruction cache\0A\00", align 1
@ACPI_PPTT_CACHE_TYPE_INSTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Looking for unified cache\0A\00", align 1
@ACPI_PPTT_CACHE_TYPE_UNIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_cache_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cache_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 130, label %5
    i32 129, label %8
    i32 128, label %12
  ]

5:                                                ; preds = %1
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @ACPI_PPTT_CACHE_TYPE_DATA, align 4
  store i32 %7, i32* %2, align 4
  br label %15

8:                                                ; preds = %1
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @ACPI_PPTT_CACHE_TYPE_INSTR, align 4
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @ACPI_PPTT_CACHE_TYPE_UNIFIED, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %12, %8, %5
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
