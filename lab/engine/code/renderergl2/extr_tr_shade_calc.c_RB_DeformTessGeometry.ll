; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_DeformTessGeometry.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_DeformTessGeometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@tess = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_DeformTessGeometry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 0), align 8
  %4 = call i32 @ShaderRequiresCPUDeforms(%struct.TYPE_14__* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %57

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %54, %7
  %9 = load i32, i32* %1, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 %19
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %2, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %53 [
    i32 139, label %24
    i32 138, label %25
    i32 128, label %28
    i32 141, label %31
    i32 140, label %34
    i32 137, label %37
    i32 143, label %39
    i32 142, label %41
    i32 136, label %43
    i32 135, label %43
    i32 134, label %43
    i32 133, label %43
    i32 132, label %43
    i32 131, label %43
    i32 130, label %43
    i32 129, label %43
  ]

24:                                               ; preds = %14
  br label %53

25:                                               ; preds = %14
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = call i32 @RB_CalcDeformNormals(%struct.TYPE_11__* %26)
  br label %53

28:                                               ; preds = %14
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = call i32 @RB_CalcDeformVertexes(%struct.TYPE_11__* %29)
  br label %53

31:                                               ; preds = %14
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = call i32 @RB_CalcBulgeVertexes(%struct.TYPE_11__* %32)
  br label %53

34:                                               ; preds = %14
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = call i32 @RB_CalcMoveVertexes(%struct.TYPE_11__* %35)
  br label %53

37:                                               ; preds = %14
  %38 = call i32 (...) @RB_ProjectionShadowDeform()
  br label %53

39:                                               ; preds = %14
  %40 = call i32 (...) @AutospriteDeform()
  br label %53

41:                                               ; preds = %14
  %42 = call i32 (...) @Autosprite2Deform()
  br label %53

43:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 136
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DeformText(i32 %51)
  br label %53

53:                                               ; preds = %14, %43, %41, %39, %37, %34, %31, %28, %25, %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %8

57:                                               ; preds = %6, %8
  ret void
}

declare dso_local i32 @ShaderRequiresCPUDeforms(%struct.TYPE_14__*) #1

declare dso_local i32 @RB_CalcDeformNormals(%struct.TYPE_11__*) #1

declare dso_local i32 @RB_CalcDeformVertexes(%struct.TYPE_11__*) #1

declare dso_local i32 @RB_CalcBulgeVertexes(%struct.TYPE_11__*) #1

declare dso_local i32 @RB_CalcMoveVertexes(%struct.TYPE_11__*) #1

declare dso_local i32 @RB_ProjectionShadowDeform(...) #1

declare dso_local i32 @AutospriteDeform(...) #1

declare dso_local i32 @Autosprite2Deform(...) #1

declare dso_local i32 @DeformText(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
