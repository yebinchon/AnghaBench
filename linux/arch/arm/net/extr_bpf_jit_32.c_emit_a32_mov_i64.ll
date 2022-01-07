; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_mov_i64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_mov_i64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@dst_lo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.jit_ctx*)* @emit_a32_mov_i64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a32_mov_i64(i32* %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %9 = load i32**, i32*** @bpf2a32, align 8
  %10 = load i64, i64* @TMP_REG_1, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* @dst_lo, align 4
  %14 = call i64 @is_stacked(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32* [ %17, %16 ], [ %19, %18 ]
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %27 = call i32 @emit_mov_i(i32 %24, i32 %25, %struct.jit_ctx* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 32
  %33 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %34 = call i32 @emit_mov_i(i32 %30, i32 %32, %struct.jit_ctx* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %38 = call i32 @arm_bpf_put_reg64(i32* %35, i32* %36, %struct.jit_ctx* %37)
  ret void
}

declare dso_local i64 @is_stacked(i32) #1

declare dso_local i32 @emit_mov_i(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @arm_bpf_put_reg64(i32*, i32*, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
