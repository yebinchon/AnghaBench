; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_GL_Cull.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_GL_Cull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

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
  br label %54

15:                                               ; preds = %1
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @CT_FRONT_SIDED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @GL_BACK, align 8
  br label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @GL_FRONT, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %3, align 8
  br label %38

28:                                               ; preds = %15
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @CT_FRONT_SIDED, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @GL_FRONT, align 8
  br label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @GL_BACK, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %26
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 8
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @GL_CULL_FACE, align 4
  %44 = call i32 @qglEnable(i32 %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 1), align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @qglCullFace(i64 %50)
  %52 = load i64, i64* %3, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 1), align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 8
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
