; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_Text_Paint_Limit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_Text_Paint_Limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { float, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { float, float, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { float }
%struct.TYPE_11__ = type { float }

@cgDC = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@cg_smallFont = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@cg_bigFont = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@g_color_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float, float, float, i32*, i8*, float, i32)* @CG_Text_Paint_Limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Text_Paint_Limit(float* %0, float %1, float %2, float %3, i32* %4, i8* %5, float %6, i32 %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.TYPE_9__*, align 8
  %25 = alloca float, align 4
  store float* %0, float** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %168

28:                                               ; preds = %8
  %29 = load i8*, i8** %14, align 8
  store i8* %29, i8** %21, align 8
  %30 = load float*, float** %9, align 8
  %31 = load float, float* %30, align 4
  store float %31, float* %22, align 4
  store %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgDC, i32 0, i32 0, i32 2), %struct.TYPE_9__** %24, align 8
  %32 = load float, float* %12, align 4
  %33 = load float, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_smallFont, i32 0, i32 0), align 4
  %34 = fcmp ole float %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgDC, i32 0, i32 0, i32 1), %struct.TYPE_9__** %24, align 8
  br label %42

36:                                               ; preds = %28
  %37 = load float, float* %12, align 4
  %38 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_bigFont, i32 0, i32 0), align 4
  %39 = fcmp ogt float %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgDC, i32 0, i32 0, i32 0), %struct.TYPE_9__** %24, align 8
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %35
  %43 = load float, float* %12, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 8
  %47 = fmul float %43, %46
  store float %47, float* %23, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @trap_R_SetColor(i32* %48)
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %58, %54, %42
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %165, %88, %60
  %62 = load i8*, i8** %21, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i8*, i8** %21, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %70, %71
  br label %73

73:                                               ; preds = %69, %64, %61
  %74 = phi i1 [ false, %64 ], [ false, %61 ], [ %72, %69 ]
  br i1 %74, label %75, label %166

75:                                               ; preds = %73
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i8*, i8** %21, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = and i32 %81, 255
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %83
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %20, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = call i64 @Q_IsColorString(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %75
  %89 = load i32*, i32** %19, align 8
  %90 = load i32*, i32** @g_color_table, align 8
  %91 = load i8*, i8** %21, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @ColorIndex(i8 signext %93)
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i32* %89, i32 %96, i32 8)
  %98 = load i32*, i32** %13, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %19, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @trap_R_SetColor(i32* %103)
  %105 = load i8*, i8** %21, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  store i8* %106, i8** %21, align 8
  br label %61

107:                                              ; preds = %75
  %108 = load float, float* %23, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load float, float* %110, align 4
  %112 = fmul float %108, %111
  store float %112, float* %25, align 4
  %113 = load i8*, i8** %21, align 8
  %114 = load float, float* %12, align 4
  %115 = call float @CG_Text_Width(i8* %113, float %114, i32 1)
  %116 = load float, float* %10, align 4
  %117 = fadd float %115, %116
  %118 = load float, float* %22, align 4
  %119 = fcmp ogt float %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = load float*, float** %9, align 8
  store float 0.000000e+00, float* %121, align 4
  br label %166

122:                                              ; preds = %107
  %123 = load float, float* %10, align 4
  %124 = load float, float* %11, align 4
  %125 = load float, float* %25, align 4
  %126 = fsub float %124, %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load float, float* %23, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @CG_Text_PaintChar(float %123, float %126, i32 %129, i32 %132, float %133, i32 %136, i32 %139, i32 %142, i32 %145, i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load float, float* %151, align 4
  %153 = load float, float* %23, align 4
  %154 = fmul float %152, %153
  %155 = load float, float* %15, align 4
  %156 = fadd float %154, %155
  %157 = load float, float* %10, align 4
  %158 = fadd float %157, %156
  store float %158, float* %10, align 4
  %159 = load float, float* %10, align 4
  %160 = load float*, float** %9, align 8
  store float %159, float* %160, align 4
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  %163 = load i8*, i8** %21, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %21, align 8
  br label %165

165:                                              ; preds = %122
  br label %61

166:                                              ; preds = %120, %73
  %167 = call i32 @trap_R_SetColor(i32* null)
  br label %168

168:                                              ; preds = %166, %8
  ret void
}

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @ColorIndex(i8 signext) #1

declare dso_local float @CG_Text_Width(i8*, float, i32) #1

declare dso_local i32 @CG_Text_PaintChar(float, float, i32, i32, float, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
