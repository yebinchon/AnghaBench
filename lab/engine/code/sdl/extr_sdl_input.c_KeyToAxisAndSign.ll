; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_KeyToAxisAndSign.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_KeyToAxisAndSign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_11__ = type { float }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { float }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { float }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { float }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { float }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"+forward\00", align 1
@j_forward_axis = common dso_local global %struct.TYPE_20__* null, align 8
@j_forward = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"+back\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"+moveleft\00", align 1
@j_side_axis = common dso_local global %struct.TYPE_16__* null, align 8
@j_side = common dso_local global %struct.TYPE_17__* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"+moveright\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"+lookup\00", align 1
@j_pitch_axis = common dso_local global %struct.TYPE_18__* null, align 8
@j_pitch = common dso_local global %struct.TYPE_19__* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"+lookdown\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"+left\00", align 1
@j_yaw_axis = common dso_local global %struct.TYPE_12__* null, align 8
@j_yaw = common dso_local global %struct.TYPE_13__* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"+right\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"+moveup\00", align 1
@j_up_axis = common dso_local global %struct.TYPE_14__* null, align 8
@j_up = common dso_local global %struct.TYPE_15__* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"+movedown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @KeyToAxisAndSign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KeyToAxisAndSign(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @qfalse, align 4
  store i32 %12, i32* %4, align 4
  br label %200

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @Key_GetBinding(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 43
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %4, align 4
  br label %200

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @Q_stricmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** @j_forward_axis, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @j_forward, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = fcmp ogt float %37, 0.000000e+00
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 -1
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %195

42:                                               ; preds = %25
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @Q_stricmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** @j_forward_axis, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @j_forward, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 4
  %54 = fcmp ogt float %53, 0.000000e+00
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 -1, i32 1
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %194

58:                                               ; preds = %42
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @Q_stricmp(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** @j_side_axis, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** @j_side, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load float, float* %68, align 4
  %70 = fcmp ogt float %69, 0.000000e+00
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 -1, i32 1
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %193

74:                                               ; preds = %58
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @Q_stricmp(i8* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** @j_side_axis, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** @j_side, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load float, float* %84, align 4
  %86 = fcmp ogt float %85, 0.000000e+00
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 -1
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  br label %192

90:                                               ; preds = %74
  %91 = load i8*, i8** %8, align 8
  %92 = call i64 @Q_stricmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** @j_pitch_axis, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** @j_pitch, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load float, float* %100, align 4
  %102 = fcmp ogt float %101, 0.000000e+00
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 -1, i32 1
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %191

106:                                              ; preds = %90
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @Q_stricmp(i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** @j_pitch_axis, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** @j_pitch, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = fcmp ogt float %117, 0.000000e+00
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 -1
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  br label %190

122:                                              ; preds = %106
  %123 = load i8*, i8** %8, align 8
  %124 = call i64 @Q_stricmp(i8* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @j_yaw_axis, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %6, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** @j_yaw, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load float, float* %132, align 4
  %134 = fcmp ogt float %133, 0.000000e+00
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 -1
  %137 = load i32*, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  br label %189

138:                                              ; preds = %122
  %139 = load i8*, i8** %8, align 8
  %140 = call i64 @Q_stricmp(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** @j_yaw_axis, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %6, align 8
  store i32 %145, i32* %146, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** @j_yaw, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load float, float* %148, align 4
  %150 = fcmp ogt float %149, 0.000000e+00
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 -1, i32 1
  %153 = load i32*, i32** %7, align 8
  store i32 %152, i32* %153, align 4
  br label %188

154:                                              ; preds = %138
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @Q_stricmp(i8* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** @j_up_axis, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %6, align 8
  store i32 %161, i32* %162, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** @j_up, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load float, float* %164, align 4
  %166 = fcmp ogt float %165, 0.000000e+00
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 -1
  %169 = load i32*, i32** %7, align 8
  store i32 %168, i32* %169, align 4
  br label %187

170:                                              ; preds = %154
  %171 = load i8*, i8** %8, align 8
  %172 = call i64 @Q_stricmp(i8* %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** @j_up_axis, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %6, align 8
  store i32 %177, i32* %178, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** @j_up, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load float, float* %180, align 4
  %182 = fcmp ogt float %181, 0.000000e+00
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 -1, i32 1
  %185 = load i32*, i32** %7, align 8
  store i32 %184, i32* %185, align 4
  br label %186

186:                                              ; preds = %174, %170
  br label %187

187:                                              ; preds = %186, %158
  br label %188

188:                                              ; preds = %187, %142
  br label %189

189:                                              ; preds = %188, %126
  br label %190

190:                                              ; preds = %189, %110
  br label %191

191:                                              ; preds = %190, %94
  br label %192

192:                                              ; preds = %191, %78
  br label %193

193:                                              ; preds = %192, %62
  br label %194

194:                                              ; preds = %193, %46
  br label %195

195:                                              ; preds = %194, %30
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %195, %23, %11
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i8* @Key_GetBinding(i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
