; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_lex.c_gettokens.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_lex.c_gettokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, i32*, i32, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32, i32, i32, i64, i64 }

@cursource = common dso_local global %struct.TYPE_13__* null, align 8
@INS = common dso_local global i32 0, align 4
@UNCLASS = common dso_local global i32 0, align 4
@START = common dso_local global i32 0, align 4
@bigfsm = common dso_local global i32** null, align 8
@NAME = common dso_local global i32 0, align 4
@QBSBIT = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Lexical botch in cpp\00", align 1
@END = common dso_local global i32 0, align 4
@NL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"No newline at end of file\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unterminated string or char const\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"EOF in string or char constant\00", align 1
@COM2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"EOF inside comment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettokens(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cursource, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %10, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %93

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp uge i32* %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %39 = call i32 @fillbuf(%struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  store i32* %42, i32** %9, align 8
  br label %92

45:                                               ; preds = %24
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @INS, align 4
  %51 = mul nsw i32 3, %50
  %52 = sdiv i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = icmp uge i32* %46, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %45
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32*, i32** %9, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memmove(i32* %59, i32* %60, i32 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = getelementptr inbounds i32, i32* %74, i64 %82
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  store i32* %88, i32** %9, align 8
  br label %91

91:                                               ; preds = %56, %45
  br label %92

92:                                               ; preds = %91, %32
  br label %93

93:                                               ; preds = %92, %2
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %99
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %11, align 8
  store i32 1, i32* %12, align 4
  br label %101

101:                                              ; preds = %428, %93
  br label %102

102:                                              ; preds = %212, %163, %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %105 = icmp uge %struct.TYPE_12__* %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = call %struct.TYPE_12__* @growtokenrow(%struct.TYPE_11__* %110)
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %10, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 %117
  store %struct.TYPE_12__* %118, %struct.TYPE_12__** %11, align 8
  br label %119

119:                                              ; preds = %106, %102
  %120 = load i32, i32* @UNCLASS, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 5
  store i64 0, i64* %124, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* @START, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %414, %408, %283, %276, %269, %259, %240, %219, %147, %119
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %8, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %6, align 4
  %137 = load i32**, i32*** @bigfsm, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %7, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %133
  %148 = load i32, i32* %12, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %9, align 8
  store i32 1, i32* %12, align 4
  br label %133

152:                                              ; preds = %133
  %153 = load i32, i32* %7, align 4
  %154 = xor i32 %153, -1
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %275, %261, %152
  %156 = load i32, i32* %7, align 4
  %157 = and i32 %156, 127
  switch i32 %157, label %235 [
    i32 131, label %158
    i32 130, label %163
    i32 133, label %181
    i32 128, label %219
    i32 137, label %283
    i32 136, label %290
    i32 129, label %325
    i32 132, label %328
    i32 134, label %352
    i32 138, label %355
    i32 135, label %409
    i32 139, label %414
  ]

158:                                              ; preds = %155
  %159 = load i32, i32* %12, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %9, align 8
  store i32 1, i32* %12, align 4
  br label %163

163:                                              ; preds = %155, %158
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @GETACT(i32 %164)
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = ptrtoint i32* %168 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 1
  store %struct.TYPE_12__* %180, %struct.TYPE_12__** %10, align 8
  br label %102

181:                                              ; preds = %155
  %182 = load i32, i32* @NAME, align 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = ptrtoint i32* %185 to i64
  %190 = ptrtoint i32* %188 to i64
  %191 = sub i64 %189, %190
  %192 = sdiv exact i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %211

205:                                              ; preds = %181
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  br label %212

211:                                              ; preds = %181
  br label %212

212:                                              ; preds = %211, %205
  %213 = phi i32 [ %210, %205 ], [ 0, %211 ]
  %214 = call i32 @quicklook(i32 %200, i32 %213)
  %215 = load i32, i32* %14, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %14, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 1
  store %struct.TYPE_12__* %218, %struct.TYPE_12__** %10, align 8
  br label %102

219:                                              ; preds = %155
  %220 = load i32*, i32** %9, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = ptrtoint i32* %220 to i64
  %225 = ptrtoint i32* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 4
  %228 = trunc i64 %227 to i32
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = load i32*, i32** %9, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  store i32* %231, i32** %233, align 8
  %234 = load i32, i32* @START, align 4
  store i32 %234, i32* %7, align 4
  br label %133

235:                                              ; preds = %155
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @QBSBIT, align 4
  %238 = and i32 %236, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load i32, i32* %12, align 4
  %242 = load i32*, i32** %9, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32* %244, i32** %9, align 8
  store i32 1, i32* %12, align 4
  br label %133

245:                                              ; preds = %235
  %246 = load i32, i32* @QBSBIT, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %7, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %7, align 4
  %250 = load i32*, i32** %9, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  store i32* %250, i32** %252, align 8
  %253 = load i32, i32* %6, align 4
  %254 = icmp eq i32 %253, 63
  br i1 %254, label %255, label %262

255:                                              ; preds = %245
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %257 = call i32 @trigraph(%struct.TYPE_13__* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i32, i32* %8, align 4
  store i32 %260, i32* %7, align 4
  br label %133

261:                                              ; preds = %255
  br label %155

262:                                              ; preds = %245
  %263 = load i32, i32* %6, align 4
  %264 = icmp eq i32 %263, 92
  br i1 %264, label %265, label %276

265:                                              ; preds = %262
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %267 = call i32 @foldline(%struct.TYPE_13__* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %265
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 4
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %272, 1
  store i64 %273, i64* %271, align 8
  %274 = load i32, i32* %8, align 4
  store i32 %274, i32* %7, align 4
  br label %133

275:                                              ; preds = %265
  br label %155

276:                                              ; preds = %262
  %277 = load i32, i32* @WARNING, align 4
  %278 = call i32 @error(i32 %277, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %279 = load i32, i32* %12, align 4
  %280 = load i32*, i32** %9, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  store i32* %282, i32** %9, align 8
  store i32 1, i32* %12, align 4
  br label %133

283:                                              ; preds = %155
  %284 = load i32*, i32** %9, align 8
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  store i32* %284, i32** %286, align 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cursource, align 8
  %288 = call i32 @fillbuf(%struct.TYPE_13__* %287)
  %289 = load i32, i32* %8, align 4
  store i32 %289, i32* %7, align 4
  br label %133

290:                                              ; preds = %155
  %291 = load i32, i32* @END, align 4
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 8
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 2
  store i32 0, i32* %295, align 4
  %296 = load i32*, i32** %9, align 8
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  store i32* %296, i32** %298, align 8
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %301, align 8
  %303 = icmp ne %struct.TYPE_12__* %299, %302
  br i1 %303, label %304, label %319

304:                                              ; preds = %290
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i64 -1
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @NL, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %319

311:                                              ; preds = %304
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cursource, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, -1
  br i1 %315, label %316, label %319

316:                                              ; preds = %311
  %317 = load i32, i32* @WARNING, align 4
  %318 = call i32 @error(i32 %317, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %319

319:                                              ; preds = %316, %311, %304, %290
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i64 1
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  store %struct.TYPE_12__* %321, %struct.TYPE_12__** %323, align 8
  %324 = load i32, i32* %14, align 4
  store i32 %324, i32* %3, align 4
  br label %446

325:                                              ; preds = %155
  %326 = load i32, i32* @ERROR, align 4
  %327 = call i32 @error(i32 %326, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %328

328:                                              ; preds = %155, %325
  %329 = load i32*, i32** %9, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  store i32* %329, i32** %331, align 8
  %332 = load i32, i32* @NL, align 4
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 8
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 2
  store i32 1, i32* %336, align 4
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  store i32 0, i32* %338, align 8
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = add nsw i64 %341, 1
  store i64 %342, i64* %340, align 8
  %343 = load i32*, i32** %9, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 0
  store i32* %344, i32** %346, align 8
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i64 1
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 1
  store %struct.TYPE_12__* %348, %struct.TYPE_12__** %350, align 8
  %351 = load i32, i32* %14, align 4
  store i32 %351, i32* %3, align 4
  br label %446

352:                                              ; preds = %155
  %353 = load i32, i32* @FATAL, align 4
  %354 = call i32 @error(i32 %353, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %427

355:                                              ; preds = %155
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 4
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %358, 1
  store i64 %359, i64* %357, align 8
  %360 = load i32, i32* @COM2, align 4
  store i32 %360, i32* %7, align 4
  %361 = load i32, i32* %12, align 4
  %362 = load i32*, i32** %9, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i32, i32* %362, i64 %363
  store i32* %364, i32** %9, align 8
  store i32 1, i32* %12, align 4
  %365 = load i32*, i32** %9, align 8
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 2
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* @INS, align 4
  %370 = mul nsw i32 7, %369
  %371 = sdiv i32 %370, 8
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %368, i64 %372
  %374 = icmp uge i32* %365, %373
  br i1 %374, label %375, label %408

375:                                              ; preds = %355
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = load i32*, i32** %9, align 8
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 4
  %384 = load i32*, i32** %9, align 8
  %385 = ptrtoint i32* %383 to i64
  %386 = ptrtoint i32* %384 to i64
  %387 = sub i64 %385, %386
  %388 = sdiv exact i64 %387, 4
  %389 = trunc i64 %388 to i32
  %390 = call i32 @memmove(i32* %378, i32* %379, i32 %389)
  %391 = load i32*, i32** %9, align 8
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = ptrtoint i32* %391 to i64
  %396 = ptrtoint i32* %394 to i64
  %397 = sub i64 %395, %396
  %398 = sdiv exact i64 %397, 4
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = sub i64 0, %398
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  store i32* %403, i32** %400, align 8
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 1
  store i32* %407, i32** %9, align 8
  br label %408

408:                                              ; preds = %375, %355
  br label %133

409:                                              ; preds = %155
  %410 = load i32, i32* @WARNING, align 4
  %411 = call i32 @error(i32 %410, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %412 = load i32*, i32** %9, align 8
  %413 = getelementptr inbounds i32, i32* %412, i32 -1
  store i32* %413, i32** %9, align 8
  br label %414

414:                                              ; preds = %155, %409
  %415 = load i32*, i32** %9, align 8
  %416 = getelementptr inbounds i32, i32* %415, i32 1
  store i32* %416, i32** %9, align 8
  %417 = load i32*, i32** %9, align 8
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 0
  store i32* %417, i32** %419, align 8
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 -1
  store i32 32, i32* %423, align 4
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 1
  store i32 1, i32* %425, align 8
  %426 = load i32, i32* @START, align 4
  store i32 %426, i32* %7, align 4
  br label %133

427:                                              ; preds = %352
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %12, align 4
  %430 = load i32*, i32** %9, align 8
  %431 = sext i32 %429 to i64
  %432 = getelementptr inbounds i32, i32* %430, i64 %431
  store i32* %432, i32** %9, align 8
  store i32 1, i32* %12, align 4
  %433 = load i32*, i32** %9, align 8
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = ptrtoint i32* %433 to i64
  %438 = ptrtoint i32* %436 to i64
  %439 = sub i64 %437, %438
  %440 = sdiv exact i64 %439, 4
  %441 = trunc i64 %440 to i32
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 2
  store i32 %441, i32* %443, align 4
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 1
  store %struct.TYPE_12__* %445, %struct.TYPE_12__** %10, align 8
  br label %101

446:                                              ; preds = %328, %319
  %447 = load i32, i32* %3, align 4
  ret i32 %447
}

declare dso_local i32 @fillbuf(%struct.TYPE_13__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @growtokenrow(%struct.TYPE_11__*) #1

declare dso_local i32 @GETACT(i32) #1

declare dso_local i32 @quicklook(i32, i32) #1

declare dso_local i32 @trigraph(%struct.TYPE_13__*) #1

declare dso_local i32 @foldline(%struct.TYPE_13__*) #1

declare dso_local i32 @error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
