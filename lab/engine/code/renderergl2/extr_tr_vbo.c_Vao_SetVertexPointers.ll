; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_Vao_SetVertexPointers.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_Vao_SetVertexPointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64 }

@ATTR_INDEX_COUNT = common dso_local global i32 0, align 4
@glRefConfig = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@glState = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@tess = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vao_SetVertexPointers(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %89, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ATTR_INDEX_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %92

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %17
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %10
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @BUFFER_OFFSET(i32 %39)
  %41 = call i32 @qglVertexAttribPointer(i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %40)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %23
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glState, i32 0, i32 0), align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %23
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @qglEnableVertexAttribArray(i32 %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %58 = icmp eq %struct.TYPE_7__* %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glState, i32 0, i32 0), align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glState, i32 0, i32 0), align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %88

64:                                               ; preds = %10
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glState, i32 0, i32 0), align 4
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @qglDisableVertexAttribArray(i32 %73)
  br label %75

75:                                               ; preds = %72, %67, %64
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glRefConfig, i32 0, i32 0), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %81 = icmp eq %struct.TYPE_7__* %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %4, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glState, i32 0, i32 0), align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glState, i32 0, i32 0), align 4
  br label %87

87:                                               ; preds = %82, %78
  br label %88

88:                                               ; preds = %87, %63
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %6

92:                                               ; preds = %6
  ret void
}

declare dso_local i32 @qglVertexAttribPointer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUFFER_OFFSET(i32) #1

declare dso_local i32 @qglEnableVertexAttribArray(i32) #1

declare dso_local i32 @qglDisableVertexAttribArray(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
