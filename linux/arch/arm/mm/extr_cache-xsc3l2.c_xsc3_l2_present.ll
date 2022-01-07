; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_present.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xsc3_l2_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsc3_l2_present() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 asm "mrc p15, 1, $0, c0, c0, 1", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 248
  %5 = icmp ne i64 %4, 0
  %6 = xor i1 %5, true
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 231}
