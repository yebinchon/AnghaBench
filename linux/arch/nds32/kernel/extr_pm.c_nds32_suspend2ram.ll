; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_pm.c_nds32_suspend2ram.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_pm.c_nds32_suspend2ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDS32_SR_L1_PPTB = common dso_local global i32 0, align 4
@L1_PPTB_mskBASE = common dso_local global i32 0, align 4
@cpu_resume = common dso_local global i64 0, align 8
@TLB_DATA_mskPPN = common dso_local global i32 0, align 4
@resume_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nds32_suspend2ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nds32_suspend2ram() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @NDS32_SR_L1_PPTB, align 4
  %6 = call i32 @__nds32__mfsr(i32 %5)
  %7 = load i32, i32* @L1_PPTB_mskBASE, align 4
  %8 = and i32 %6, %7
  %9 = call i64 @__va(i32 %8)
  %10 = inttoptr i64 %9 to i32*
  %11 = load i64, i64* @cpu_resume, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @pgd_index(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = load i64, i64* @cpu_resume, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32* @pud_offset(i32* %16, i32 %18)
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load i64, i64* @cpu_resume, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32* @pmd_offset(i32* %20, i32 %22)
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* @cpu_resume, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32* @pte_offset_map(i32* %24, i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TLB_DATA_mskPPN, align 4
  %31 = and i32 %29, %30
  %32 = load i64, i64* @cpu_resume, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 4095
  %35 = or i32 %31, %34
  store i32 %35, i32* @resume_addr, align 4
  %36 = call i32 (...) @suspend2ram()
  ret void
}

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @__nds32__mfsr(i32) #1

declare dso_local i32 @pgd_index(i32) #1

declare dso_local i32* @pud_offset(i32*, i32) #1

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i32* @pte_offset_map(i32*, i32) #1

declare dso_local i32 @suspend2ram(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
