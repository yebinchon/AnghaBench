; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_ShutdownGPUShaders.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_ShutdownGPUShaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*)* }
%struct.TYPE_3__ = type { i32*, i32, i32, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32* }

@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"------- GLSL_ShutdownGPUShaders -------\0A\00", align 1
@ATTR_INDEX_COUNT = common dso_local global i32 0, align 4
@GENERICDEF_COUNT = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FOGDEF_COUNT = common dso_local global i32 0, align 4
@DLIGHTDEF_COUNT = common dso_local global i32 0, align 4
@LIGHTDEF_COUNT = common dso_local global i32 0, align 4
@SHADOWMAPDEF_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLSL_ShutdownGPUShaders() #0 {
  %1 = alloca i32, align 4
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %3 = load i32, i32* @PRINT_ALL, align 4
  %4 = call i32 %2(i32 %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @ATTR_INDEX_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @qglDisableVertexAttribArray(i32 %10)
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %5

15:                                               ; preds = %5
  %16 = call i32 (...) @GL_BindNullProgram()
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %27, %15
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @GENERICDEF_COUNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 13), align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @GLSL_DeleteGPUShader(i32* %25)
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %17

30:                                               ; preds = %17
  %31 = call i32 @GLSL_DeleteGPUShader(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 12))
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %42, %30
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @FOGDEF_COUNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 11), align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @GLSL_DeleteGPUShader(i32* %40)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %32

45:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @DLIGHTDEF_COUNT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 10), align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @GLSL_DeleteGPUShader(i32* %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %46

59:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %70, %59
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @LIGHTDEF_COUNT, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 9), align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @GLSL_DeleteGPUShader(i32* %68)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %60

73:                                               ; preds = %60
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %84, %73
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @SHADOWMAPDEF_COUNT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 8), align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @GLSL_DeleteGPUShader(i32* %82)
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %74

87:                                               ; preds = %74
  %88 = call i32 @GLSL_DeleteGPUShader(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 7))
  %89 = call i32 @GLSL_DeleteGPUShader(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 6))
  %90 = call i32 @GLSL_DeleteGPUShader(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 5))
  %91 = call i32 @GLSL_DeleteGPUShader(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 4))
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %101, %87
  %93 = load i32, i32* %1, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 3), align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @GLSL_DeleteGPUShader(i32* %99)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %92

104:                                              ; preds = %92
  %105 = call i32 @GLSL_DeleteGPUShader(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 2))
  %106 = call i32 @GLSL_DeleteGPUShader(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 1))
  store i32 0, i32* %1, align 4
  br label %107

107:                                              ; preds = %116, %104
  %108 = load i32, i32* %1, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @GLSL_DeleteGPUShader(i32* %114)
  br label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %1, align 4
  br label %107

119:                                              ; preds = %107
  ret void
}

declare dso_local i32 @qglDisableVertexAttribArray(i32) #1

declare dso_local i32 @GL_BindNullProgram(...) #1

declare dso_local i32 @GLSL_DeleteGPUShader(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
