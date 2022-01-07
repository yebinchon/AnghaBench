; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_dag.c_emitcode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_dag.c_emitcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i64*, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32*)*, i32 (i8, i64, i32)* }

@src = common dso_local global i32 0, align 4
@codehead = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@errcnt = common dso_local global i64 0, align 8
@glevel = common dso_local global i32 0, align 4
@IR = common dso_local global %struct.TYPE_14__* null, align 8
@LOCAL = common dso_local global i64 0, align 8
@CODE = common dso_local global i32 0, align 4
@typestab = common dso_local global i32 0, align 4
@LIT = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emitcode() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @src, align 4
  store i32 %6, i32* %2, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @codehead, i32 0, i32 0), align 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %1, align 8
  br label %8

8:                                                ; preds = %258, %0
  %9 = load i64, i64* @errcnt, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %262

16:                                               ; preds = %14
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %255 [
    i32 136, label %20
    i32 135, label %21
    i32 134, label %49
    i32 133, label %105
    i32 132, label %130
    i32 131, label %130
    i32 130, label %130
    i32 129, label %146
    i32 128, label %166
  ]

20:                                               ; preds = %16
  br label %257

21:                                               ; preds = %16
  %22 = load i32, i32* @glevel, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i32 (i8, i64, i32)*, i32 (i8, i64, i32)** %26, align 8
  %28 = icmp ne i32 (i8, i64, i32)* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 4
  %32 = load i32 (i8, i64, i32)*, i32 (i8, i64, i32)** %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LOCAL, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %32(i8 signext 123, i64 %39, i32 %44)
  %46 = load i32, i32* @CODE, align 4
  %47 = call i32 @swtoseg(i32 %46)
  br label %48

48:                                               ; preds = %29, %24, %21
  br label %257

49:                                               ; preds = %16
  %50 = load i32, i32* @glevel, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %104

52:                                               ; preds = %49
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = load i32 (i8, i64, i32)*, i32 (i8, i64, i32)** %54, align 8
  %56 = icmp ne i32 (i8, i64, i32)* %55, null
  br i1 %56, label %57, label %104

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %3, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @typestab, align 4
  %73 = call i32 @foreach(i32 %66, i64 %71, i32 %72, i32* null)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @typestab, align 4
  %85 = call i32 @foreach(i32 %78, i64 %83, i32 %84, i32* null)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  %88 = load i32 (i8, i64, i32)*, i32 (i8, i64, i32)** %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LOCAL, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %88(i8 signext 125, i64 %95, i32 %100)
  %102 = load i32, i32* @CODE, align 4
  %103 = call i32 @swtoseg(i32 %102)
  br label %104

104:                                              ; preds = %57, %52, %49
  br label %257

105:                                              ; preds = %16
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* @src, align 4
  %111 = load i32, i32* @glevel, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %105
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i32 (i32*)*, i32 (i32*)** %115, align 8
  %117 = icmp ne i32 (i32*)* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = load i32 (i32*)*, i32 (i32*)** %120, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = call i32 %121(i32* %125)
  %127 = load i32, i32* @CODE, align 4
  %128 = call i32 @swtoseg(i32 %127)
  br label %129

129:                                              ; preds = %118, %113, %105
  br label %257

130:                                              ; preds = %16, %16, %16
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32 (i32)*, i32 (i32)** %138, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 %139(i32 %143)
  br label %145

145:                                              ; preds = %136, %130
  br label %257

146:                                              ; preds = %16
  %147 = load i32, i32* @glevel, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %146
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32 (i32)*, i32 (i32)** %151, align 8
  %153 = icmp ne i32 (i32)* %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32 (i32)*, i32 (i32)** %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %157(i32 %161)
  %163 = load i32, i32* @CODE, align 4
  %164 = call i32 @swtoseg(i32 %163)
  br label %165

165:                                              ; preds = %154, %149, %146
  br label %257

166:                                              ; preds = %16
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @LIT, align 4
  %173 = call i32 @defglobal(i32 %171, i32 %172)
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32 (i32)*, i32 (i32)** %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @equated(i32 %183)
  %185 = call i32 %176(i32 %184)
  store i32 1, i32* %4, align 4
  br label %186

186:                                              ; preds = %249, %166
  %187 = load i32, i32* %4, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %187, %192
  br i1 %193, label %194, label %252

194:                                              ; preds = %186
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %199, i64 %202
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %5, align 8
  br label %205

205:                                              ; preds = %218, %194
  %206 = load i64, i64* %5, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %5, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %4, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %207, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %205
  %219 = load i64, i64* %5, align 8
  %220 = load i64, i64* @LONG_MAX, align 8
  %221 = icmp slt i64 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32 (i32)*, i32 (i32)** %225, align 8
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @equated(i32 %231)
  %233 = call i32 %226(i32 %232)
  br label %205

234:                                              ; preds = %205
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i32 (i32)*, i32 (i32)** %236, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @equated(i32 %246)
  %248 = call i32 %237(i32 %247)
  br label %249

249:                                              ; preds = %234
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %4, align 4
  br label %186

252:                                              ; preds = %186
  %253 = load i32, i32* @CODE, align 4
  %254 = call i32 @swtoseg(i32 %253)
  br label %257

255:                                              ; preds = %16
  %256 = call i32 @assert(i32 0)
  br label %257

257:                                              ; preds = %255, %252, %165, %145, %129, %104, %48, %20
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %260, align 8
  store %struct.TYPE_12__* %261, %struct.TYPE_12__** %1, align 8
  br label %8

262:                                              ; preds = %14
  %263 = load i32, i32* %2, align 4
  store i32 %263, i32* @src, align 4
  ret void
}

declare dso_local i32 @swtoseg(i32) #1

declare dso_local i32 @foreach(i32, i64, i32, i32*) #1

declare dso_local i32 @defglobal(i32, i32) #1

declare dso_local i32 @equated(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
