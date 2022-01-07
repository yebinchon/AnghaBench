; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_rv_uj_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_rv_uj_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rv_uj_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv_uj_insn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 524288
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 1023
  %12 = shl i32 %11, 9
  %13 = or i32 %9, %12
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1024
  %16 = ashr i32 %15, 2
  %17 = or i32 %13, %16
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 522240
  %20 = ashr i32 %19, 11
  %21 = or i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 12
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 7
  %26 = or i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
