; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_RE_RegisterShaderFromImage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_RE_RegisterShaderFromImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32**, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, i8*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32**, i8* }

@FILE_HASH_SIZE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@LIGHTMAP_WHITEIMAGE = common dso_local global i32 0, align 4
@hashTable = common dso_local global %struct.TYPE_9__** null, align 8
@shader = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@LIGHTMAP_NONE = common dso_local global i32 0, align 4
@stages = common dso_local global %struct.TYPE_11__* null, align 8
@qtrue = common dso_local global i8* null, align 8
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
  br label %270

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
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 4
  %61 = load i32, i32* @LIGHTMAP_NONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  store i32* %64, i32** %72, align 8
  %73 = load i8*, i8** @qtrue, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  %77 = load i8*, i8** @CGEN_LIGHTING_DIFFUSE, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** @GLS_DEFAULT, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  br label %265

86:                                               ; preds = %56
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 4
  %88 = load i32, i32* @LIGHTMAP_BY_VERTEX, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  store i32* %91, i32** %99, align 8
  %100 = load i8*, i8** @qtrue, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** @CGEN_EXACT_VERTEX, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* @AGEN_SKIP, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  %112 = load i8*, i8** @GLS_DEFAULT, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %264

117:                                              ; preds = %86
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 4
  %119 = load i32, i32* @LIGHTMAP_2D, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %151

121:                                              ; preds = %117
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  store i32* %122, i32** %130, align 8
  %131 = load i8*, i8** @qtrue, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  store i8* %131, i8** %134, align 8
  %135 = load i8*, i8** @CGEN_VERTEX, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  %139 = load i32, i32* @AGEN_VERTEX, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %144 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  br label %263

151:                                              ; preds = %117
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 4
  %153 = load i32, i32* @LIGHTMAP_WHITEIMAGE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %203

155:                                              ; preds = %151
  %156 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 2), align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32**, i32*** %162, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 0
  store i32* %156, i32** %164, align 8
  %165 = load i8*, i8** @qtrue, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  store i8* %165, i8** %168, align 8
  %169 = load i8*, i8** @CGEN_IDENTITY_LIGHTING, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  store i8* %169, i8** %172, align 8
  %173 = load i8*, i8** @GLS_DEFAULT, align 8
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i64 1
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32**, i32*** %184, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 0
  store i32* %178, i32** %186, align 8
  %187 = load i8*, i8** @qtrue, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i64 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  store i8* %187, i8** %190, align 8
  %191 = load i8*, i8** @CGEN_IDENTITY, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  store i8* %191, i8** %194, align 8
  %195 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %196 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %197
  store i32 %202, i32* %200, align 8
  br label %262

203:                                              ; preds = %151
  %204 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 1), align 8
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shader, i32 0, i32 0), align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32**, i32*** %214, align 8
  %216 = getelementptr inbounds i32*, i32** %215, i64 0
  store i32* %208, i32** %216, align 8
  %217 = load i8*, i8** @qtrue, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  store i8* %217, i8** %223, align 8
  %224 = load i8*, i8** @qtrue, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  store i8* %224, i8** %227, align 8
  %228 = load i8*, i8** @CGEN_IDENTITY, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  store i8* %228, i8** %231, align 8
  %232 = load i8*, i8** @GLS_DEFAULT, align 8
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 1
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32**, i32*** %243, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 0
  store i32* %237, i32** %245, align 8
  %246 = load i8*, i8** @qtrue, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 1
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  store i8* %246, i8** %249, align 8
  %250 = load i8*, i8** @CGEN_IDENTITY, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i64 1
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  store i8* %250, i8** %253, align 8
  %254 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %255 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** @stages, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i64 1
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %256
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %203, %155
  br label %263

263:                                              ; preds = %262, %121
  br label %264

264:                                              ; preds = %263, %90
  br label %265

265:                                              ; preds = %264, %63
  %266 = call %struct.TYPE_9__* (...) @FinishShader()
  store %struct.TYPE_9__* %266, %struct.TYPE_9__** %11, align 8
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %265, %47
  %271 = load i32, i32* %5, align 4
  ret i32 %271
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
