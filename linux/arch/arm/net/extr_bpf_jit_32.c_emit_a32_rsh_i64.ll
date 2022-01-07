; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_rsh_i64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_rsh_i64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@TMP_REG_2 = common dso_local global i64 0, align 8
@SRTYPE_LSR = common dso_local global i32 0, align 4
@SRTYPE_ASL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.jit_ctx*)* @emit_a32_rsh_i64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a32_rsh_i64(i32* %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %10 = load i32**, i32*** @bpf2a32, align 8
  %11 = load i64, i64* @TMP_REG_1, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32**, i32*** @bpf2a32, align 8
  %15 = load i64, i64* @TMP_REG_2, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %21 = call i32* @arm_bpf_get_reg64(i32* %18, i32* %19, %struct.jit_ctx* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %62

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SRTYPE_LSR, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ARM_MOV_SI(i32 %27, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %35 = call i32 @emit(i32 %33, %struct.jit_ctx* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SRTYPE_ASL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 32, %46
  %48 = call i32 @ARM_ORR_SI(i32 %38, i32 %41, i32 %44, i32 %45, i32 %47)
  %49 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %50 = call i32 @emit(i32 %48, %struct.jit_ctx* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SRTYPE_LSR, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ARM_MOV_SI(i32 %53, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %61 = call i32 @emit(i32 %59, %struct.jit_ctx* %60)
  br label %101

62:                                               ; preds = %3
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ARM_MOV_R(i32 %68, i32 %71)
  %73 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %74 = call i32 @emit(i32 %72, %struct.jit_ctx* %73)
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ARM_MOV_I(i32 %77, i32 0)
  %79 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %80 = call i32 @emit(i32 %78, %struct.jit_ctx* %79)
  br label %100

81:                                               ; preds = %62
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SRTYPE_LSR, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 32
  %91 = call i32 @ARM_MOV_SI(i32 %84, i32 %87, i32 %88, i32 %90)
  %92 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %93 = call i32 @emit(i32 %91, %struct.jit_ctx* %92)
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ARM_MOV_I(i32 %96, i32 0)
  %98 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %99 = call i32 @emit(i32 %97, %struct.jit_ctx* %98)
  br label %100

100:                                              ; preds = %81, %65
  br label %101

101:                                              ; preds = %100, %24
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %105 = call i32 @arm_bpf_put_reg64(i32* %102, i32* %103, %struct.jit_ctx* %104)
  ret void
}

declare dso_local i32* @arm_bpf_get_reg64(i32*, i32*, %struct.jit_ctx*) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_MOV_SI(i32, i32, i32, i32) #1

declare dso_local i32 @ARM_ORR_SI(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARM_MOV_R(i32, i32) #1

declare dso_local i32 @ARM_MOV_I(i32, i32) #1

declare dso_local i32 @arm_bpf_put_reg64(i32*, i32*, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
