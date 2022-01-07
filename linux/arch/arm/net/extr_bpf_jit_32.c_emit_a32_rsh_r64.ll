; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_rsh_r64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_rsh_r64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@TMP_REG_2 = common dso_local global i64 0, align 8
@src_lo = common dso_local global i32 0, align 4
@ARM_IP = common dso_local global i32 0, align 4
@ARM_LR = common dso_local global i32 0, align 4
@SRTYPE_LSR = common dso_local global i32 0, align 4
@SRTYPE_ASL = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.jit_ctx*)* @emit_a32_rsh_r64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a32_rsh_r64(i32* %0, i32* %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
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
  %19 = load i32, i32* @src_lo, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %24 = call i32 @arm_bpf_get_reg32(i32 %19, i32 %22, %struct.jit_ctx* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %28 = call i32* @arm_bpf_get_reg64(i32* %25, i32* %26, %struct.jit_ctx* %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* @ARM_IP, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ARM_RSB_I(i32 %29, i32 %30, i32 32)
  %32 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %33 = call i32 @emit(i32 %31, %struct.jit_ctx* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @ARM_SUBS_I(i32 %36, i32 %37, i32 32)
  %39 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %40 = call i32 @emit(i32 %38, %struct.jit_ctx* %39)
  %41 = load i32, i32* @ARM_LR, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SRTYPE_LSR, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ARM_MOV_SR(i32 %41, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %49 = call i32 @emit(i32 %47, %struct.jit_ctx* %48)
  %50 = load i32, i32* @ARM_LR, align 4
  %51 = load i32, i32* @ARM_LR, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SRTYPE_ASL, align 4
  %56 = load i32, i32* @ARM_IP, align 4
  %57 = call i32 @ARM_ORR_SR(i32 %50, i32 %51, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %59 = call i32 @emit(i32 %57, %struct.jit_ctx* %58)
  %60 = load i32, i32* @ARM_LR, align 4
  %61 = load i32, i32* @ARM_LR, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SRTYPE_LSR, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ARM_ORR_SR(i32 %60, i32 %61, i32 %64, i32 %65, i32 %68)
  %70 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %71 = call i32 @emit(i32 %69, %struct.jit_ctx* %70)
  %72 = load i32, i32* @ARM_IP, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SRTYPE_LSR, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ARM_MOV_SR(i32 %72, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %80 = call i32 @emit(i32 %78, %struct.jit_ctx* %79)
  %81 = load i32, i32* @dst_lo, align 4
  %82 = load i32, i32* @ARM_LR, align 4
  %83 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %84 = call i32 @arm_bpf_put_reg32(i32 %81, i32 %82, %struct.jit_ctx* %83)
  %85 = load i32, i32* @dst_hi, align 4
  %86 = load i32, i32* @ARM_IP, align 4
  %87 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %88 = call i32 @arm_bpf_put_reg32(i32 %85, i32 %86, %struct.jit_ctx* %87)
  ret void
}

declare dso_local i32 @arm_bpf_get_reg32(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32* @arm_bpf_get_reg64(i32*, i32*, %struct.jit_ctx*) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_RSB_I(i32, i32, i32) #1

declare dso_local i32 @ARM_SUBS_I(i32, i32, i32) #1

declare dso_local i32 @ARM_MOV_SR(i32, i32, i32, i32) #1

declare dso_local i32 @ARM_ORR_SR(i32, i32, i32, i32, i32) #1

declare dso_local i32 @arm_bpf_put_reg32(i32, i32, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
