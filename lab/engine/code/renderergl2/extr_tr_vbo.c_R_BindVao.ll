; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_R_BindVao.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_R_BindVao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (i32, i8*)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@ri = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"R_BindVao: NULL vao\00", align 1
@r_logFile = common dso_local global %struct.TYPE_15__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"--- R_BindVao( %s ) ---\0A\00", align 1
@glState = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@glRefConfig = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_BindVao(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = icmp ne %struct.TYPE_12__* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ri, i32 0, i32 0), align 8
  %7 = load i32, i32* @ERR_DROP, align 4
  %8 = call i32 %6(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %78

9:                                                ; preds = %1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_logFile, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @va(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 @GLimp_LogComment(i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glState, i32 0, i32 2), align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = icmp ne %struct.TYPE_12__* %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %20
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glState, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glState, i32 0, i32 1), align 8
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glState, i32 0, i32 0), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0, i32 0), align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0, i32 0), align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glRefConfig, i32 0, i32 1), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qglBindVertexArray(i32 %34)
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glRefConfig, i32 0, i32 0), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %41 = icmp eq %struct.TYPE_12__* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38, %31
  %43 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @qglBindBuffer(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %51 = icmp eq %struct.TYPE_12__* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @qglBindBuffer(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  br label %77

59:                                               ; preds = %24
  %60 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @qglBindBuffer(i32 %60, i32 %63)
  %65 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qglBindBuffer(i32 %65, i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %72 = icmp ne %struct.TYPE_12__* %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = call i32 @Vao_SetVertexPointers(%struct.TYPE_12__* %74)
  br label %76

76:                                               ; preds = %73, %59
  br label %77

77:                                               ; preds = %76, %58
  br label %78

78:                                               ; preds = %5, %77, %20
  ret void
}

declare dso_local i32 @GLimp_LogComment(i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @qglBindVertexArray(i32) #1

declare dso_local i32 @qglBindBuffer(i32, i32) #1

declare dso_local i32 @Vao_SetVertexPointers(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
