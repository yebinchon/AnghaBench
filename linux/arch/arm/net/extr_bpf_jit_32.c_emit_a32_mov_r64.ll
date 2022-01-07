; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_mov_r64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_mov_r64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@dst_lo = common dso_local global i32 0, align 4
@src_lo = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@__LINUX_ARM_ARCH__ = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv5TE = common dso_local global i64 0, align 8
@src_hi = common dso_local global i32 0, align 4
@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@ARM_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, %struct.jit_ctx*)* @emit_a32_mov_r64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a32_mov_r64(i32 %0, i32* %1, i32* %2, %struct.jit_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.jit_ctx*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.jit_ctx* %3, %struct.jit_ctx** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @dst_lo, align 4
  %14 = load i32, i32* @src_lo, align 4
  %15 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %16 = call i32 @emit_a32_mov_r(i32 %13, i32 %14, %struct.jit_ctx* %15)
  %17 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %12
  %26 = load i32, i32* @dst_hi, align 4
  %27 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %28 = call i32 @emit_a32_mov_i(i32 %26, i32 0, %struct.jit_ctx* %27)
  br label %29

29:                                               ; preds = %25, %12
  br label %130

30:                                               ; preds = %4
  %31 = load i32, i32* @__LINUX_ARM_ARCH__, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CPU_ARCH_ARMv5TE, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* @dst_lo, align 4
  %41 = load i32, i32* @src_lo, align 4
  %42 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %43 = call i32 @emit_a32_mov_r(i32 %40, i32 %41, %struct.jit_ctx* %42)
  %44 = load i32, i32* @dst_hi, align 4
  %45 = load i32, i32* @src_hi, align 4
  %46 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %47 = call i32 @emit_a32_mov_r(i32 %44, i32 %45, %struct.jit_ctx* %46)
  br label %129

48:                                               ; preds = %33, %30
  %49 = load i32, i32* @src_lo, align 4
  %50 = call i64 @is_stacked(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load i32, i32* @dst_lo, align 4
  %54 = call i64 @is_stacked(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32**, i32*** @bpf2a32, align 8
  %58 = load i64, i64* @TMP_REG_1, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ARM_FP, align 4
  %65 = load i32, i32* @src_lo, align 4
  %66 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %65)
  %67 = call i32 @ARM_LDRD_I(i32 %63, i32 %64, i32 %66)
  %68 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %69 = call i32 @emit(i32 %67, %struct.jit_ctx* %68)
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ARM_FP, align 4
  %74 = load i32, i32* @dst_lo, align 4
  %75 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %74)
  %76 = call i32 @ARM_STRD_I(i32 %72, i32 %73, i32 %75)
  %77 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %78 = call i32 @emit(i32 %76, %struct.jit_ctx* %77)
  br label %128

79:                                               ; preds = %52, %48
  %80 = load i32, i32* @src_lo, align 4
  %81 = call i64 @is_stacked(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ARM_FP, align 4
  %88 = load i32, i32* @src_lo, align 4
  %89 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %88)
  %90 = call i32 @ARM_LDRD_I(i32 %86, i32 %87, i32 %89)
  %91 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %92 = call i32 @emit(i32 %90, %struct.jit_ctx* %91)
  br label %127

93:                                               ; preds = %79
  %94 = load i32, i32* @dst_lo, align 4
  %95 = call i64 @is_stacked(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ARM_FP, align 4
  %102 = load i32, i32* @dst_lo, align 4
  %103 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %102)
  %104 = call i32 @ARM_STRD_I(i32 %100, i32 %101, i32 %103)
  %105 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %106 = call i32 @emit(i32 %104, %struct.jit_ctx* %105)
  br label %126

107:                                              ; preds = %93
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ARM_MOV_R(i32 %110, i32 %113)
  %115 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %116 = call i32 @emit(i32 %114, %struct.jit_ctx* %115)
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ARM_MOV_R(i32 %119, i32 %122)
  %124 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %125 = call i32 @emit(i32 %123, %struct.jit_ctx* %124)
  br label %126

126:                                              ; preds = %107, %97
  br label %127

127:                                              ; preds = %126, %83
  br label %128

128:                                              ; preds = %127, %56
  br label %129

129:                                              ; preds = %128, %39
  br label %130

130:                                              ; preds = %129, %29
  ret void
}

declare dso_local i32 @emit_a32_mov_r(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_a32_mov_i(i32, i32, %struct.jit_ctx*) #1

declare dso_local i64 @is_stacked(i32) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_LDRD_I(i32, i32, i32) #1

declare dso_local i32 @EBPF_SCRATCH_TO_ARM_FP(i32) #1

declare dso_local i32 @ARM_STRD_I(i32, i32, i32) #1

declare dso_local i32 @ARM_MOV_R(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
