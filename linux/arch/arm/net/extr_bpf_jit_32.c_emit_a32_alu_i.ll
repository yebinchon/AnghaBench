; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_alu_i.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_alu_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.jit_ctx*, i32)* @emit_a32_alu_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a32_alu_i(i32 %0, i32 %1, %struct.jit_ctx* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.jit_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32**, i32*** @bpf2a32, align 8
  %12 = load i64, i64* @TMP_REG_1, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.jit_ctx*, %struct.jit_ctx** %7, align 8
  %20 = call i32 @arm_bpf_get_reg32(i32 %15, i32 %18, %struct.jit_ctx* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %43 [
    i32 130, label %22
    i32 128, label %29
    i32 129, label %36
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ARM_LSL_I(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.jit_ctx*, %struct.jit_ctx** %7, align 8
  %28 = call i32 @emit(i32 %26, %struct.jit_ctx* %27)
  br label %43

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ARM_LSR_I(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.jit_ctx*, %struct.jit_ctx** %7, align 8
  %35 = call i32 @emit(i32 %33, %struct.jit_ctx* %34)
  br label %43

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ARM_RSB_I(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.jit_ctx*, %struct.jit_ctx** %7, align 8
  %42 = call i32 @emit(i32 %40, %struct.jit_ctx* %41)
  br label %43

43:                                               ; preds = %4, %36, %29, %22
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.jit_ctx*, %struct.jit_ctx** %7, align 8
  %47 = call i32 @arm_bpf_put_reg32(i32 %44, i32 %45, %struct.jit_ctx* %46)
  ret void
}

declare dso_local i32 @arm_bpf_get_reg32(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_LSL_I(i32, i32, i32) #1

declare dso_local i32 @ARM_LSR_I(i32, i32, i32) #1

declare dso_local i32 @ARM_RSB_I(i32, i32, i32) #1

declare dso_local i32 @arm_bpf_put_reg32(i32, i32, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
