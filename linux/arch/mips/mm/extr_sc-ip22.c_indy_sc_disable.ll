; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-ip22.c_indy_sc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-ip22.c_indy_sc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @indy_sc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indy_sc_disable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call { i64, i64, i64 } asm sideeffect ".set\09push\0A\09.set\09noreorder\0A\09.set\09mips3\0A\09li\09$0, 0x1\0A\09dsll\09$0, 31\0A\09lui\09$1, 0x9000\0A\09dsll32\09$1, 0\0A\09or\09$0, $1, $0\0A\09mfc0\09$2, $$12\0A\09nop; nop; nop; nop\0A\09li\09$1, 0x80\0A\09mtc0\09$1, $$12\0A\09nop; nop; nop; nop\0A\09sh\09$$0, 0($0)\0A\09mtc0\09$$0, $$12\0A\09nop; nop; nop; nop\0A\09mtc0\09$2, $$12\0A\09nop; nop; nop; nop\0A\09.set\09pop", "=r,=r,=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  %5 = extractvalue { i64, i64, i64 } %4, 0
  %6 = extractvalue { i64, i64, i64 } %4, 1
  %7 = extractvalue { i64, i64, i64 } %4, 2
  store i64 %5, i64* %1, align 8
  store i64 %6, i64* %2, align 8
  store i64 %7, i64* %3, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 275, i32 288, i32 311, i32 330, i32 349, i32 369, i32 392, i32 413, i32 435, i32 456, i32 482, i32 502, i32 523, i32 549, i32 570, i32 591, i32 617, i32 638, i32 664}
