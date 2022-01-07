; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_mul_r64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_mul_r64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@TMP_REG_2 = common dso_local global i64 0, align 8
@ARM_IP = common dso_local global i32 0, align 4
@ARM_LR = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.jit_ctx*)* @emit_a32_mul_r64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a32_mul_r64(i32* %0, i32* %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %11 = load i32**, i32*** @bpf2a32, align 8
  %12 = load i64, i64* @TMP_REG_1, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32**, i32*** @bpf2a32, align 8
  %16 = load i64, i64* @TMP_REG_2, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %22 = call i32* @arm_bpf_get_reg64(i32* %19, i32* %20, %struct.jit_ctx* %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %26 = call i32* @arm_bpf_get_reg64(i32* %23, i32* %24, %struct.jit_ctx* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32, i32* @ARM_IP, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ARM_MUL(i32 %27, i32 %30, i32 %33)
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %36 = call i32 @emit(i32 %34, %struct.jit_ctx* %35)
  %37 = load i32, i32* @ARM_LR, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ARM_MUL(i32 %37, i32 %40, i32 %43)
  %45 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %46 = call i32 @emit(i32 %44, %struct.jit_ctx* %45)
  %47 = load i32, i32* @ARM_LR, align 4
  %48 = load i32, i32* @ARM_IP, align 4
  %49 = load i32, i32* @ARM_LR, align 4
  %50 = call i32 @ARM_ADD_R(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %52 = call i32 @emit(i32 %50, %struct.jit_ctx* %51)
  %53 = load i32, i32* @ARM_IP, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ARM_UMULL(i32 %53, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %65 = call i32 @emit(i32 %63, %struct.jit_ctx* %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ARM_LR, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ARM_ADD_R(i32 %68, i32 %69, i32 %72)
  %74 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %75 = call i32 @emit(i32 %73, %struct.jit_ctx* %74)
  %76 = load i32, i32* @dst_lo, align 4
  %77 = load i32, i32* @ARM_IP, align 4
  %78 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %79 = call i32 @arm_bpf_put_reg32(i32 %76, i32 %77, %struct.jit_ctx* %78)
  %80 = load i32, i32* @dst_hi, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %85 = call i32 @arm_bpf_put_reg32(i32 %80, i32 %83, %struct.jit_ctx* %84)
  ret void
}

declare dso_local i32* @arm_bpf_get_reg64(i32*, i32*, %struct.jit_ctx*) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_MUL(i32, i32, i32) #1

declare dso_local i32 @ARM_ADD_R(i32, i32, i32) #1

declare dso_local i32 @ARM_UMULL(i32, i32, i32, i32) #1

declare dso_local i32 @arm_bpf_put_reg32(i32, i32, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
