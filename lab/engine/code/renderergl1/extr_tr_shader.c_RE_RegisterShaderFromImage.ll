; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_RE_RegisterShaderFromImage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_RE_RegisterShaderFromImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32**, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i8*, i8*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32**, i8* }

@FILE_HASH_SIZE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@LIGHTMAP_WHITEIMAGE = common dso_local global i32 0, align 4
@hashTable = common dso_local global %struct.TYPE_9__** null, align 8
@qtrue = common dso_local global i8* null, align 8
@shader = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@LIGHTMAP_NONE = common dso_local global i32 0, align 4
@stages = common dso_local global %struct.TYPE_11__* null, align 8
@CGEN_LIGHTING_DIFFUSE = common dso_local global i8* null, align 8
@GLS_DEFAULT = common dso_local global i8* null, align 8
@LIGHTMAP_BY_VERTEX = common dso_local global i32 0, align 4
@CGEN_EXACT_VERTEX = common dso_local global i8* null, align 8
@AGEN_SKIP = common dso_local global i32 0, align 4
@LIGHTMAP_2D = common dso_local global i32 0, align 4
@CGEN_VERTEX = common dso_local global i8* null, align 8
@AGEN_VERTEX = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@CGEN_IDENTITY_LIGHTING = common dso_local global i8* null, align 8
@CGEN_IDENTITY = common dso_local global i8* null, align 8
@GLS_SRCBLEND_DST_COLOR = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RE_RegisterShaderFromImage(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @FILE_HASH_SIZE, align 4
  %14 = call i32 @generateHashValue(i8* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 0), align 8
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @LIGHTMAP_WHITEIMAGE, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %4
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @hashTable, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %21, i64 %23
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %11, align 8
  br label %26

26:                                               ; preds = %52, %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35, %29
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @Q_stricmp(i32 %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  br label %274

51:                                               ; preds = %40, %35
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %11, align 8
  br label %26

56:                                               ; preds = %26
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @InitShader(i8* %57, i32 %58)
  %60 = load i8*, i8** @qtrue, align 8
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 4), align 8
  %61 = load i8*, i8** @qtrue, align 8
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 3), align 8
  %62 = load i8*, i8** @qtrue, align 8
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 2), align 8
  %63 = load i8*, i8** @qtrue, align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 1), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 8
  %65 = load i32, i32* @LIGHTMAP_NONE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %56
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  store i32* %68, i32** %76, align 8
  %77 = load i8*, i8** @qtrue, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** @CGEN_LIGHTING_DIFFUSE, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load i8*, i8** @GLS_DEFAULT, align 8
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  br label %269

90:                                               ; preds = %56
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 8
  %92 = load i32, i32* @LIGHTMAP_BY_VERTEX, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %90
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  store i32* %95, i32** %103, align 8
  %104 = load i8*, i8** @qtrue, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** @CGEN_EXACT_VERTEX, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  %112 = load i32, i32* @AGEN_SKIP, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 8
  %116 = load i8*, i8** @GLS_DEFAULT, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  br label %268

121:                                              ; preds = %90
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 8
  %123 = load i32, i32* @LIGHTMAP_2D, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %121
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  store i32* %126, i32** %134, align 8
  %135 = load i8*, i8** @qtrue, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  store i8* %135, i8** %138, align 8
  %139 = load i8*, i8** @CGEN_VERTEX, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  %143 = load i32, i32* @AGEN_VERTEX, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 4
  store i32 %143, i32* %146, align 8
  %147 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %148 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  br label %267

155:                                              ; preds = %121
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 8
  %157 = load i32, i32* @LIGHTMAP_WHITEIMAGE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %207

159:                                              ; preds = %155
  %160 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 2), align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 0
  store i32* %160, i32** %168, align 8
  %169 = load i8*, i8** @qtrue, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  store i8* %169, i8** %172, align 8
  %173 = load i8*, i8** @CGEN_IDENTITY_LIGHTING, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  store i8* %173, i8** %176, align 8
  %177 = load i8*, i8** @GLS_DEFAULT, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32**, i32*** %188, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 0
  store i32* %182, i32** %190, align 8
  %191 = load i8*, i8** @qtrue, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  store i8* %191, i8** %194, align 8
  %195 = load i8*, i8** @CGEN_IDENTITY, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %200 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i64 1
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %201
  store i32 %206, i32* %204, align 8
  br label %266

207:                                              ; preds = %155
  %208 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 1), align 8
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 8
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32**, i32*** %218, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i64 0
  store i32* %212, i32** %220, align 8
  %221 = load i8*, i8** @qtrue, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  store i8* %221, i8** %227, align 8
  %228 = load i8*, i8** @qtrue, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 2
  store i8* %228, i8** %231, align 8
  %232 = load i8*, i8** @CGEN_IDENTITY, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i64 0
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 1
  store i8* %232, i8** %235, align 8
  %236 = load i8*, i8** @GLS_DEFAULT, align 8
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 0
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  %241 = load i32*, i32** %8, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i64 1
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i32**, i32*** %247, align 8
  %249 = getelementptr inbounds i32*, i32** %248, i64 0
  store i32* %241, i32** %249, align 8
  %250 = load i8*, i8** @qtrue, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i64 1
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 2
  store i8* %250, i8** %253, align 8
  %254 = load i8*, i8** @CGEN_IDENTITY, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 1
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  store i8* %254, i8** %257, align 8
  %258 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %259 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i64 1
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %260
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %207, %159
  br label %267

267:                                              ; preds = %266, %125
  br label %268

268:                                              ; preds = %267, %94
  br label %269

269:                                              ; preds = %268, %67
  %270 = call %struct.TYPE_9__* (...) @FinishShader()
  store %struct.TYPE_9__* %270, %struct.TYPE_9__** %11, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %269, %47
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i32 @generateHashValue(i8*, i32) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @InitShader(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @FinishShader(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
