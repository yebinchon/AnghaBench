; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_neg64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_neg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.jit_ctx*)* @emit_a32_neg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a32_neg64(i32* %0, %struct.jit_ctx* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.jit_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.jit_ctx* %1, %struct.jit_ctx** %4, align 8
  %7 = load i32**, i32*** @bpf2a32, align 8
  %8 = load i64, i64* @TMP_REG_1, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 %8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %14 = call i32* @arm_bpf_get_reg64(i32* %11, i32* %12, %struct.jit_ctx* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ARM_RSBS_I(i32 %17, i32 %20, i32 0)
  %22 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %23 = call i32 @emit(i32 %21, %struct.jit_ctx* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ARM_RSC_I(i32 %26, i32 %29, i32 0)
  %31 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %32 = call i32 @emit(i32 %30, %struct.jit_ctx* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %36 = call i32 @arm_bpf_put_reg64(i32* %33, i32* %34, %struct.jit_ctx* %35)
  ret void
}

declare dso_local i32* @arm_bpf_get_reg64(i32*, i32*, %struct.jit_ctx*) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_RSBS_I(i32, i32, i32) #1

declare dso_local i32 @ARM_RSC_I(i32, i32, i32) #1

declare dso_local i32 @arm_bpf_put_reg64(i32*, i32*, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
