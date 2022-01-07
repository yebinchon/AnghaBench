; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Callback_Write.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Callback_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, %struct.TYPE_12__, i8*, i8*, i64, i64, i32, i8*, i8*, %struct.TYPE_15__, %struct.TYPE_13__, i32, i64, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i64, i8*, i32, i32, i32, i8* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_14__, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@False = common dso_local global i8* null, align 8
@True = common dso_local global i8* null, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i64 0, align 8
@XZDECMT_STREAM_WRITE_STEP = common dso_local global i64 0, align 8
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@MTDEC_PARSE_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Write MTDEC_PARSE_END\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PostSingle\00", align 1
@CODER_FINISH_END = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@XZ_STATE_STREAM_HEADER = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@CODER_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i8*, i32*, i64, i8**, i8**)* @XzDecMt_Callback_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XzDecMt_Callback_Write(i8* %0, i32 %1, i8* %2, i32* %3, i64 %4, i8** %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %16, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 17
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %46
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %17, align 8
  %48 = load i8*, i8** @False, align 8
  %49 = load i8**, i8*** %14, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** @True, align 8
  %51 = load i8**, i8*** %15, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %7
  %55 = load i64, i64* @SZ_OK, align 8
  store i64 %55, i64* %8, align 8
  br label %618

56:                                               ; preds = %7
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 12
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i64, i64* @SZ_OK, align 8
  store i64 %78, i64* %8, align 8
  br label %618

79:                                               ; preds = %62
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i64, i64* @SZ_OK, align 8
  store i64 %85, i64* %8, align 8
  br label %618

86:                                               ; preds = %79
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %89
  store i64 %94, i64* %92, align 8
  %95 = load i8*, i8** @False, align 8
  %96 = load i8**, i8*** %15, align 8
  store i8* %95, i8** %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %19, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 12
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %20, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 6
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %131, label %107

107:                                              ; preds = %86
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 13
  %110 = call i32 @XzUnpacker_PrepareToRandomBlockDecoding(%struct.TYPE_15__* %109)
  %111 = load i8*, i8** @False, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 13
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 5
  store i8* %111, i8** %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 10
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 13
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 4
  store i32 %118, i32* %121, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 13
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 4
  %128 = load i8*, i8** @True, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %107, %86
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 10
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 13
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 13
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @XzUnpacker_UpdateIndex(%struct.TYPE_15__* %140, i32 %143, i64 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %19, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %195

153:                                              ; preds = %131
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 14
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  %160 = load i32*, i32** %20, align 8
  %161 = load i64, i64* %19, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %19, align 8
  %167 = sub i64 %165, %166
  %168 = call i32 @memset(i32* %162, i32 0, i64 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %19, align 8
  br label %172

172:                                              ; preds = %159, %153
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @SZ_OK, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %194

178:                                              ; preds = %172
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 8
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  br label %193

189:                                              ; preds = %178
  %190 = load i64, i64* @SZ_ERROR_DATA, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %189, %185
  br label %194

194:                                              ; preds = %193, %172
  br label %195

195:                                              ; preds = %194, %131
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @SZ_OK, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %8, align 8
  br label %618

205:                                              ; preds = %195
  %206 = load i64, i64* @SZ_OK, align 8
  store i64 %206, i64* %18, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 16
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %205
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = sub i64 %214, %217
  store i64 %218, i64* %21, align 8
  %219 = load i64, i64* %19, align 8
  %220 = load i64, i64* %21, align 8
  %221 = icmp ugt i64 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %211
  %223 = load i64, i64* %21, align 8
  store i64 %223, i64* %19, align 8
  br label %224

224:                                              ; preds = %222, %211
  br label %225

225:                                              ; preds = %224, %205
  br label %226

226:                                              ; preds = %274, %225
  %227 = load i64, i64* %19, align 8
  store i64 %227, i64* %22, align 8
  %228 = load i64, i64* %22, align 8
  %229 = load i64, i64* @XZDECMT_STREAM_WRITE_STEP, align 8
  %230 = icmp ugt i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = load i64, i64* @XZDECMT_STREAM_WRITE_STEP, align 8
  store i64 %232, i64* %22, align 8
  br label %233

233:                                              ; preds = %231, %226
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 15
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %20, align 8
  %238 = load i64, i64* %22, align 8
  %239 = call i64 @ISeqOutStream_Write(i32 %236, i32* %237, i64 %238)
  store i64 %239, i64* %23, align 8
  %240 = load i64, i64* %23, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, %240
  store i64 %244, i64* %242, align 8
  %245 = load i64, i64* %23, align 8
  %246 = load i64, i64* %22, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %233
  %249 = load i64, i64* @SZ_ERROR_WRITE, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 2
  store i64 %249, i64* %251, align 8
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %18, align 8
  br label %275

255:                                              ; preds = %233
  %256 = load i64, i64* %22, align 8
  %257 = load i32*, i32** %20, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 %256
  store i32* %258, i32** %20, align 8
  %259 = load i64, i64* %22, align 8
  %260 = load i64, i64* %19, align 8
  %261 = sub i64 %260, %259
  store i64 %261, i64* %19, align 8
  %262 = load i64, i64* %19, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %255
  br label %275

265:                                              ; preds = %255
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 7
  %269 = call i64 @MtProgress_ProgressAdd(%struct.TYPE_18__* %268, i32 0, i32 0)
  store i64 %269, i64* %18, align 8
  %270 = load i64, i64* %18, align 8
  %271 = load i64, i64* @SZ_OK, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %265
  br label %275

274:                                              ; preds = %265
  br label %226

275:                                              ; preds = %273, %264, %248
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @SZ_OK, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %294

281:                                              ; preds = %275
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 14
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %281
  %288 = load i32, i32* %10, align 4
  %289 = zext i32 %288 to i64
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 0
  store i64 %289, i64* %291, align 8
  %292 = load i64, i64* %18, align 8
  store i64 %292, i64* %8, align 8
  br label %618

293:                                              ; preds = %281
  br label %294

294:                                              ; preds = %293, %275
  %295 = load i64, i64* %18, align 8
  %296 = call i32 @RINOK(i64 %295)
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %299, %302
  br i1 %303, label %312, label %304

304:                                              ; preds = %294
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 5
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %307, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %304, %294
  %313 = load i32, i32* %10, align 4
  %314 = zext i32 %313 to i64
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  store i64 %314, i64* %316, align 8
  %317 = load i64, i64* @SZ_OK, align 8
  store i64 %317, i64* %8, align 8
  br label %618

318:                                              ; preds = %304
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 6
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @MTDEC_PARSE_END, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %318
  %325 = load i8*, i8** @True, align 8
  %326 = load i8**, i8*** %14, align 8
  store i8* %325, i8** %326, align 8
  %327 = load i64, i64* @SZ_OK, align 8
  store i64 %327, i64* %8, align 8
  br label %618

328:                                              ; preds = %318
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = call i32 @PRF_STR_INT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %332)
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 7
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 0
  store i64 %337, i64* %341, align 8
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 13
  store %struct.TYPE_15__* %343, %struct.TYPE_15__** %24, align 8
  %344 = load i64, i64* %13, align 8
  %345 = call i32 @PRF_STR_INT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %344)
  %346 = load i64, i64* %13, align 8
  store i64 %346, i64* %25, align 8
  store i64 0, i64* %27, align 8
  %347 = load i8*, i8** @True, align 8
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 1
  store i8* %347, i8** %349, align 8
  %350 = load i8*, i8** @True, align 8
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 12
  store i8* %350, i8** %352, align 8
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 7
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %328
  %358 = load i8*, i8** @True, align 8
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 11
  store i8* %358, i8** %360, align 8
  %361 = load i64, i64* @SZ_OK, align 8
  store i64 %361, i64* %8, align 8
  br label %618

362:                                              ; preds = %328
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %364 = load i32*, i32** %12, align 8
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @CODER_FINISH_END, align 4
  %370 = call i64 @XzUnpacker_Code(%struct.TYPE_15__* %363, i32* null, i64* %27, i32* %364, i64* %25, i32 %368, i32 %369, i64* %26)
  store i64 %370, i64* %28, align 8
  %371 = load i64, i64* %26, align 8
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 8
  store i64 %371, i64* %373, align 8
  %374 = load i64, i64* %28, align 8
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 9
  store i64 %374, i64* %376, align 8
  %377 = load i64, i64* %25, align 8
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = add i64 %381, %377
  store i64 %382, i64* %380, align 8
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 7
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i32 0, i32 0
  store i64 %386, i64* %390, align 8
  %391 = load i64, i64* %28, align 8
  %392 = load i64, i64* @SZ_OK, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %362
  %395 = load i64, i64* @S_OK, align 8
  store i64 %395, i64* %8, align 8
  br label %618

396:                                              ; preds = %362
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @XZ_STATE_STREAM_HEADER, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %402, label %437

402:                                              ; preds = %396
  %403 = load i8*, i8** @True, align 8
  %404 = load i8**, i8*** %14, align 8
  store i8* %403, i8** %404, align 8
  %405 = load i8*, i8** @False, align 8
  %406 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 7
  store i8* %405, i8** %407, align 8
  %408 = load i8*, i8** @False, align 8
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 6
  store i8* %408, i8** %410, align 8
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 5
  %413 = call i32* @MtDec_GetCrossBuff(%struct.TYPE_12__* %412)
  store i32* %413, i32** %29, align 8
  %414 = load i32*, i32** %29, align 8
  %415 = icmp ne i32* %414, null
  br i1 %415, label %418, label %416

416:                                              ; preds = %402
  %417 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %417, i64* %8, align 8
  br label %618

418:                                              ; preds = %402
  %419 = load i32*, i32** %29, align 8
  %420 = load i32*, i32** %12, align 8
  %421 = load i64, i64* %25, align 8
  %422 = getelementptr inbounds i32, i32* %420, i64 %421
  %423 = load i64, i64* %13, align 8
  %424 = load i64, i64* %25, align 8
  %425 = sub i64 %423, %424
  %426 = call i32 @memcpy(i32* %419, i32* %422, i64 %425)
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 5
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 2
  store i64 0, i64* %429, align 8
  %430 = load i64, i64* %13, align 8
  %431 = load i64, i64* %25, align 8
  %432 = sub i64 %430, %431
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 5
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 3
  store i64 %432, i64* %435, align 8
  %436 = load i64, i64* @SZ_OK, align 8
  store i64 %436, i64* %8, align 8
  br label %618

437:                                              ; preds = %396
  %438 = load i64, i64* %26, align 8
  %439 = load i64, i64* @CODER_STATUS_NEEDS_MORE_INPUT, align 8
  %440 = icmp ne i64 %438, %439
  br i1 %440, label %441, label %443

441:                                              ; preds = %437
  %442 = load i64, i64* @E_FAIL, align 8
  store i64 %442, i64* %8, align 8
  br label %618

443:                                              ; preds = %437
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 5
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 8
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %443
  %450 = load i64, i64* @SZ_OK, align 8
  store i64 %450, i64* %8, align 8
  br label %618

451:                                              ; preds = %443
  %452 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %453 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %452, i32 0, i32 5
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %33, align 8
  %456 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %457 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %456, i32 0, i32 5
  %458 = call i32* @MtDec_GetCrossBuff(%struct.TYPE_12__* %457)
  store i32* %458, i32** %34, align 8
  %459 = load i32*, i32** %34, align 8
  %460 = icmp ne i32* %459, null
  br i1 %460, label %463, label %461

461:                                              ; preds = %451
  %462 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %462, i64* %8, align 8
  br label %618

463:                                              ; preds = %451
  store i64 0, i64* %30, align 8
  store i64 0, i64* %31, align 8
  %464 = load i32*, i32** %34, align 8
  store i32* %464, i32** %32, align 8
  br label %465

465:                                              ; preds = %617, %463
  %466 = load i64, i64* %30, align 8
  %467 = load i64, i64* %31, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %512

469:                                              ; preds = %465
  %470 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %471 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %470, i32 0, i32 5
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %511, label %475

475:                                              ; preds = %469
  store i64 0, i64* %30, align 8
  %476 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %477 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 4
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %31, align 8
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %481 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %480, i32 0, i32 10
  %482 = load i32, i32* %481, align 8
  %483 = load i32*, i32** %32, align 8
  %484 = bitcast i32* %483 to i8*
  %485 = call i64 @ISeqInStream_Read(i32 %482, i8* %484, i64* %31)
  %486 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %487 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %486, i32 0, i32 5
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 5
  store i64 %485, i64* %488, align 8
  %489 = load i64, i64* %31, align 8
  %490 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %491 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %490, i32 0, i32 5
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 6
  %493 = load i64, i64* %492, align 8
  %494 = add i64 %493, %489
  store i64 %494, i64* %492, align 8
  %495 = load i64, i64* %31, align 8
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %504, label %497

497:                                              ; preds = %475
  %498 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %499 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %498, i32 0, i32 5
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i32 0, i32 5
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* @SZ_OK, align 8
  %503 = icmp ne i64 %501, %502
  br i1 %503, label %504, label %510

504:                                              ; preds = %497, %475
  %505 = load i8*, i8** @True, align 8
  %506 = ptrtoint i8* %505 to i32
  %507 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %508 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %507, i32 0, i32 5
  %509 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %508, i32 0, i32 1
  store i32 %506, i32* %509, align 8
  br label %510

510:                                              ; preds = %504, %497
  br label %511

511:                                              ; preds = %510, %469
  br label %512

512:                                              ; preds = %511, %465
  %513 = load i64, i64* %31, align 8
  %514 = load i64, i64* %30, align 8
  %515 = sub i64 %513, %514
  store i64 %515, i64* %35, align 8
  store i64 0, i64* %36, align 8
  %516 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %517 = load i32*, i32** %32, align 8
  %518 = load i64, i64* %30, align 8
  %519 = getelementptr inbounds i32, i32* %517, i64 %518
  %520 = load i64, i64* %35, align 8
  %521 = icmp eq i64 %520, 0
  %522 = zext i1 %521 to i32
  %523 = load i32, i32* @CODER_FINISH_END, align 4
  %524 = call i64 @XzUnpacker_Code(%struct.TYPE_15__* %516, i32* null, i64* %36, i32* %519, i64* %35, i32 %522, i32 %523, i64* %37)
  store i64 %524, i64* %38, align 8
  %525 = load i64, i64* %38, align 8
  %526 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %527 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %526, i32 0, i32 9
  store i64 %525, i64* %527, align 8
  %528 = load i64, i64* %37, align 8
  %529 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %530 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %529, i32 0, i32 8
  store i64 %528, i64* %530, align 8
  %531 = load i64, i64* %35, align 8
  %532 = load i64, i64* %30, align 8
  %533 = add i64 %532, %531
  store i64 %533, i64* %30, align 8
  %534 = load i64, i64* %35, align 8
  %535 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %536 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %535, i32 0, i32 5
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %536, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = add i64 %538, %534
  store i64 %539, i64* %537, align 8
  %540 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %541 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %540, i32 0, i32 5
  %542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %545 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %544, i32 0, i32 5
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %545, i32 0, i32 7
  %547 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %546, i32 0, i32 0
  store i64 %543, i64* %547, align 8
  %548 = load i64, i64* %38, align 8
  %549 = load i64, i64* @SZ_OK, align 8
  %550 = icmp ne i64 %548, %549
  br i1 %550, label %551, label %553

551:                                              ; preds = %512
  %552 = load i64, i64* @S_OK, align 8
  store i64 %552, i64* %8, align 8
  br label %618

553:                                              ; preds = %512
  %554 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %555 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %554, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = load i64, i64* @XZ_STATE_STREAM_HEADER, align 8
  %558 = icmp eq i64 %556, %557
  br i1 %558, label %559, label %577

559:                                              ; preds = %553
  %560 = load i8*, i8** @True, align 8
  %561 = load i8**, i8*** %14, align 8
  store i8* %560, i8** %561, align 8
  %562 = load i64, i64* %30, align 8
  %563 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %564 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %563, i32 0, i32 5
  %565 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %564, i32 0, i32 2
  store i64 %562, i64* %565, align 8
  %566 = load i64, i64* %31, align 8
  %567 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %568 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %568, i32 0, i32 3
  store i64 %566, i64* %569, align 8
  %570 = load i8*, i8** @False, align 8
  %571 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %572 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %571, i32 0, i32 7
  store i8* %570, i8** %572, align 8
  %573 = load i8*, i8** @False, align 8
  %574 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %575 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %574, i32 0, i32 6
  store i8* %573, i8** %575, align 8
  %576 = load i64, i64* @SZ_OK, align 8
  store i64 %576, i64* %8, align 8
  br label %618

577:                                              ; preds = %553
  %578 = load i64, i64* %37, align 8
  %579 = load i64, i64* @CODER_STATUS_NEEDS_MORE_INPUT, align 8
  %580 = icmp ne i64 %578, %579
  br i1 %580, label %581, label %583

581:                                              ; preds = %577
  %582 = load i64, i64* @E_FAIL, align 8
  store i64 %582, i64* %8, align 8
  br label %618

583:                                              ; preds = %577
  %584 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %585 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %585, i32 0, i32 8
  %587 = load i64, i64* %586, align 8
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %609

589:                                              ; preds = %583
  %590 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %591 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %590, i32 0, i32 5
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = load i64, i64* %33, align 8
  %595 = sub i64 %593, %594
  store i64 %595, i64* %39, align 8
  %596 = load i64, i64* %39, align 8
  %597 = icmp uge i64 %596, 4194304
  br i1 %597, label %598, label %608

598:                                              ; preds = %589
  %599 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %600 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %599, i32 0, i32 5
  %601 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %600, i32 0, i32 7
  %602 = call i64 @MtProgress_Progress_ST(%struct.TYPE_18__* %601)
  %603 = call i32 @RINOK(i64 %602)
  %604 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %605 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %604, i32 0, i32 5
  %606 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %33, align 8
  br label %608

608:                                              ; preds = %598, %589
  br label %609

609:                                              ; preds = %608, %583
  %610 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %611 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %610, i32 0, i32 5
  %612 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %611, i32 0, i32 1
  %613 = load i32, i32* %612, align 8
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %617

615:                                              ; preds = %609
  %616 = load i64, i64* @SZ_OK, align 8
  store i64 %616, i64* %8, align 8
  br label %618

617:                                              ; preds = %609
  br label %465

618:                                              ; preds = %615, %581, %559, %551, %461, %449, %441, %418, %416, %394, %357, %324, %312, %287, %201, %84, %77, %54
  %619 = load i64, i64* %8, align 8
  ret i64 %619
}

declare dso_local i32 @XzUnpacker_PrepareToRandomBlockDecoding(%struct.TYPE_15__*) #1

declare dso_local i32 @XzUnpacker_UpdateIndex(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @ISeqOutStream_Write(i32, i32*, i64) #1

declare dso_local i64 @MtProgress_ProgressAdd(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @RINOK(i64) #1

declare dso_local i32 @PRF_STR_INT(i8*, i64) #1

declare dso_local i64 @XzUnpacker_Code(%struct.TYPE_15__*, i32*, i64*, i32*, i64*, i32, i32, i64*) #1

declare dso_local i32* @MtDec_GetCrossBuff(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @ISeqInStream_Read(i32, i8*, i64*) #1

declare dso_local i64 @MtProgress_Progress_ST(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
