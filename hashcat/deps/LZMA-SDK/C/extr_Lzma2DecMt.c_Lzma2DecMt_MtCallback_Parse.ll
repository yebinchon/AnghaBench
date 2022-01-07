; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2DecMt_MtCallback_Parse.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2DecMt_MtCallback_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i64, i8*, i64 }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_15__, i32, i64, %struct.TYPE_14__, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i8*, %struct.TYPE_20__, i32, i64, i64, %struct.TYPE_13__, i8* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Parse\00", align 1
@MTDEC_PARSE_CONTINUE = common dso_local global i8* null, align 8
@True = common dso_local global i8* null, align 8
@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@LZMA2_PARSE_STATUS_NEW_CHUNK = common dso_local global i32 0, align 4
@LZMA2_PARSE_STATUS_NEW_BLOCK = common dso_local global i32 0, align 4
@LZMA_STATUS_NOT_FINISHED = common dso_local global i32 0, align 4
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i32 0, align 4
@MTDEC_PARSE_OVERFLOW = common dso_local global i8* null, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@MTDEC_PARSE_NEW = common dso_local global i8* null, align 8
@MTDEC_PARSE_END = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_17__*)* @Lzma2DecMt_MtCallback_Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Lzma2DecMt_MtCallback_Parse(i8* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %7, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i64 %29
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PRF_STR_INT_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i8*, i8** @MTDEC_PARSE_CONTINUE, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %95

43:                                               ; preds = %3
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 9
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %74, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 4
  %51 = call i32 @Lzma2Dec_Construct(%struct.TYPE_20__* %50)
  %52 = load i8*, i8** @True, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 9
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 8
  %57 = call i32 @AlignOffsetAlloc_CreateVTable(%struct.TYPE_13__* %56)
  store i32 12, i32* %9, align 4
  store i32 7, i32* %10, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i32 12, i32* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 2368
  %63 = and i32 %62, 3968
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %48, %43
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  %77 = call i32 @Lzma2Dec_Init(%struct.TYPE_20__* %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @LZMA_STATUS_NOT_SPECIFIED, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** @MTDEC_PARSE_CONTINUE, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 6
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @SZ_OK, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %74, %3
  store i32 0, i32* %13, align 4
  %96 = load i8*, i8** @True, align 8
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %14, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %15, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %95
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = sub i64 %109, %112
  store i64 %113, i64* %16, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %16, align 8
  %116 = icmp uge i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %106
  %118 = load i64, i64* %16, align 8
  store i64 %118, i64* %15, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* @False, align 4
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %123, %117
  br label %126

126:                                              ; preds = %125, %106
  br label %127

127:                                              ; preds = %126, %95
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load i32, i32* @False, align 4
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %206, %197, %185, %127
  %135 = load i32, i32* %17, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %135, %138
  store i32 %139, i32* %20, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 4
  %142 = load i64, i64* %15, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub i64 %142, %147
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %151, %154
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @Lzma2Dec_Parse(%struct.TYPE_20__* %141, i64 %148, i32 %155, i32* %20, i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @LZMA2_PARSE_STATUS_NEW_CHUNK, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %134
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = sub i64 %174, %179
  %181 = icmp ugt i64 %170, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %166
  %183 = load i8*, i8** @True, align 8
  %184 = ptrtoint i8* %183 to i32
  store i32 %184, i32* %12, align 4
  br label %230

185:                                              ; preds = %166
  br label %134

186:                                              ; preds = %134
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* @LZMA2_PARSE_STATUS_NEW_BLOCK, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %216

190:                                              ; preds = %186
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %134

198:                                              ; preds = %190
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp uge i64 %203, 16384
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  br label %230

206:                                              ; preds = %198
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %19, align 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %18, align 4
  br label %134

216:                                              ; preds = %186
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i8*, i8** @True, align 8
  %225 = ptrtoint i8* %224 to i32
  store i32 %225, i32* %12, align 4
  br label %230

226:                                              ; preds = %220, %216
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 4
  %229 = call i32 @Lzma2Dec_GetUnpackExtra(%struct.TYPE_20__* %228)
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %226, %223, %205, %182
  %231 = load i32, i32* %19, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %257

233:                                              ; preds = %230
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @LZMA2_PARSE_STATUS_NEW_BLOCK, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %257

237:                                              ; preds = %233
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @LZMA_STATUS_FINISHED_WITH_MARK, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %237
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* @LZMA_STATUS_NOT_SPECIFIED, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %257

245:                                              ; preds = %241
  %246 = load i32, i32* @LZMA2_PARSE_STATUS_NEW_BLOCK, align 4
  store i32 %246, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %247 = load i32, i32* %19, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  store i64 %248, i64* %252, align 8
  %253 = load i32, i32* %18, align 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* @False, align 4
  store i32 %256, i32* %12, align 4
  br label %257

257:                                              ; preds = %245, %241, %237, %233, %230
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 8
  %268 = load i32, i32* %12, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %257
  %271 = load i8*, i8** @MTDEC_PARSE_OVERFLOW, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 3
  store i8* %271, i8** %273, align 8
  br label %339

274:                                              ; preds = %257
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %21, align 8
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %332

283:                                              ; preds = %274
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @LZMA2_PARSE_STATUS_NEW_BLOCK, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %299

287:                                              ; preds = %283
  %288 = load i8*, i8** @MTDEC_PARSE_NEW, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 3
  store i8* %288, i8** %290, align 8
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %292, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %296, align 8
  br label %326

299:                                              ; preds = %283
  %300 = load i8*, i8** @MTDEC_PARSE_END, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 3
  store i8* %300, i8** %302, align 8
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* @LZMA_STATUS_FINISHED_WITH_MARK, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %325

306:                                              ; preds = %299
  %307 = load i32, i32* %13, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %324

309:                                              ; preds = %306
  %310 = load i64, i64* %15, align 8
  %311 = load i64, i64* %21, align 8
  %312 = sub i64 %310, %311
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %22, align 4
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* %13, align 4
  %316 = icmp sgt i32 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %309
  %318 = load i32, i32* %13, align 4
  store i32 %318, i32* %22, align 4
  br label %319

319:                                              ; preds = %317, %309
  %320 = load i32, i32* %22, align 4
  %321 = sext i32 %320 to i64
  %322 = load i64, i64* %21, align 8
  %323 = add i64 %322, %321
  store i64 %323, i64* %21, align 8
  br label %324

324:                                              ; preds = %319, %306
  br label %325

325:                                              ; preds = %324, %299
  br label %326

326:                                              ; preds = %325, %287
  %327 = load i64, i64* %21, align 8
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = add i64 %330, %327
  store i64 %331, i64* %329, align 8
  br label %332

332:                                              ; preds = %326, %274
  %333 = load i64, i64* %21, align 8
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 2
  store i64 %333, i64* %335, align 8
  %336 = load i64, i64* %21, align 8
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 1
  store i64 %336, i64* %338, align 8
  br label %339

339:                                              ; preds = %332, %270
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 3
  store i8* %342, i8** %344, align 8
  ret void
}

declare dso_local i32 @PRF_STR_INT_2(i8*, i32, i32) #1

declare dso_local i32 @Lzma2Dec_Construct(%struct.TYPE_20__*) #1

declare dso_local i32 @AlignOffsetAlloc_CreateVTable(%struct.TYPE_13__*) #1

declare dso_local i32 @Lzma2Dec_Init(%struct.TYPE_20__*) #1

declare dso_local i32 @Lzma2Dec_Parse(%struct.TYPE_20__*, i64, i32, i32*, i32) #1

declare dso_local i32 @Lzma2Dec_GetUnpackExtra(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
