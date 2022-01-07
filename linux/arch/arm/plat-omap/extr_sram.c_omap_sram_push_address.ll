; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_sram.c_omap_sram_push_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_sram.c_omap_sram_push_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@omap_sram_ceil = common dso_local global i64 0, align 8
@omap_sram_base = common dso_local global i64 0, align 8
@omap_sram_skip = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Not enough space in SRAM\0A\00", align 1
@FNCPY_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @omap_sram_push_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @omap_sram_push_address(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @omap_sram_ceil, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* @omap_sram_ceil, align 8
  %8 = load i64, i64* @omap_sram_base, align 8
  %9 = load i64, i64* @omap_sram_skip, align 8
  %10 = add i64 %8, %9
  %11 = sub i64 %7, %10
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %28

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @FNCPY_ALIGN, align 4
  %23 = call i64 @ROUND_DOWN(i64 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @IOMEM(i64 %24)
  store i64 %25, i64* @omap_sram_ceil, align 8
  %26 = load i64, i64* @omap_sram_ceil, align 8
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %17, %15
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ROUND_DOWN(i64, i32) #1

declare dso_local i64 @IOMEM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
