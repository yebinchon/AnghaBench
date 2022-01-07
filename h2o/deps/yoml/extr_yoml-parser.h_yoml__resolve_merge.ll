; ModuleID = '/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__resolve_merge.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__resolve_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_15__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"value of the merge key MUST be a mapping or a sequence of mappings\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__**, %struct.TYPE_22__*, %struct.TYPE_20__*)* @yoml__resolve_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yoml__resolve_merge(%struct.TYPE_19__** %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__**, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_19__** %0, %struct.TYPE_19__*** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %11 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %257 [
    i32 130, label %15
    i32 129, label %16
    i32 131, label %45
    i32 128, label %255
  ]

15:                                               ; preds = %3
  br label %257

16:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %18, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %17
  %27 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %32, i64 %33
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = call i32 @yoml__resolve_merge(%struct.TYPE_19__** %34, %struct.TYPE_22__* %35, %struct.TYPE_20__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %258

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %17

44:                                               ; preds = %17
  br label %257

45:                                               ; preds = %3
  %46 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %254

53:                                               ; preds = %45
  %54 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %250, %53
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %8, align 8
  %63 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %74 = call i32 @yoml__resolve_merge(%struct.TYPE_19__** %71, %struct.TYPE_22__* %72, %struct.TYPE_20__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %258

77:                                               ; preds = %60
  %78 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = call i32 @yoml__resolve_merge(%struct.TYPE_19__** %86, %struct.TYPE_22__* %87, %struct.TYPE_20__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %258

92:                                               ; preds = %77
  %93 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %249

106:                                              ; preds = %92
  %107 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @strcmp(i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %249

122:                                              ; preds = %106
  %123 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i64 %129
  %131 = bitcast %struct.TYPE_21__* %10 to i8*
  %132 = bitcast %struct.TYPE_21__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 16, i1 false)
  %133 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = load i64, i64* %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i64 %139
  %141 = ptrtoint %struct.TYPE_21__* %140 to i32
  %142 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i64 1
  %151 = ptrtoint %struct.TYPE_21__* %150 to i32
  %152 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %8, align 8
  %159 = sub i64 %157, %158
  %160 = sub i64 %159, 1
  %161 = mul i64 %160, 16
  %162 = trunc i64 %161 to i32
  %163 = call i32 @memmove(i32 %141, i32 %151, i32 %162)
  %164 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, -1
  store i64 %170, i64* %168, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 129
  br i1 %175, label %176, label %227

176:                                              ; preds = %122
  store i64 0, i64* %9, align 8
  br label %177

177:                                              ; preds = %223, %176
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %178, %184
  br i1 %185, label %186, label %226

186:                                              ; preds = %177
  %187 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %188 = load i64, i64* %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %193, align 8
  %195 = load i64, i64* %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %194, i64 %195
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %196, align 8
  %198 = call i32 @yoml__merge(%struct.TYPE_19__** %187, i64 %188, %struct.TYPE_19__* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %186
  br label %201

201:                                              ; preds = %234, %200
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %203 = icmp ne %struct.TYPE_22__* %202, null
  br i1 %203, label %204, label %221

204:                                              ; preds = %201
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8** %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 8
  br label %221

221:                                              ; preds = %204, %201
  store i32 -1, i32* %4, align 4
  br label %258

222:                                              ; preds = %186
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %9, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %9, align 8
  br label %177

226:                                              ; preds = %177
  br label %236

227:                                              ; preds = %122
  %228 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  %229 = load i64, i64* %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %230, align 8
  %232 = call i32 @yoml__merge(%struct.TYPE_19__** %228, i64 %229, %struct.TYPE_19__* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  br label %201

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %226
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %237, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @yoml_free(%struct.TYPE_19__* %238, i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %243, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @yoml_free(%struct.TYPE_19__* %244, i32 %247)
  br label %249

249:                                              ; preds = %236, %106, %92
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %8, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %60, label %253

253:                                              ; preds = %250
  br label %254

254:                                              ; preds = %253, %45
  br label %257

255:                                              ; preds = %3
  %256 = call i32 @assert(i32 0)
  br label %257

257:                                              ; preds = %3, %255, %254, %44, %15
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %257, %221, %91, %76, %39
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @strcmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @yoml__merge(%struct.TYPE_19__**, i64, %struct.TYPE_19__*) #1

declare dso_local i32 @yoml_free(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
