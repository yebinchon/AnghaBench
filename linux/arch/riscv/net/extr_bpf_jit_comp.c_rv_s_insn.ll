; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_rv_s_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_rv_s_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @rv_s_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv_s_insn(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 5
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 31
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = shl i32 %17, 25
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 20
  %21 = or i32 %18, %20
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 15
  %24 = or i32 %21, %23
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 12
  %27 = or i32 %24, %26
  %28 = load i32, i32* %12, align 4
  %29 = shl i32 %28, 7
  %30 = or i32 %27, %29
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %30, %31
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
