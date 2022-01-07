; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RE_StretchRaw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RE_StretchRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 (...)*, i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32)* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@tr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@r_speeds = common dso_local global %struct.TYPE_11__* null, align 8
@ri = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Draw_StretchRaw: size not a power of 2: %i by %i\00", align 1
@TB_COLORMAP = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"qglTexSubImage2D %i, %i: %i msec\0A\00", align 1
@glRefConfig = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@UNIFORM_MODELVIEWPROJECTIONMATRIX = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@UNIFORM_COLOR = common dso_local global i32 0, align 4
@colorWhite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_StretchRaw(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [4 x i32], align 16
  %24 = alloca [4 x i32], align 16
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 3), align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %9
  br label %214

28:                                               ; preds = %9
  %29 = call i32 (...) @R_IssuePendingRenderCommands()
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @RB_EndSurface()
  br label %34

34:                                               ; preds = %32, %28
  %35 = call i32 (...) @qglFinish()
  store i32 0, i32* %21, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_speeds, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %42 = call i32 (...) %41()
  store i32 %42, i32* %21, align 4
  br label %43

43:                                               ; preds = %40, %34
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %50, %43
  %45 = load i32, i32* %19, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %19, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %19, align 4
  br label %44

53:                                               ; preds = %44
  store i32 0, i32* %20, align 4
  br label %54

54:                                               ; preds = %60, %53
  %55 = load i32, i32* %20, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %20, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %20, align 4
  br label %54

63:                                               ; preds = %54
  %64 = load i32, i32* %19, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %20, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68, %63
  %74 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 2), align 8
  %75 = load i32, i32* @ERR_DROP, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 %74(i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @RE_UploadCinematic(i32 %80, i32 %81, i32 %82, i32 %83, i32* %84, i32 %85, i32 %86)
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 2), align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TB_COLORMAP, align 4
  %94 = call i32 @GL_BindToTMU(i32 %92, i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_speeds, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %79
  %100 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %101 = call i32 (...) %100()
  store i32 %101, i32* %22, align 4
  %102 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %103 = load i32, i32* @PRINT_ALL, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %21, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 %102(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %99, %79
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glRefConfig, i32 0, i32 0), align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0), align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %119

117:                                              ; preds = %113
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1), align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = phi i32* [ null, %116 ], [ %118, %117 ]
  %121 = call i32 @FBO_Bind(i32* %120)
  br label %122

122:                                              ; preds = %119, %110
  %123 = call i32 (...) @RB_SetGL2D()
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @VectorSet4(i32 %125, i32 %126, i32 %127, float 0.000000e+00, float 1.000000e+00)
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @VectorSet4(i32 %130, i32 %133, i32 %134, float 0.000000e+00, float 1.000000e+00)
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i32 @VectorSet4(i32 %137, i32 %140, i32 %143, float 0.000000e+00, float 1.000000e+00)
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %148, %149
  %151 = call i32 @VectorSet4(i32 %146, i32 %147, i32 %150, float 0.000000e+00, float 1.000000e+00)
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %153 = load i32, i32* %152, align 16
  %154 = load i32, i32* %14, align 4
  %155 = sitofp i32 %154 to float
  %156 = fdiv float 5.000000e-01, %155
  %157 = load i32, i32* %15, align 4
  %158 = sitofp i32 %157 to float
  %159 = fdiv float 5.000000e-01, %158
  %160 = fptosi float %159 to i32
  %161 = call i32 @VectorSet2(i32 %153, float %156, i32 %160)
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %14, align 4
  %165 = sitofp i32 %164 to float
  %166 = fsub float %165, 5.000000e-01
  %167 = load i32, i32* %14, align 4
  %168 = sitofp i32 %167 to float
  %169 = fdiv float %166, %168
  %170 = load i32, i32* %15, align 4
  %171 = sitofp i32 %170 to float
  %172 = fdiv float 5.000000e-01, %171
  %173 = fptosi float %172 to i32
  %174 = call i32 @VectorSet2(i32 %163, float %169, i32 %173)
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sitofp i32 %177 to float
  %179 = fsub float %178, 5.000000e-01
  %180 = load i32, i32* %14, align 4
  %181 = sitofp i32 %180 to float
  %182 = fdiv float %179, %181
  %183 = load i32, i32* %15, align 4
  %184 = sitofp i32 %183 to float
  %185 = fsub float %184, 5.000000e-01
  %186 = load i32, i32* %15, align 4
  %187 = sitofp i32 %186 to float
  %188 = fdiv float %185, %187
  %189 = fptosi float %188 to i32
  %190 = call i32 @VectorSet2(i32 %176, float %182, i32 %189)
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %14, align 4
  %194 = sitofp i32 %193 to float
  %195 = fdiv float 5.000000e-01, %194
  %196 = load i32, i32* %15, align 4
  %197 = sitofp i32 %196 to float
  %198 = fsub float %197, 5.000000e-01
  %199 = load i32, i32* %15, align 4
  %200 = sitofp i32 %199 to float
  %201 = fdiv float %198, %200
  %202 = fptosi float %201 to i32
  %203 = call i32 @VectorSet2(i32 %192, float %195, i32 %202)
  %204 = call i32 @GLSL_BindProgram(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0))
  %205 = load i32, i32* @UNIFORM_MODELVIEWPROJECTIONMATRIX, align 4
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 4
  %207 = call i32 @GLSL_SetUniformMat4(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), i32 %205, i32 %206)
  %208 = load i32, i32* @UNIFORM_COLOR, align 4
  %209 = load i32, i32* @colorWhite, align 4
  %210 = call i32 @GLSL_SetUniformVec4(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), i32 %208, i32 %209)
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %213 = call i32 @RB_InstantQuad2(i32* %211, i32* %212)
  br label %214

214:                                              ; preds = %122, %27
  ret void
}

declare dso_local i32 @R_IssuePendingRenderCommands(...) #1

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @qglFinish(...) #1

declare dso_local i32 @RE_UploadCinematic(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @GL_BindToTMU(i32, i32) #1

declare dso_local i32 @FBO_Bind(i32*) #1

declare dso_local i32 @RB_SetGL2D(...) #1

declare dso_local i32 @VectorSet4(i32, i32, i32, float, float) #1

declare dso_local i32 @VectorSet2(i32, float, i32) #1

declare dso_local i32 @GLSL_BindProgram(i32*) #1

declare dso_local i32 @GLSL_SetUniformMat4(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformVec4(i32*, i32, i32) #1

declare dso_local i32 @RB_InstantQuad2(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
