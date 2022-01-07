; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_scriplib.c_GetToken.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_scriplib.c_GetToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i64, i32* }

@script = common dso_local global %struct.TYPE_2__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@tokenready = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Line %i is incomplete\0A\00", align 1
@scriptline = common dso_local global i64 0, align 8
@token = common dso_local global i8* null, align 8
@MAXTOKEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Token too large on line %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"$include\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetToken(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i8*, i8** @qfalse, align 8
  store i8* %13, i8** %2, align 8
  br label %331

14:                                               ; preds = %7
  %15 = load i8*, i8** @tokenready, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** @qfalse, align 8
  store i8* %18, i8** @tokenready, align 8
  %19 = load i8*, i8** @qtrue, align 8
  store i8* %19, i8** %2, align 8
  br label %331

20:                                               ; preds = %14
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp uge i32* %23, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %20
  %34 = load i8*, i8** %3, align 8
  %35 = call i8* @EndOfScript(i8* %34)
  store i8* %35, i8** %2, align 8
  br label %331

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %219, %140, %36
  br label %38

38:                                               ; preds = %76, %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %42, 32
  br i1 %43, label %44, label %77

44:                                               ; preds = %38
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp uge i32* %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i8*, i8** %3, align 8
  %54 = call i8* @EndOfScript(i8* %53)
  store i8* %54, i8** %2, align 8
  br label %331

55:                                               ; preds = %44
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %57, align 8
  %60 = load i32, i32* %58, align 4
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load i8*, i8** %3, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @scriptline, align 8
  %67 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* @scriptline, align 8
  br label %76

76:                                               ; preds = %68, %55
  br label %38

77:                                               ; preds = %38
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp uge i32* %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i8*, i8** %3, align 8
  %87 = call i8* @EndOfScript(i8* %86)
  store i8* %87, i8** %2, align 8
  br label %331

88:                                               ; preds = %77
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 59
  br i1 %93, label %114, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 35
  br i1 %99, label %114, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 47
  br i1 %106, label %107, label %148

107:                                              ; preds = %100
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 47
  br i1 %113, label %114, label %148

114:                                              ; preds = %107, %94, %88
  %115 = load i8*, i8** %3, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* @scriptline, align 8
  %119 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %139, %120
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %123, align 8
  %126 = load i32, i32* %124, align 4
  %127 = icmp ne i32 %126, 10
  br i1 %127, label %128, label %140

128:                                              ; preds = %121
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp uge i32* %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i8*, i8** %3, align 8
  %138 = call i8* @EndOfScript(i8* %137)
  store i8* %138, i8** %2, align 8
  br label %331

139:                                              ; preds = %128
  br label %121

140:                                              ; preds = %121
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* @scriptline, align 8
  br label %37

148:                                              ; preds = %107, %100
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 47
  br i1 %154, label %155, label %224

155:                                              ; preds = %148
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 42
  br i1 %161, label %162, label %224

162:                                              ; preds = %155
  %163 = load i8*, i8** %3, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* @scriptline, align 8
  %167 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32* %172, i32** %170, align 8
  br label %173

173:                                              ; preds = %218, %168
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 42
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 47
  br label %187

187:                                              ; preds = %180, %173
  %188 = phi i1 [ false, %173 ], [ %186, %180 ]
  br i1 %188, label %189, label %219

189:                                              ; preds = %187
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 10
  br i1 %194, label %195, label %203

195:                                              ; preds = %189
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %197, align 8
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* @scriptline, align 8
  br label %203

203:                                              ; preds = %195, %189
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %205, align 8
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = icmp uge i32* %210, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %203
  %216 = load i8*, i8** %3, align 8
  %217 = call i8* @EndOfScript(i8* %216)
  store i8* %217, i8** %2, align 8
  br label %331

218:                                              ; preds = %203
  br label %173

219:                                              ; preds = %187
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  store i32* %223, i32** %221, align 8
  br label %37

224:                                              ; preds = %155, %148
  %225 = load i8*, i8** @token, align 8
  store i8* %225, i8** %4, align 8
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 34
  br i1 %230, label %231, label %274

231:                                              ; preds = %224
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %233, align 8
  br label %236

236:                                              ; preds = %268, %231
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 34
  br i1 %241, label %242, label %269

242:                                              ; preds = %236
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %244, align 8
  %247 = load i32, i32* %245, align 4
  %248 = trunc i32 %247 to i8
  %249 = load i8*, i8** %4, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %4, align 8
  store i8 %248, i8* %249, align 1
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = icmp eq i32* %253, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %242
  br label %269

259:                                              ; preds = %242
  %260 = load i8*, i8** %4, align 8
  %261 = load i8*, i8** @token, align 8
  %262 = load i64, i64* @MAXTOKEN, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  %264 = icmp eq i8* %260, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load i64, i64* @scriptline, align 8
  %267 = call i32 @Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %266)
  br label %268

268:                                              ; preds = %265, %259
  br label %236

269:                                              ; preds = %258, %236
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %271, align 8
  br label %317

274:                                              ; preds = %224
  br label %275

275:                                              ; preds = %315, %274
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %278, align 4
  %280 = icmp sgt i32 %279, 32
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 59
  br label %287

287:                                              ; preds = %281, %275
  %288 = phi i1 [ false, %275 ], [ %286, %281 ]
  br i1 %288, label %289, label %316

289:                                              ; preds = %287
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %291, align 8
  %294 = load i32, i32* %292, align 4
  %295 = trunc i32 %294 to i8
  %296 = load i8*, i8** %4, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %4, align 8
  store i8 %295, i8* %296, align 1
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = icmp eq i32* %300, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %289
  br label %316

306:                                              ; preds = %289
  %307 = load i8*, i8** %4, align 8
  %308 = load i8*, i8** @token, align 8
  %309 = load i64, i64* @MAXTOKEN, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  %311 = icmp eq i8* %307, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %306
  %313 = load i64, i64* @scriptline, align 8
  %314 = call i32 @Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %313)
  br label %315

315:                                              ; preds = %312, %306
  br label %275

316:                                              ; preds = %305, %287
  br label %317

317:                                              ; preds = %316, %269
  %318 = load i8*, i8** %4, align 8
  store i8 0, i8* %318, align 1
  %319 = load i8*, i8** @token, align 8
  %320 = call i32 @strcmp(i8* %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %317
  %323 = load i8*, i8** @qfalse, align 8
  %324 = call i8* @GetToken(i8* %323)
  %325 = load i8*, i8** @token, align 8
  %326 = call i32 @AddScriptToStack(i8* %325, i32 0)
  %327 = load i8*, i8** %3, align 8
  %328 = call i8* @GetToken(i8* %327)
  store i8* %328, i8** %2, align 8
  br label %331

329:                                              ; preds = %317
  %330 = load i8*, i8** @qtrue, align 8
  store i8* %330, i8** %2, align 8
  br label %331

331:                                              ; preds = %329, %322, %215, %136, %85, %52, %33, %17, %12
  %332 = load i8*, i8** %2, align 8
  ret i8* %332
}

declare dso_local i8* @EndOfScript(i8*) #1

declare dso_local i32 @Error(i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @AddScriptToStack(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
