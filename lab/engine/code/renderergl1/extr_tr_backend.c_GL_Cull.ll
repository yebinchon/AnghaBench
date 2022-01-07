; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_GL_Cull.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_GL_Cull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@CT_TWO_SIDED = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GL_CULL_FACE = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CT_FRONT_SIDED = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i64 0, align 8
@GL_FRONT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_Cull(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @CT_TWO_SIDED, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 8
  %9 = load i32, i32* @CT_TWO_SIDED, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* @GL_CULL_FACE, align 4
  %13 = call i32 @qglDisable(i32 %12)
  br label %14

14:                                               ; preds = %11, %7
  br label %55

15:                                               ; preds = %1
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 0, i32 0), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 0, i32 1), align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @CT_FRONT_SIDED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @GL_BACK, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @GL_FRONT, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %3, align 8
  br label %39

29:                                               ; preds = %15
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @CT_FRONT_SIDED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @GL_FRONT, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @GL_BACK, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 8
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @GL_CULL_FACE, align 4
  %45 = call i32 @qglEnable(i32 %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 1), align 8
  %48 = load i64, i64* %3, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @qglCullFace(i64 %51)
  %53 = load i64, i64* %3, align 8
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 1), align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %14
  %56 = load i32, i32* %2, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglCullFace(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
