; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_jal_rela.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_jal_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i64)* @apply_r_riscv_jal_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_riscv_jal_rela(%struct.module* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = ptrtoint i8* %13 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 1048576
  %22 = shl i32 %21, 11
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 1044480
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 2048
  %27 = shl i32 %26, 9
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 2046
  %30 = shl i32 %29, 20
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 4095
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
