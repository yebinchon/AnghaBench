; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c__update_logic_membank_counters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c__update_logic_membank_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i64, i32, i64*, i32*, i32 }

@PWRSTS_OFF_RET = common dso_local global i64 0, align 8
@PWRDM_POWER_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.powerdomain*)* @_update_logic_membank_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_update_logic_membank_counters(%struct.powerdomain* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %2, align 8
  %6 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %7 = call i64 @pwrdm_read_prev_logic_pwrst(%struct.powerdomain* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %9 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PWRSTS_OFF_RET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @PWRDM_POWER_OFF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %19 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %17, %13, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %26 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @pwrdm_read_prev_mem_pwrst(%struct.powerdomain* %30, i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %34 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PWRSTS_OFF_RET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %29
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @PWRDM_POWER_OFF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %48 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46, %42, %29
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %23

59:                                               ; preds = %23
  ret void
}

declare dso_local i64 @pwrdm_read_prev_logic_pwrst(%struct.powerdomain*) #1

declare dso_local i64 @pwrdm_read_prev_mem_pwrst(%struct.powerdomain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
