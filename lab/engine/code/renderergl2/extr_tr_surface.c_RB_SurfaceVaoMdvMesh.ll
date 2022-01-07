; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceVaoMdvMesh.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceVaoMdvMesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, float }
%struct.TYPE_19__ = type { float, i8* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"--- RB_SurfaceVaoMdvMesh ---\0A\00", align 1
@tess = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@qfalse = common dso_local global i8* null, align 8
@backEnd = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@glState = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@glRefConfig = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@ATTR_INDEX_POSITION = common dso_local global i32 0, align 4
@ATTR_INDEX_NORMAL = common dso_local global i32 0, align 4
@ATTR_INDEX_TANGENT = common dso_local global i32 0, align 4
@ATTR_INDEX_POSITION2 = common dso_local global i32 0, align 4
@ATTR_INDEX_NORMAL2 = common dso_local global i32 0, align 4
@ATTR_INDEX_TANGENT2 = common dso_local global i32 0, align 4
@ATTR_INDEX_TEXCOORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SurfaceVaoMdvMesh(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tess, i32 0, i32 5), align 8
  %9 = call i64 @ShaderRequiresCPUDeforms(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @RB_SurfaceMesh(i32 %14)
  br label %306

16:                                               ; preds = %1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %306

22:                                               ; preds = %16
  %23 = call i32 (...) @RB_EndSurface()
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tess, i32 0, i32 5), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tess, i32 0, i32 4), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tess, i32 0, i32 3), align 8
  %27 = call i32 @RB_BeginSurface(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = call i32 @R_BindVao(%struct.TYPE_12__* %30)
  %32 = load i8*, i8** @qfalse, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tess, i32 0, i32 2), align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tess, i32 0, i32 1), align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tess, i32 0, i32 0), align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @backEnd, i32 0, i32 0), align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %3, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %22
  br label %53

49:                                               ; preds = %22
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load float, float* %51, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi float [ 0.000000e+00, %48 ], [ %52, %49 ]
  store float %54, float* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glState, i32 0, i32 0), align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %303

61:                                               ; preds = %53
  %62 = load i8*, i8** @qtrue, align 8
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glState, i32 0, i32 1), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @glRefConfig, i32 0, i32 0), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @qglBindBuffer(i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %65, %61
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %76, %81
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @ATTR_INDEX_POSITION, align 4
  store i32 %83, i32* %5, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 %90
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %6, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = call i32 @BUFFER_OFFSET(i64 %110)
  %112 = call i32 @qglVertexAttribPointer(i32 %92, i32 %95, i32 %98, i32 %101, i32 %104, i32 %111)
  %113 = load i32, i32* @ATTR_INDEX_NORMAL, align 4
  store i32 %113, i32* %5, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i64 %120
  store %struct.TYPE_15__* %121, %struct.TYPE_15__** %6, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  %141 = call i32 @BUFFER_OFFSET(i64 %140)
  %142 = call i32 @qglVertexAttribPointer(i32 %122, i32 %125, i32 %128, i32 %131, i32 %134, i32 %141)
  %143 = load i32, i32* @ATTR_INDEX_TANGENT, align 4
  store i32 %143, i32* %5, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %150
  store %struct.TYPE_15__* %151, %struct.TYPE_15__** %6, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = call i32 @BUFFER_OFFSET(i64 %170)
  %172 = call i32 @qglVertexAttribPointer(i32 %152, i32 %155, i32 %158, i32 %161, i32 %164, i32 %171)
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 %175, %180
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* @ATTR_INDEX_POSITION2, align 4
  store i32 %182, i32* %5, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 %189
  store %struct.TYPE_15__* %190, %struct.TYPE_15__** %6, align 8
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = call i32 @BUFFER_OFFSET(i64 %209)
  %211 = call i32 @qglVertexAttribPointer(i32 %191, i32 %194, i32 %197, i32 %200, i32 %203, i32 %210)
  %212 = load i32, i32* @ATTR_INDEX_NORMAL2, align 4
  store i32 %212, i32* %5, align 4
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i64 %219
  store %struct.TYPE_15__* %220, %struct.TYPE_15__** %6, align 8
  %221 = load i32, i32* %5, align 4
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %236, %238
  %240 = call i32 @BUFFER_OFFSET(i64 %239)
  %241 = call i32 @qglVertexAttribPointer(i32 %221, i32 %224, i32 %227, i32 %230, i32 %233, i32 %240)
  %242 = load i32, i32* @ATTR_INDEX_TANGENT2, align 4
  store i32 %242, i32* %5, align 4
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i64 %249
  store %struct.TYPE_15__* %250, %struct.TYPE_15__** %6, align 8
  %251 = load i32, i32* %5, align 4
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %266, %268
  %270 = call i32 @BUFFER_OFFSET(i64 %269)
  %271 = call i32 @qglVertexAttribPointer(i32 %251, i32 %254, i32 %257, i32 %260, i32 %263, i32 %270)
  %272 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @glRefConfig, i32 0, i32 0), align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %302, label %274

274:                                              ; preds = %73
  %275 = load i32, i32* @ATTR_INDEX_TEXCOORD, align 4
  store i32 %275, i32* %5, align 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %279, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i64 %282
  store %struct.TYPE_15__* %283, %struct.TYPE_15__** %6, align 8
  %284 = load i32, i32* %5, align 4
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @BUFFER_OFFSET(i64 %299)
  %301 = call i32 @qglVertexAttribPointer(i32 %284, i32 %287, i32 %290, i32 %293, i32 %296, i32 %300)
  br label %302

302:                                              ; preds = %274, %73
  br label %303

303:                                              ; preds = %302, %53
  %304 = call i32 (...) @RB_EndSurface()
  %305 = load i8*, i8** @qfalse, align 8
  store i8* %305, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glState, i32 0, i32 1), align 8
  br label %306

306:                                              ; preds = %303, %21, %11
  ret void
}

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i64 @ShaderRequiresCPUDeforms(i32) #1

declare dso_local i32 @RB_SurfaceMesh(i32) #1

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @RB_BeginSurface(i32, i32, i32) #1

declare dso_local i32 @R_BindVao(%struct.TYPE_12__*) #1

declare dso_local i32 @qglBindBuffer(i32, i32) #1

declare dso_local i32 @qglVertexAttribPointer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUFFER_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
