; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_ResetRegisters.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_ResetRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AT91C_PIOA_ODR = common dso_local global i32* null, align 8
@AT91C_PIOA_PER = common dso_local global i32* null, align 8
@AT91C_BASE_AIC = common dso_local global i32 0, align 4
@AT91C_ID_SYS = common dso_local global i32 0, align 4
@AT91C_BASE_PMC = common dso_local global %struct.TYPE_2__* null, align 8
@AT91C_AIC_ICCR = common dso_local global i32* null, align 8
@AT91C_AIC_IVR = common dso_local global i32* null, align 8
@AT91C_AIC_FVR = common dso_local global i32* null, align 8
@AT91C_AIC_EOICR = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @AT91F_ResetRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AT91F_ResetRegisters() #0 {
  %1 = alloca i32, align 4
  store volatile i32 0, i32* %1, align 4
  %2 = load i32*, i32** @AT91C_PIOA_ODR, align 8
  store i32 -1, i32* %2, align 4
  %3 = load i32*, i32** @AT91C_PIOA_PER, align 8
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* @AT91C_BASE_AIC, align 4
  %5 = load i32, i32* @AT91C_ID_SYS, align 4
  %6 = call i32 @AT91F_AIC_DisableIt(i32 %4, i32 %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AT91C_BASE_PMC, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 -4, i32* %8, align 4
  call void asm sideeffect "msr CPSR_c, #0xDF", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %9 = load i32*, i32** @AT91C_AIC_ICCR, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32*, i32** @AT91C_AIC_IVR, align 8
  %11 = load i32, i32* %10, align 4
  store volatile i32 %11, i32* %1, align 4
  %12 = load i32*, i32** @AT91C_AIC_FVR, align 8
  %13 = load i32, i32* %12, align 4
  store volatile i32 %13, i32* %1, align 4
  %14 = load i64*, i64** @AT91C_AIC_EOICR, align 8
  store i64 0, i64* %14, align 8
  ret i32 1
}

declare dso_local i32 @AT91F_AIC_DisableIt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 734}
