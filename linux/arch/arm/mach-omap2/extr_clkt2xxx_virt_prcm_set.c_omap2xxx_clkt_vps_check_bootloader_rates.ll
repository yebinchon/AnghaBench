; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clkt2xxx_virt_prcm_set.c_omap2xxx_clkt_vps_check_bootloader_rates.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clkt2xxx_virt_prcm_set.c_omap2xxx_clkt_vps_check_bootloader_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prcm_config = type { i32, i64, i64, i64 }

@rate_table = common dso_local global %struct.prcm_config* null, align 8
@cpu_mask = common dso_local global i32 0, align 4
@sys_ck_rate = common dso_local global i64 0, align 8
@curr_prcm_set = common dso_local global %struct.prcm_config* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2xxx_clkt_vps_check_bootloader_rates() #0 {
  %1 = alloca %struct.prcm_config*, align 8
  %2 = alloca i64, align 8
  store %struct.prcm_config* null, %struct.prcm_config** %1, align 8
  %3 = call i64 (...) @omap2xxx_clk_get_core_rate()
  store i64 %3, i64* %2, align 8
  %4 = load %struct.prcm_config*, %struct.prcm_config** @rate_table, align 8
  store %struct.prcm_config* %4, %struct.prcm_config** %1, align 8
  br label %5

5:                                                ; preds = %33, %0
  %6 = load %struct.prcm_config*, %struct.prcm_config** %1, align 8
  %7 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %5
  %11 = load %struct.prcm_config*, %struct.prcm_config** %1, align 8
  %12 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @cpu_mask, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %33

18:                                               ; preds = %10
  %19 = load %struct.prcm_config*, %struct.prcm_config** %1, align 8
  %20 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @sys_ck_rate, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %33

25:                                               ; preds = %18
  %26 = load %struct.prcm_config*, %struct.prcm_config** %1, align 8
  %27 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %36

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %24, %17
  %34 = load %struct.prcm_config*, %struct.prcm_config** %1, align 8
  %35 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %34, i32 1
  store %struct.prcm_config* %35, %struct.prcm_config** %1, align 8
  br label %5

36:                                               ; preds = %31, %5
  %37 = load %struct.prcm_config*, %struct.prcm_config** %1, align 8
  store %struct.prcm_config* %37, %struct.prcm_config** @curr_prcm_set, align 8
  ret void
}

declare dso_local i64 @omap2xxx_clk_get_core_rate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
