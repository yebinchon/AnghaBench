; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_rvc_jump_rela.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_rvc_jump_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i64)* @apply_r_riscv_rvc_jump_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_riscv_rvc_jump_rela(%struct.module* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 2048
  %26 = shl i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 1024
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 768
  %32 = shl i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 128
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 64
  %38 = shl i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 32
  %41 = ashr i32 %40, 3
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 16
  %44 = shl i32 %43, 7
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 14
  %47 = shl i32 %46, 2
  store i32 %47, i32* %15, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 57347
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %14, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %64, %65
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
