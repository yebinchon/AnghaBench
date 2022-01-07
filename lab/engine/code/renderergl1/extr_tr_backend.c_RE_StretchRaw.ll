; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RE_StretchRaw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RE_StretchRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (...)*, i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32)* }

@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@r_speeds = common dso_local global %struct.TYPE_8__* null, align 8
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Draw_StretchRaw: size not a power of 2: %i by %i\00", align 1
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"qglTexSubImage2D %i, %i: %i msec\0A\00", align 1
@GL_QUADS = common dso_local global i32 0, align 4

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
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 2), align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %9
  br label %180

26:                                               ; preds = %9
  %27 = call i32 (...) @R_IssuePendingRenderCommands()
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @RB_EndSurface()
  br label %32

32:                                               ; preds = %30, %26
  %33 = call i32 (...) @qglFinish()
  store i32 0, i32* %21, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_speeds, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %40 = call i32 (...) %39()
  store i32 %40, i32* %21, align 4
  br label %41

41:                                               ; preds = %38, %32
  store i32 0, i32* %19, align 4
  br label %42

42:                                               ; preds = %48, %41
  %43 = load i32, i32* %19, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %19, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %19, align 4
  br label %42

51:                                               ; preds = %42
  store i32 0, i32* %20, align 4
  br label %52

52:                                               ; preds = %58, %51
  %53 = load i32, i32* %20, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  br label %52

61:                                               ; preds = %52
  %62 = load i32, i32* %19, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %20, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66, %61
  %72 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 2), align 8
  %73 = load i32, i32* @ERR_DROP, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 %72(i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @RE_UploadCinematic(i32 %78, i32 %79, i32 %80, i32 %81, i32* %82, i32 %83, i32 %84)
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @GL_Bind(i32 %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_speeds, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %77
  %97 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %98 = call i32 (...) %97()
  store i32 %98, i32* %22, align 4
  %99 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 1), align 8
  %100 = load i32, i32* @PRINT_ALL, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %21, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 %99(i32 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %96, %77
  %108 = call i32 (...) @RB_SetGL2D()
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %112 = call i32 @qglColor3f(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* @GL_QUADS, align 4
  %114 = call i32 @qglBegin(i32 %113)
  %115 = load i32, i32* %14, align 4
  %116 = sitofp i32 %115 to float
  %117 = fdiv float 5.000000e-01, %116
  %118 = load i32, i32* %15, align 4
  %119 = sitofp i32 %118 to float
  %120 = fdiv float 5.000000e-01, %119
  %121 = fptosi float %120 to i32
  %122 = call i32 @qglTexCoord2f(float %117, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @qglVertex2f(i32 %123, i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = sitofp i32 %126 to float
  %128 = fsub float %127, 5.000000e-01
  %129 = load i32, i32* %14, align 4
  %130 = sitofp i32 %129 to float
  %131 = fdiv float %128, %130
  %132 = load i32, i32* %15, align 4
  %133 = sitofp i32 %132 to float
  %134 = fdiv float 5.000000e-01, %133
  %135 = fptosi float %134 to i32
  %136 = call i32 @qglTexCoord2f(float %131, i32 %135)
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @qglVertex2f(i32 %139, i32 %140)
  %142 = load i32, i32* %14, align 4
  %143 = sitofp i32 %142 to float
  %144 = fsub float %143, 5.000000e-01
  %145 = load i32, i32* %14, align 4
  %146 = sitofp i32 %145 to float
  %147 = fdiv float %144, %146
  %148 = load i32, i32* %15, align 4
  %149 = sitofp i32 %148 to float
  %150 = fsub float %149, 5.000000e-01
  %151 = load i32, i32* %15, align 4
  %152 = sitofp i32 %151 to float
  %153 = fdiv float %150, %152
  %154 = fptosi float %153 to i32
  %155 = call i32 @qglTexCoord2f(float %147, i32 %154)
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %159, %160
  %162 = call i32 @qglVertex2f(i32 %158, i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = sitofp i32 %163 to float
  %165 = fdiv float 5.000000e-01, %164
  %166 = load i32, i32* %15, align 4
  %167 = sitofp i32 %166 to float
  %168 = fsub float %167, 5.000000e-01
  %169 = load i32, i32* %15, align 4
  %170 = sitofp i32 %169 to float
  %171 = fdiv float %168, %170
  %172 = fptosi float %171 to i32
  %173 = call i32 @qglTexCoord2f(float %165, i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @qglVertex2f(i32 %174, i32 %177)
  %179 = call i32 (...) @qglEnd()
  br label %180

180:                                              ; preds = %107, %25
  ret void
}

declare dso_local i32 @R_IssuePendingRenderCommands(...) #1

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @qglFinish(...) #1

declare dso_local i32 @RE_UploadCinematic(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @RB_SetGL2D(...) #1

declare dso_local i32 @qglColor3f(i32, i32, i32) #1

declare dso_local i32 @qglBegin(i32) #1

declare dso_local i32 @qglTexCoord2f(float, i32) #1

declare dso_local i32 @qglVertex2f(i32, i32) #1

declare dso_local i32 @qglEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
