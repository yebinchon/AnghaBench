; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_mpc85xx_pm_ops.c_mpc85xx_cpu_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_mpc85xx_pm_ops.c_mpc85xx_cpu_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPRN_HID0 = common dso_local global i32 0, align 4
@HID0_DOZE = common dso_local global i32 0, align 4
@HID0_SLEEP = common dso_local global i32 0, align 4
@HID0_NAP = common dso_local global i32 0, align 4
@MSR_WE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mpc85xx_cpu_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc85xx_cpu_die(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @SPRN_HID0, align 4
  %5 = call i32 @mfspr(i32 %4)
  %6 = load i32, i32* @HID0_DOZE, align 4
  %7 = load i32, i32* @HID0_SLEEP, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = load i32, i32* @HID0_NAP, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @SPRN_HID0, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @mtspr(i32 %13, i32 %14)
  %16 = call i32 (...) @mfmsr()
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @MSR_WE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  call void asm sideeffect "msync\0Amtmsr $0\0Aisync\0A", "r,~{dirflag},~{fpsr},~{flags}"(i32 %20) #2, !srcloc !2
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfmsr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 513, i32 526, i32 541}
