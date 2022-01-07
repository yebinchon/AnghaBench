; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_xstate.c_fpstate_sanitize_xstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_xstate.c_fpstate_sanitize_xstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.fpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.fxregs_state }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fxregs_state = type { i32, i32*, i32*, i64, i64, i64, i64, i64 }

@xfeatures_mask = common dso_local global i32 0, align 4
@XFEATURE_MASK_FP = common dso_local global i32 0, align 4
@XFEATURE_MASK_SSE = common dso_local global i32 0, align 4
@xstate_comp_offsets = common dso_local global i32* null, align 8
@xstate_sizes = common dso_local global i32* null, align 8
@init_fpstate = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpstate_sanitize_xstate(%struct.fpu* %0) #0 {
  %2 = alloca %struct.fpu*, align 8
  %3 = alloca %struct.fxregs_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fpu* %0, %struct.fpu** %2, align 8
  %8 = load %struct.fpu*, %struct.fpu** %2, align 8
  %9 = getelementptr inbounds %struct.fpu, %struct.fpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store %struct.fxregs_state* %10, %struct.fxregs_state** %3, align 8
  %11 = call i32 (...) @use_xsaveopt()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.fpu*, %struct.fpu** %2, align 8
  %16 = getelementptr inbounds %struct.fpu, %struct.fpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @xfeatures_mask, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @xfeatures_mask, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %100

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @XFEATURE_MASK_FP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %34 = getelementptr inbounds %struct.fxregs_state, %struct.fxregs_state* %33, i32 0, i32 0
  store i32 895, i32* %34, align 8
  %35 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %36 = getelementptr inbounds %struct.fxregs_state, %struct.fxregs_state* %35, i32 0, i32 7
  store i64 0, i64* %36, align 8
  %37 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %38 = getelementptr inbounds %struct.fxregs_state, %struct.fxregs_state* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %40 = getelementptr inbounds %struct.fxregs_state, %struct.fxregs_state* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %42 = getelementptr inbounds %struct.fxregs_state, %struct.fxregs_state* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %44 = getelementptr inbounds %struct.fxregs_state, %struct.fxregs_state* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %46 = getelementptr inbounds %struct.fxregs_state, %struct.fxregs_state* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i32 @memset(i32* %48, i32 0, i32 128)
  br label %50

50:                                               ; preds = %32, %27
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @XFEATURE_MASK_SSE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %57 = getelementptr inbounds %struct.fxregs_state, %struct.fxregs_state* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = call i32 @memset(i32* %59, i32 0, i32 256)
  br label %61

61:                                               ; preds = %55, %50
  store i32 2, i32* %4, align 4
  %62 = load i32, i32* @xfeatures_mask, align 4
  %63 = load i32, i32* %5, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = ashr i32 %65, 2
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %95, %61
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32*, i32** @xstate_comp_offsets, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i32*, i32** @xstate_sizes, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %7, align 4
  %85 = load %struct.fxregs_state*, %struct.fxregs_state** %3, align 8
  %86 = bitcast %struct.fxregs_state* %85 to i8*
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %86, i64 %88
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr i8, i8* bitcast (%struct.TYPE_8__* @init_fpstate to i8*), i64 %91
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @memcpy(i8* %89, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %74, %70
  %96 = load i32, i32* %5, align 4
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %67

100:                                              ; preds = %13, %26, %67
  ret void
}

declare dso_local i32 @use_xsaveopt(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
