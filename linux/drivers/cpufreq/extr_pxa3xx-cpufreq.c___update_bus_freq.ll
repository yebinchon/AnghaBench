; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c___update_bus_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c___update_bus_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_freq_info = type { i32, i32, i32, i32 }

@ACCR = common dso_local global i32 0, align 4
@ACCR_SMCFS_MASK = common dso_local global i32 0, align 4
@ACCR_SFLFS_MASK = common dso_local global i32 0, align 4
@ACCR_HSS_MASK = common dso_local global i32 0, align 4
@ACCR_DMCFS_MASK = common dso_local global i32 0, align 4
@ACSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa3xx_freq_info*)* @__update_bus_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_bus_freq(%struct.pxa3xx_freq_info* %0) #0 {
  %2 = alloca %struct.pxa3xx_freq_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pxa3xx_freq_info* %0, %struct.pxa3xx_freq_info** %2, align 8
  %5 = load i32, i32* @ACCR, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @ACCR_SMCFS_MASK, align 4
  %7 = load i32, i32* @ACCR_SFLFS_MASK, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ACCR_HSS_MASK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ACCR_DMCFS_MASK, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %2, align 8
  %18 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ACCR_SMCFS(i32 %19)
  %21 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %2, align 8
  %22 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ACCR_SFLFS(i32 %23)
  %25 = or i32 %20, %24
  %26 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %2, align 8
  %27 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ACCR_HSS(i32 %28)
  %30 = or i32 %25, %29
  %31 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %2, align 8
  %32 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ACCR_DMCFS(i32 %33)
  %35 = or i32 %30, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* @ACCR, align 4
  br label %39

39:                                               ; preds = %47, %1
  %40 = load i32, i32* @ACSR, align 4
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 (...) @cpu_relax()
  br label %39

49:                                               ; preds = %39
  ret void
}

declare dso_local i32 @ACCR_SMCFS(i32) #1

declare dso_local i32 @ACCR_SFLFS(i32) #1

declare dso_local i32 @ACCR_HSS(i32) #1

declare dso_local i32 @ACCR_DMCFS(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
