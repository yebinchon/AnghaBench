; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c___update_core_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c___update_core_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_freq_info = type { i32, i32 }

@ACCR_XN_MASK = common dso_local global i32 0, align 4
@ACCR_XL_MASK = common dso_local global i32 0, align 4
@ACCR = common dso_local global i32 0, align 4
@ACCR_XSPCLK_MASK = common dso_local global i32 0, align 4
@XSPCLK_NONE = common dso_local global i32 0, align 4
@ACSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa3xx_freq_info*)* @__update_core_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_core_freq(%struct.pxa3xx_freq_info* %0) #0 {
  %2 = alloca %struct.pxa3xx_freq_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pxa3xx_freq_info* %0, %struct.pxa3xx_freq_info** %2, align 8
  %6 = load i32, i32* @ACCR_XN_MASK, align 4
  %7 = load i32, i32* @ACCR_XL_MASK, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @ACCR, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @ACCR_XN_MASK, align 4
  %11 = load i32, i32* @ACCR_XL_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ACCR_XSPCLK_MASK, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %2, align 8
  %19 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ACCR_XN(i32 %20)
  %22 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %2, align 8
  %23 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ACCR_XL(i32 %24)
  %26 = or i32 %21, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @XSPCLK_NONE, align 4
  %30 = call i32 @ACCR_XSPCLK(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %2, align 8
  %34 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 3, i32 2
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* @ACCR, align 4
  %40 = load i32, i32* %5, align 4
  call void asm sideeffect "mcr p14, 0, $0, c6, c0, 0\0A", "r,~{dirflag},~{fpsr},~{flags}"(i32 %40) #2, !srcloc !2
  br label %41

41:                                               ; preds = %49, %1
  %42 = load i32, i32* @ACSR, align 4
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 (...) @cpu_relax()
  br label %41

51:                                               ; preds = %41
  ret void
}

declare dso_local i32 @ACCR_XN(i32) #1

declare dso_local i32 @ACCR_XL(i32) #1

declare dso_local i32 @ACCR_XSPCLK(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 816}
