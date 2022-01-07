; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/mm/extr_sifive_l2_cache.c_l2_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/mm/extr_sifive_l2_cache.c_l2_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l2_base = common dso_local global i64 0, align 8
@SIFIVE_L2_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"L2CACHE: No. of Banks in the cache: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"L2CACHE: No. of ways per bank: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"L2CACHE: Sets per bank: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"L2CACHE: Bytes per cache block: %llu\0A\00", align 1
@SIFIVE_L2_WAYENABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"L2CACHE: Index of the largest way enabled: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @l2_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_config_read() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @l2_base, align 8
  %4 = load i64, i64* @SIFIVE_L2_CONFIG, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @readl(i64 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = and i32 %11, 65280
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = and i32 %16, 16711680
  %18 = ashr i32 %17, 16
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = shl i32 1, %19
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = and i32 %22, -16777216
  %24 = lshr i32 %23, 24
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = shl i32 1, %25
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* @l2_base, align 8
  %29 = load i64, i64* @SIFIVE_L2_WAYENABLE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
