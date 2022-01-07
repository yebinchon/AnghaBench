; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shadows.c_RB_ShadowTessEnd.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shadows.c_RB_ShadowTessEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, float**, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@glConfig = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@backEnd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@shadowXyz = common dso_local global i32* null, align 8
@numEdgeDefs = common dso_local global i32 0, align 4
@facing = common dso_local global i32* null, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ZERO = common dso_local global i32 0, align 4
@GL_COLOR_WRITEMASK = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_STENCIL_TEST = common dso_local global i32 0, align 4
@GL_ALWAYS = common dso_local global i32 0, align 4
@CT_BACK_SIDED = common dso_local global i32 0, align 4
@GL_KEEP = common dso_local global i32 0, align 4
@GL_INCR = common dso_local global i32 0, align 4
@CT_FRONT_SIDED = common dso_local global i32 0, align 4
@GL_DECR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ShadowTessEnd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 0), align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %190

18:                                               ; preds = %0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @VectorCopy(i32 %21, i32 %22)
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %41, %18
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load float**, float*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float*, float** %29, i64 %31
  %33 = load float*, float** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32*, i32** @shadowXyz, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @VectorMA(float* %33, i32 -512, i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load i32, i32* @numEdgeDefs, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %47 = mul nsw i32 4, %46
  %48 = call i32 @Com_Memset(i32 %45, i32 0, i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %50 = sdiv i32 %49, 3
  store i32 %50, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %144, %44
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %147

55:                                               ; preds = %51
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %57 = load i32, i32* %1, align 4
  %58 = mul nsw i32 %57, 3
  %59 = add nsw i32 %58, 0
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %64 = load i32, i32* %1, align 4
  %65 = mul nsw i32 %64, 3
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %71 = load i32, i32* %1, align 4
  %72 = mul nsw i32 %71, 3
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %7, align 4
  %77 = load float**, float*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float*, float** %77, i64 %79
  %81 = load float*, float** %80, align 8
  store float* %81, float** %11, align 8
  %82 = load float**, float*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float*, float** %82, i64 %84
  %86 = load float*, float** %85, align 8
  store float* %86, float** %12, align 8
  %87 = load float**, float*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float*, float** %87, i64 %89
  %91 = load float*, float** %90, align 8
  store float* %91, float** %13, align 8
  %92 = load float*, float** %12, align 8
  %93 = load float*, float** %11, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @VectorSubtract(float* %92, float* %93, i32 %94)
  %96 = load float*, float** %13, align 8
  %97 = load float*, float** %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @VectorSubtract(float* %96, float* %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @CrossProduct(i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call float @DotProduct(i32 %104, i32 %105)
  store float %106, float* %14, align 4
  %107 = load float, float* %14, align 4
  %108 = fcmp ogt float %107, 0.000000e+00
  br i1 %108, label %109, label %114

109:                                              ; preds = %55
  %110 = load i32*, i32** @facing, align 8
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 1, i32* %113, align 4
  br label %119

114:                                              ; preds = %55
  %115 = load i32*, i32** @facing, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32*, i32** @facing, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @R_AddEdgeDef(i32 %120, i32 %121, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32*, i32** @facing, align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @R_AddEdgeDef(i32 %128, i32 %129, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32*, i32** @facing, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @R_AddEdgeDef(i32 %136, i32 %137, i32 %142)
  br label %144

144:                                              ; preds = %119
  %145 = load i32, i32* %1, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %1, align 4
  br label %51

147:                                              ; preds = %51
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %149 = call i32 @GL_Bind(i32 %148)
  %150 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %151 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @GL_State(i32 %152)
  %154 = call i32 @qglColor3f(float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 0x3FC99999A0000000)
  %155 = load i32, i32* @GL_COLOR_WRITEMASK, align 4
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %157 = call i32 @qglGetBooleanv(i32 %155, i32* %156)
  %158 = load i32, i32* @GL_FALSE, align 4
  %159 = load i32, i32* @GL_FALSE, align 4
  %160 = load i32, i32* @GL_FALSE, align 4
  %161 = load i32, i32* @GL_FALSE, align 4
  %162 = call i32 @qglColorMask(i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* @GL_STENCIL_TEST, align 4
  %164 = call i32 @qglEnable(i32 %163)
  %165 = load i32, i32* @GL_ALWAYS, align 4
  %166 = call i32 @qglStencilFunc(i32 %165, i32 1, i32 255)
  %167 = load i32, i32* @CT_BACK_SIDED, align 4
  %168 = call i32 @GL_Cull(i32 %167)
  %169 = load i32, i32* @GL_KEEP, align 4
  %170 = load i32, i32* @GL_KEEP, align 4
  %171 = load i32, i32* @GL_INCR, align 4
  %172 = call i32 @qglStencilOp(i32 %169, i32 %170, i32 %171)
  %173 = call i32 (...) @R_RenderShadowEdges()
  %174 = load i32, i32* @CT_FRONT_SIDED, align 4
  %175 = call i32 @GL_Cull(i32 %174)
  %176 = load i32, i32* @GL_KEEP, align 4
  %177 = load i32, i32* @GL_KEEP, align 4
  %178 = load i32, i32* @GL_DECR, align 4
  %179 = call i32 @qglStencilOp(i32 %176, i32 %177, i32 %178)
  %180 = call i32 (...) @R_RenderShadowEdges()
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %182 = load i32, i32* %181, align 16
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @qglColorMask(i32 %182, i32 %184, i32 %186, i32 %188)
  br label %190

190:                                              ; preds = %147, %17
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorMA(float*, i32, i32, i32) #1

declare dso_local i32 @Com_Memset(i32, i32, i32) #1

declare dso_local i32 @VectorSubtract(float*, float*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @R_AddEdgeDef(i32, i32, i32) #1

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglColor3f(float, float, float) #1

declare dso_local i32 @qglGetBooleanv(i32, i32*) #1

declare dso_local i32 @qglColorMask(i32, i32, i32, i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglStencilFunc(i32, i32, i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @qglStencilOp(i32, i32, i32) #1

declare dso_local i32 @R_RenderShadowEdges(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
