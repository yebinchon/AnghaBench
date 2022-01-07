; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_convert_map.c_ConvertBrush.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_convert_map.c_ConvertBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"\09// brush %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@buildBrush = common dso_local global %struct.TYPE_16__* null, align 8
@bspBrushSides = common dso_local global %struct.TYPE_15__* null, align 8
@numBSPShaders = common dso_local global i64 0, align 8
@bspShaders = common dso_local global %struct.TYPE_13__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"noshader\00", align 1
@bspPlanes = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"textures/\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"\09\09( %.3f %.3f %.3f ) ( %.3f %.3f %.3f ) ( %.3f %.3f %.3f ) %s 0 0 0 0.5 0.5 0 0 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\09}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_14__*, double*)* @ConvertBrush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConvertBrush(i32* %0, i32 %1, %struct.TYPE_14__* %2, double* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [3 x double*], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store double* %3, double** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %47, %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %33
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %12, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = call i32 @FreeWinding(%struct.TYPE_18__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %45, align 8
  br label %46

46:                                               ; preds = %39, %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %128, %50
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %131

59:                                               ; preds = %53
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bspBrushSides, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 %66
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %11, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %59
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @numBSPShaders, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %59
  br label %128

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bspShaders, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %83
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %13, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @Q_stricmp(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @Q_stricmp(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90, %79
  br label %128

97:                                               ; preds = %90
  %98 = load i32*, i32** @bspPlanes, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32* %102, i32** %15, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %109
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %12, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.TYPE_17__* @ShaderInfoForShader(i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  store %struct.TYPE_17__* %118, %struct.TYPE_17__** %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %127, align 8
  br label %128

128:                                              ; preds = %97, %96, %78
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %53

131:                                              ; preds = %53
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %133 = call i32 @CreateBrushWindings(%struct.TYPE_16__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  br label %250

136:                                              ; preds = %131
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %244, %136
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %247

143:                                              ; preds = %137
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buildBrush, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %148
  store %struct.TYPE_12__* %149, %struct.TYPE_12__** %12, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = icmp eq %struct.TYPE_17__* %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %143
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = icmp eq %struct.TYPE_18__* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %154, %143
  br label %244

160:                                              ; preds = %154
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @Q_strncasecmp(i8* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %160
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 9
  store i8* %174, i8** %14, align 8
  br label %181

175:                                              ; preds = %160
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %14, align 8
  br label %181

181:                                              ; preds = %175, %168
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %201, %181
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %185, label %204

185:                                              ; preds = %182
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load double*, double** %8, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 %197
  %199 = load double*, double** %198, align 8
  %200 = call i32 @VectorAdd(i32 %194, double* %195, double* %199)
  br label %201

201:                                              ; preds = %185
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %182

204:                                              ; preds = %182
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 0
  %207 = load double*, double** %206, align 16
  %208 = getelementptr inbounds double, double* %207, i64 0
  %209 = load double, double* %208, align 8
  %210 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 0
  %211 = load double*, double** %210, align 16
  %212 = getelementptr inbounds double, double* %211, i64 1
  %213 = load double, double* %212, align 8
  %214 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 0
  %215 = load double*, double** %214, align 16
  %216 = getelementptr inbounds double, double* %215, i64 2
  %217 = load double, double* %216, align 8
  %218 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 1
  %219 = load double*, double** %218, align 8
  %220 = getelementptr inbounds double, double* %219, i64 0
  %221 = load double, double* %220, align 8
  %222 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 1
  %223 = load double*, double** %222, align 8
  %224 = getelementptr inbounds double, double* %223, i64 1
  %225 = load double, double* %224, align 8
  %226 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 1
  %227 = load double*, double** %226, align 8
  %228 = getelementptr inbounds double, double* %227, i64 2
  %229 = load double, double* %228, align 8
  %230 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 2
  %231 = load double*, double** %230, align 16
  %232 = getelementptr inbounds double, double* %231, i64 0
  %233 = load double, double* %232, align 8
  %234 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 2
  %235 = load double*, double** %234, align 16
  %236 = getelementptr inbounds double, double* %235, i64 1
  %237 = load double, double* %236, align 8
  %238 = getelementptr inbounds [3 x double*], [3 x double*]* %16, i64 0, i64 2
  %239 = load double*, double** %238, align 16
  %240 = getelementptr inbounds double, double* %239, i64 2
  %241 = load double, double* %240, align 8
  %242 = load i8*, i8** %14, align 8
  %243 = call i32 (i32*, i8*, ...) @fprintf(i32* %205, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), double %209, double %213, double %217, double %221, double %225, double %229, double %233, double %237, double %241, i8* %242)
  br label %244

244:                                              ; preds = %204, %159
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %137

247:                                              ; preds = %137
  %248 = load i32*, i32** %5, align 8
  %249 = call i32 (i32*, i8*, ...) @fprintf(i32* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %250

250:                                              ; preds = %247, %135
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_18__*) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local %struct.TYPE_17__* @ShaderInfoForShader(i32) #1

declare dso_local i32 @CreateBrushWindings(%struct.TYPE_16__*) #1

declare dso_local i32 @Q_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @VectorAdd(i32, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
