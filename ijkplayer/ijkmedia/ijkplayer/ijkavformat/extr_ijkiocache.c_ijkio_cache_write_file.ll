; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_write_file.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32, i64, i64, i64, i32, i32, i32, i32*, %struct.TYPE_17__*, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_17__*, i64, i32)*, i64 (%struct.TYPE_17__*, i8*, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@cmp = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @ijkio_cache_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ijkio_cache_write_file(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca [2 x %struct.TYPE_16__*], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %4, align 8
  %18 = bitcast [4096 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 4096, i1 false)
  store i32 4096, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %11, align 8
  %21 = bitcast [2 x %struct.TYPE_16__*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 16, i1 false)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 10
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 10
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29, %24, %1
  %37 = load i32, i32* @ENOSYS, align 4
  %38 = call i64 @IJKAVERROR(i32 %37)
  store i64 %38, i64* %2, align 8
  br label %357

39:                                               ; preds = %29
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 14
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* @cmp, align 4
  %48 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %12, i64 0, i64 0
  %49 = bitcast %struct.TYPE_16__** %48 to i8**
  %50 = call %struct.TYPE_16__* @ijk_av_tree_find(i32 %44, i64* %46, i32 %47, i8** %49)
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %9, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = icmp ne %struct.TYPE_16__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %39
  %54 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %12, i64 0, i64 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 16
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %10, align 8
  br label %56

56:                                               ; preds = %53, %39
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = icmp ne %struct.TYPE_16__* %57, null
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  store i64 %66, i64* %13, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %59
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %81, %59
  br label %129

92:                                               ; preds = %56
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = icmp ne %struct.TYPE_16__* %93, null
  br i1 %94, label %95, label %128

95:                                               ; preds = %92
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  store i64 %102, i64* %14, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %105, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i64, i64* %14, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %95
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %95
  br label %128

128:                                              ; preds = %127, %92
  br label %129

129:                                              ; preds = %128, %91
  %130 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %12, i64 0, i64 1
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  store %struct.TYPE_16__* %131, %struct.TYPE_16__** %11, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %133 = icmp ne %struct.TYPE_16__* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i64 @FFMIN(i64 %142, i32 %143)
  store i64 %144, i64* %8, align 8
  br label %145

145:                                              ; preds = %134, %129
  %146 = load i64, i64* %8, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i64 0, i64* %2, align 8
  br label %357

149:                                              ; preds = %145
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  store i32 1, i32* %164, align 8
  store i64 0, i64* %2, align 8
  br label %357

165:                                              ; preds = %154, %149
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp sge i64 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 2
  store i32 1, i32* %175, align 8
  store i64 0, i64* %2, align 8
  br label %357

176:                                              ; preds = %165
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %253

184:                                              ; preds = %176
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %213

189:                                              ; preds = %184
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 13
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 12
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 11
  %199 = call i64 @ijkio_cache_io_open(%struct.TYPE_14__* %190, i32 %193, i32 %196, i32* %198)
  store i64 %199, i64* %5, align 8
  %200 = load i64, i64* %5, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %189
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  store i32 1, i32* %204, align 8
  %205 = load i64, i64* %5, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 8
  %209 = load i64, i64* %5, align 8
  store i64 %209, i64* %2, align 8
  br label %357

210:                                              ; preds = %189
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 5
  store i64 0, i64* %212, align 8
  br label %213

213:                                              ; preds = %210, %184
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 10
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i64 (%struct.TYPE_17__*, i64, i32)*, i64 (%struct.TYPE_17__*, i64, i32)** %219, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 10
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %222, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @SEEK_SET, align 4
  %228 = call i64 %220(%struct.TYPE_17__* %223, i64 %226, i32 %227)
  store i64 %228, i64* %5, align 8
  %229 = load i64, i64* %5, align 8
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %213
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 2
  store i32 1, i32* %233, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %236, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %231
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 4
  store i64 %244, i64* %246, align 8
  br label %247

247:                                              ; preds = %241, %231
  %248 = load i64, i64* %5, align 8
  store i64 %248, i64* %2, align 8
  br label %357

249:                                              ; preds = %213
  %250 = load i64, i64* %5, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 4
  store i64 %250, i64* %252, align 8
  br label %253

253:                                              ; preds = %249, %176
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = icmp sgt i64 %256, 0
  br i1 %257, label %258, label %282

258:                                              ; preds = %253
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 13
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 12
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 11
  %268 = call i64 @ijkio_cache_io_open(%struct.TYPE_14__* %259, i32 %262, i32 %265, i32* %267)
  store i64 %268, i64* %5, align 8
  %269 = load i64, i64* %5, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %258
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 2
  store i32 1, i32* %273, align 8
  %274 = load i64, i64* %5, align 8
  %275 = trunc i64 %274 to i32
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 6
  store i32 %275, i32* %277, align 8
  %278 = load i64, i64* %5, align 8
  store i64 %278, i64* %2, align 8
  br label %357

279:                                              ; preds = %258
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 5
  store i64 0, i64* %281, align 8
  br label %282

282:                                              ; preds = %279, %253
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 10
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = load i64 (%struct.TYPE_17__*, i8*, i32)*, i64 (%struct.TYPE_17__*, i8*, i32)** %288, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 10
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %291, align 8
  %293 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %294 = load i64, i64* %8, align 8
  %295 = trunc i64 %294 to i32
  %296 = call i64 %289(%struct.TYPE_17__* %292, i8* %293, i32 %295)
  store i64 %296, i64* %5, align 8
  %297 = load i64, i64* %5, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %282
  %300 = load i64, i64* %8, align 8
  %301 = icmp sgt i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  store i64 %305, i64* %307, align 8
  br label %308

308:                                              ; preds = %302, %299, %282
  %309 = load i64, i64* %5, align 8
  %310 = icmp sle i64 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %308
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 2
  store i32 1, i32* %313, align 8
  %314 = load i64, i64* %5, align 8
  %315 = trunc i64 %314 to i32
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 6
  store i32 %315, i32* %317, align 8
  %318 = load i64, i64* %5, align 8
  store i64 %318, i64* %2, align 8
  br label %357

319:                                              ; preds = %308
  %320 = load i64, i64* %5, align 8
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 9
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %320
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %323, align 4
  %328 = load i64, i64* %5, align 8
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %331, %328
  store i64 %332, i64* %330, align 8
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 7
  %335 = call i32 @pthread_mutex_lock(i32* %334)
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %337 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %338 = load i64, i64* %5, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i64 @add_entry(%struct.TYPE_14__* %336, i8* %337, i32 %339)
  store i64 %340, i64* %5, align 8
  %341 = load i64, i64* %5, align 8
  %342 = icmp sgt i64 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %319
  %344 = load i64, i64* %5, align 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, %344
  store i64 %348, i64* %346, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 8
  %351 = call i32 @pthread_cond_signal(i32* %350)
  br label %352

352:                                              ; preds = %343, %319
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 7
  %355 = call i32 @pthread_mutex_unlock(i32* %354)
  %356 = load i64, i64* %5, align 8
  store i64 %356, i64* %2, align 8
  br label %357

357:                                              ; preds = %352, %311, %271, %247, %202, %173, %162, %148, %36
  %358 = load i64, i64* %2, align 8
  ret i64 %358
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IJKAVERROR(i32) #2

declare dso_local %struct.TYPE_16__* @ijk_av_tree_find(i32, i64*, i32, i8**) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @FFMIN(i64, i32) #2

declare dso_local i64 @ijkio_cache_io_open(%struct.TYPE_14__*, i32, i32, i32*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i64 @add_entry(%struct.TYPE_14__*, i8*, i32) #2

declare dso_local i32 @pthread_cond_signal(i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
