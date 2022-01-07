; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mm-imx3.c_imx3_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mm-imx3.c_imx3_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @imx3_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx3_idle() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = call i64 asm sideeffect "mrc p15, 0, $0, c1, c0, 0\0Abic $0, $0, #0x00001000\0Abic $0, $0, #0x00000004\0Amcr p15, 0, $0, c1, c0, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c5, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c14, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c0, 4\0Anop\0Anop\0Anop\0Anop\0Anop\0Anop\0Anop\0Amrc p15, 0, $0, c1, c0, 0\0Aorr $0, $0, #0x00001000\0Aorr $0, $0, #0x00000004\0Amcr p15, 0, $0, c1, c0, 0\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i64 %2, i64* %1, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 236, i32 269, i32 299, i32 329, i32 362, i32 379, i32 412, i32 429, i32 463, i32 480, i32 512, i32 520, i32 528, i32 536, i32 546, i32 554, i32 562, i32 573, i32 605, i32 635, i32 665}
