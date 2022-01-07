; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clkt2xxx_virt_prcm_set.c_omap2_round_to_table_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clkt2xxx_virt_prcm_set.c_omap2_round_to_table_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prcm_config = type { i64, i32, i64 }
%struct.clk_hw = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@rate_table = common dso_local global %struct.prcm_config* null, align 8
@cpu_mask = common dso_local global i32 0, align 4
@sys_ck_rate = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap2_round_to_table_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.prcm_config*, align 8
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* @EINVAL, align 8
  %10 = sub nsw i64 0, %9
  store i64 %10, i64* %8, align 8
  %11 = load %struct.prcm_config*, %struct.prcm_config** @rate_table, align 8
  store %struct.prcm_config* %11, %struct.prcm_config** %7, align 8
  br label %12

12:                                               ; preds = %43, %3
  %13 = load %struct.prcm_config*, %struct.prcm_config** %7, align 8
  %14 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = load %struct.prcm_config*, %struct.prcm_config** %7, align 8
  %19 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @cpu_mask, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %43

25:                                               ; preds = %17
  %26 = load %struct.prcm_config*, %struct.prcm_config** %7, align 8
  %27 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @sys_ck_rate, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %43

32:                                               ; preds = %25
  %33 = load %struct.prcm_config*, %struct.prcm_config** %7, align 8
  %34 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.prcm_config*, %struct.prcm_config** %7, align 8
  %37 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %46

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %31, %24
  %44 = load %struct.prcm_config*, %struct.prcm_config** %7, align 8
  %45 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %44, i32 1
  store %struct.prcm_config* %45, %struct.prcm_config** %7, align 8
  br label %12

46:                                               ; preds = %41, %12
  %47 = load i64, i64* %8, align 8
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
