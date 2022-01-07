; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_pm.c_sa11x0_pm_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_pm.c_sa11x0_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLEEP_SAVE_COUNT = common dso_local global i32 0, align 4
@GPLR = common dso_local global i64 0, align 8
@GPDR = common dso_local global i32 0, align 4
@GAFR = common dso_local global i32 0, align 4
@PPDR = common dso_local global i32 0, align 4
@PPSR = common dso_local global i32 0, align 4
@PPAR = common dso_local global i32 0, align 4
@PSDR = common dso_local global i32 0, align 4
@Ser1SDCR0 = common dso_local global i32 0, align 4
@RCSR_HWR = common dso_local global i32 0, align 4
@RCSR_SWR = common dso_local global i32 0, align 4
@RCSR_WDR = common dso_local global i32 0, align 4
@RCSR_SMR = common dso_local global i32 0, align 4
@RCSR = common dso_local global i32 0, align 4
@cpu_resume = common dso_local global i32 0, align 4
@PSPR = common dso_local global i64 0, align 8
@sa1100_finish_suspend = common dso_local global i32 0, align 4
@ICLR = common dso_local global i64 0, align 8
@ICCR = common dso_local global i32 0, align 4
@ICMR = common dso_local global i64 0, align 8
@GPSR = common dso_local global i64 0, align 8
@GPCR = common dso_local global i64 0, align 8
@PSSR_PH = common dso_local global i32 0, align 4
@PSSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sa11x0_pm_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa11x0_pm_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @SLEEP_SAVE_COUNT, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i64, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i64, i64* @GPLR, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @GPDR, align 4
  %12 = call i32 @SAVE(i32 %11)
  %13 = load i32, i32* @GAFR, align 4
  %14 = call i32 @SAVE(i32 %13)
  %15 = load i32, i32* @PPDR, align 4
  %16 = call i32 @SAVE(i32 %15)
  %17 = load i32, i32* @PPSR, align 4
  %18 = call i32 @SAVE(i32 %17)
  %19 = load i32, i32* @PPAR, align 4
  %20 = call i32 @SAVE(i32 %19)
  %21 = load i32, i32* @PSDR, align 4
  %22 = call i32 @SAVE(i32 %21)
  %23 = load i32, i32* @Ser1SDCR0, align 4
  %24 = call i32 @SAVE(i32 %23)
  %25 = load i32, i32* @RCSR_HWR, align 4
  %26 = load i32, i32* @RCSR_SWR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RCSR_WDR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RCSR_SMR, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* @RCSR, align 4
  %32 = load i32, i32* @cpu_resume, align 4
  %33 = call i64 @__pa_symbol(i32 %32)
  store i64 %33, i64* @PSPR, align 8
  %34 = load i32, i32* @sa1100_finish_suspend, align 4
  %35 = call i32 @cpu_suspend(i32 0, i32 %34)
  %36 = load i32, i32* @RCSR_SMR, align 4
  store i32 %36, i32* @RCSR, align 4
  store i64 0, i64* @PSPR, align 8
  store i64 0, i64* @ICLR, align 8
  store i32 1, i32* @ICCR, align 4
  store i64 0, i64* @ICMR, align 8
  %37 = load i32, i32* @GPDR, align 4
  %38 = call i32 @RESTORE(i32 %37)
  %39 = load i32, i32* @GAFR, align 4
  %40 = call i32 @RESTORE(i32 %39)
  %41 = load i32, i32* @PPDR, align 4
  %42 = call i32 @RESTORE(i32 %41)
  %43 = load i32, i32* @PPSR, align 4
  %44 = call i32 @RESTORE(i32 %43)
  %45 = load i32, i32* @PPAR, align 4
  %46 = call i32 @RESTORE(i32 %45)
  %47 = load i32, i32* @PSDR, align 4
  %48 = call i32 @RESTORE(i32 %47)
  %49 = load i32, i32* @Ser1SDCR0, align 4
  %50 = call i32 @RESTORE(i32 %49)
  %51 = load i64, i64* %3, align 8
  store i64 %51, i64* @GPSR, align 8
  %52 = load i64, i64* %3, align 8
  %53 = xor i64 %52, -1
  store i64 %53, i64* @GPCR, align 8
  %54 = load i32, i32* @PSSR_PH, align 4
  store i32 %54, i32* @PSSR, align 4
  %55 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SAVE(i32) #2

declare dso_local i64 @__pa_symbol(i32) #2

declare dso_local i32 @cpu_suspend(i32, i32) #2

declare dso_local i32 @RESTORE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
