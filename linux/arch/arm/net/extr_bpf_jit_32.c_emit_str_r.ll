; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_str_r.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_str_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@src_lo = common dso_local global i32 0, align 4
@src_hi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, %struct.jit_ctx*, i32)* @emit_str_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_str_r(i32 %0, i32* %1, i32 %2, %struct.jit_ctx* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.jit_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.jit_ctx* %3, %struct.jit_ctx** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32**, i32*** @bpf2a32, align 8
  %15 = load i64, i64* @TMP_REG_1, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %23 = call i32 @arm_bpf_get_reg32(i32 %18, i32 %21, %struct.jit_ctx* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 129
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 255, i32* %12, align 4
  br label %28

27:                                               ; preds = %5
  store i32 4095, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31, %28
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %41 = call i32 @emit_a32_mov_i(i32 %38, i32 %39, %struct.jit_ctx* %40)
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @ARM_ADD_R(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %51 = call i32 @emit(i32 %49, %struct.jit_ctx* %50)
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %35, %31
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %92 [
    i32 131, label %57
    i32 129, label %64
    i32 128, label %71
    i32 130, label %78
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @src_lo, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ARM_STRB_I(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %63 = call i32 @emit(i32 %61, %struct.jit_ctx* %62)
  br label %92

64:                                               ; preds = %55
  %65 = load i32, i32* @src_lo, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ARM_STRH_I(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %70 = call i32 @emit(i32 %68, %struct.jit_ctx* %69)
  br label %92

71:                                               ; preds = %55
  %72 = load i32, i32* @src_lo, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ARM_STR_I(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %77 = call i32 @emit(i32 %75, %struct.jit_ctx* %76)
  br label %92

78:                                               ; preds = %55
  %79 = load i32, i32* @src_lo, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ARM_STR_I(i32 %79, i32 %80, i32 %81)
  %83 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %84 = call i32 @emit(i32 %82, %struct.jit_ctx* %83)
  %85 = load i32, i32* @src_hi, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 4
  %89 = call i32 @ARM_STR_I(i32 %85, i32 %86, i32 %88)
  %90 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %91 = call i32 @emit(i32 %89, %struct.jit_ctx* %90)
  br label %92

92:                                               ; preds = %55, %78, %71, %64, %57
  ret void
}

declare dso_local i32 @arm_bpf_get_reg32(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_a32_mov_i(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_ADD_R(i32, i32, i32) #1

declare dso_local i32 @ARM_STRB_I(i32, i32, i32) #1

declare dso_local i32 @ARM_STRH_I(i32, i32, i32) #1

declare dso_local i32 @ARM_STR_I(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
