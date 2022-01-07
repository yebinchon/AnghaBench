; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_CullPointAndRadiusEx.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_CullPointAndRadiusEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { float, i32 }

@qfalse = common dso_local global i64 0, align 8
@r_nocull = common dso_local global %struct.TYPE_5__* null, align 8
@CULL_CLIP = common dso_local global i32 0, align 4
@CULL_OUT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@CULL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_CullPointAndRadiusEx(i32 %0, float %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store float %1, float* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* @qfalse, align 8
  store i64 %14, i64* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_nocull, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @CULL_CLIP, align 4
  store i32 %20, i32* %5, align 4
  br label %64

21:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %12, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call float @DotProduct(i32 %31, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = fsub float %35, %38
  store float %39, float* %11, align 4
  %40 = load float, float* %11, align 4
  %41 = load float, float* %7, align 4
  %42 = fneg float %41
  %43 = fcmp olt float %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = load i32, i32* @CULL_OUT, align 4
  store i32 %45, i32* %5, align 4
  br label %64

46:                                               ; preds = %26
  %47 = load float, float* %11, align 4
  %48 = load float, float* %7, align 4
  %49 = fcmp ole float %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @qtrue, align 8
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @CULL_CLIP, align 4
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @CULL_IN, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %60, %44, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
