; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh5.c_sh64_icache_inv_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh5.c_sh64_icache_inv_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ICCR0 = common dso_local global i64 0, align 8
@ICCR0_ICI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sh64_icache_inv_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh64_icache_inv_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @ICCR0, align 8
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* @ICCR0_ICI, align 8
  store i64 %6, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %1, align 8
  %12 = call i64 asm sideeffect "getcfg\09$3, 0, $0\0A\09or\09$0, $2, $0\0A\09putcfg\09$3, 0, $0\0A\09synci", "=&r,0,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %9, i64 %10, i64 %11) #2, !srcloc !2
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @local_irq_restore(i64 %13)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 502, i32 521, i32 543, i32 568}
