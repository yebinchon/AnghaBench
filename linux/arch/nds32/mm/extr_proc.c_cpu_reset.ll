; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDS32_SR_CACHE_CTL = common dso_local global i32 0, align 4
@CACHE_CTL_mskIC_EN = common dso_local global i32 0, align 4
@CACHE_CTL_mskDC_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_reset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = call i32 (...) @GIE_DISABLE()
  %5 = load i32, i32* @NDS32_SR_CACHE_CTL, align 4
  %6 = call i32 @__nds32__mfsr(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @CACHE_CTL_mskIC_EN, align 4
  %8 = load i32, i32* @CACHE_CTL_mskDC_EN, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @NDS32_SR_CACHE_CTL, align 4
  %15 = call i32 @__nds32__mtsr_isb(i32 %13, i32 %14)
  %16 = call i32 (...) @cpu_dcache_wbinval_all()
  %17 = call i32 (...) @cpu_icache_inval_all()
  %18 = load i64, i64* %2, align 8
  call void asm sideeffect "jr.toff $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i64 %18) #2, !srcloc !2
  ret void
}

declare dso_local i32 @GIE_DISABLE(...) #1

declare dso_local i32 @__nds32__mfsr(i32) #1

declare dso_local i32 @__nds32__mtsr_isb(i32, i32) #1

declare dso_local i32 @cpu_dcache_wbinval_all(...) #1

declare dso_local i32 @cpu_icache_inval_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 666, i32 679}
