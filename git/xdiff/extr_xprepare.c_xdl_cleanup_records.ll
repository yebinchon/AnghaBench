; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xprepare.c_xdl_cleanup_records.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xprepare.c_xdl_cleanup_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i64*, i64*, i32*, i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64 }

@XDL_MAX_EQLIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @xdl_cleanup_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_cleanup_records(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__**, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = add nsw i32 %23, 2
  %25 = call i64 @xdl_malloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %330

29:                                               ; preds = %3
  %30 = load i8*, i8** %14, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = add nsw i32 %37, 2
  %39 = call i32 @memset(i8* %30, i32 0, i32 %38)
  %40 = load i8*, i8** %14, align 8
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %16, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @xdl_bogosqrt(i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* @XDL_MAX_EQLIMIT, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %29
  %55 = load i64, i64* @XDL_MAX_EQLIMIT, align 8
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %54, %29
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %65
  store %struct.TYPE_8__** %66, %struct.TYPE_8__*** %12, align 8
  br label %67

67:                                               ; preds = %107, %56
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sle i64 %68, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %75, align 8
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %76, i64 %80
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %13, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %84 = icmp ne %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %73
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  br label %90

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi i64 [ %88, %85 ], [ 0, %89 ]
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %101

95:                                               ; preds = %90
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp sge i64 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 2, i32 1
  br label %101

101:                                              ; preds = %95, %94
  %102 = phi i32 [ 0, %94 ], [ %100, %95 ]
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %15, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %103, i8* %106, align 1
  br label %107

107:                                              ; preds = %101
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %8, align 8
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %110, i32 1
  store %struct.TYPE_8__** %111, %struct.TYPE_8__*** %12, align 8
  br label %67

112:                                              ; preds = %67
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @xdl_bogosqrt(i32 %115)
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* @XDL_MAX_EQLIMIT, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i64, i64* @XDL_MAX_EQLIMIT, align 8
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %119, %112
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %8, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 7
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %127, i64 %130
  store %struct.TYPE_8__** %131, %struct.TYPE_8__*** %12, align 8
  br label %132

132:                                              ; preds = %172, %121
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp sle i64 %133, %136
  br i1 %137, label %138, label %177

138:                                              ; preds = %132
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %140, align 8
  %142 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %141, i64 %145
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %13, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %149 = icmp ne %struct.TYPE_10__* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %138
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  br label %155

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154, %150
  %156 = phi i64 [ %153, %150 ], [ 0, %154 ]
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %166

160:                                              ; preds = %155
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %11, align 8
  %163 = icmp sge i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 2, i32 1
  br label %166

166:                                              ; preds = %160, %159
  %167 = phi i32 [ 0, %159 ], [ %165, %160 ]
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %16, align 8
  %170 = load i64, i64* %8, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8 %168, i8* %171, align 1
  br label %172

172:                                              ; preds = %166
  %173 = load i64, i64* %8, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %8, align 8
  %175 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %175, i32 1
  store %struct.TYPE_8__** %176, %struct.TYPE_8__*** %12, align 8
  br label %132

177:                                              ; preds = %132
  store i64 0, i64* %10, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %8, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 7
  %183 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %182, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %183, i64 %186
  store %struct.TYPE_8__** %187, %struct.TYPE_8__*** %12, align 8
  br label %188

188:                                              ; preds = %244, %177
  %189 = load i64, i64* %8, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp sle i64 %189, %192
  br i1 %193, label %194, label %249

194:                                              ; preds = %188
  %195 = load i8*, i8** %15, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %219, label %201

201:                                              ; preds = %194
  %202 = load i8*, i8** %15, align 8
  %203 = load i64, i64* %8, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %237

208:                                              ; preds = %201
  %209 = load i8*, i8** %15, align 8
  %210 = load i64, i64* %8, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @xdl_clean_mmatch(i8* %209, i64 %210, i64 %213, i64 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %237, label %219

219:                                              ; preds = %208, %194
  %220 = load i64, i64* %8, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 3
  %223 = load i64*, i64** %222, align 8
  %224 = load i64, i64* %10, align 8
  %225 = getelementptr inbounds i64, i64* %223, i64 %224
  store i64 %220, i64* %225, align 8
  %226 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 4
  %232 = load i64*, i64** %231, align 8
  %233 = load i64, i64* %10, align 8
  %234 = getelementptr inbounds i64, i64* %232, i64 %233
  store i64 %229, i64* %234, align 8
  %235 = load i64, i64* %10, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %10, align 8
  br label %243

237:                                              ; preds = %208, %201
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* %8, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32 1, i32* %242, align 4
  br label %243

243:                                              ; preds = %237, %219
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %8, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %8, align 8
  %247 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %247, i32 1
  store %struct.TYPE_8__** %248, %struct.TYPE_8__*** %12, align 8
  br label %188

249:                                              ; preds = %188
  %250 = load i64, i64* %10, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 6
  store i64 %250, i64* %252, align 8
  store i64 0, i64* %10, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %8, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 7
  %258 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %257, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %258, i64 %261
  store %struct.TYPE_8__** %262, %struct.TYPE_8__*** %12, align 8
  br label %263

263:                                              ; preds = %319, %249
  %264 = load i64, i64* %8, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp sle i64 %264, %267
  br i1 %268, label %269, label %324

269:                                              ; preds = %263
  %270 = load i8*, i8** %16, align 8
  %271 = load i64, i64* %8, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %294, label %276

276:                                              ; preds = %269
  %277 = load i8*, i8** %16, align 8
  %278 = load i64, i64* %8, align 8
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %283, label %312

283:                                              ; preds = %276
  %284 = load i8*, i8** %16, align 8
  %285 = load i64, i64* %8, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @xdl_clean_mmatch(i8* %284, i64 %285, i64 %288, i64 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %312, label %294

294:                                              ; preds = %283, %269
  %295 = load i64, i64* %8, align 8
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 3
  %298 = load i64*, i64** %297, align 8
  %299 = load i64, i64* %10, align 8
  %300 = getelementptr inbounds i64, i64* %298, i64 %299
  store i64 %295, i64* %300, align 8
  %301 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 4
  %307 = load i64*, i64** %306, align 8
  %308 = load i64, i64* %10, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  store i64 %304, i64* %309, align 8
  %310 = load i64, i64* %10, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %10, align 8
  br label %318

312:                                              ; preds = %283, %276
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 5
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* %8, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  store i32 1, i32* %317, align 4
  br label %318

318:                                              ; preds = %312, %294
  br label %319

319:                                              ; preds = %318
  %320 = load i64, i64* %8, align 8
  %321 = add nsw i64 %320, 1
  store i64 %321, i64* %8, align 8
  %322 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %322, i32 1
  store %struct.TYPE_8__** %323, %struct.TYPE_8__*** %12, align 8
  br label %263

324:                                              ; preds = %263
  %325 = load i64, i64* %10, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 6
  store i64 %325, i64* %327, align 8
  %328 = load i8*, i8** %14, align 8
  %329 = call i32 @xdl_free(i8* %328)
  store i32 0, i32* %4, align 4
  br label %330

330:                                              ; preds = %324, %28
  %331 = load i32, i32* %4, align 4
  ret i32 %331
}

declare dso_local i64 @xdl_malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @xdl_bogosqrt(i32) #1

declare dso_local i32 @xdl_clean_mmatch(i8*, i64, i64, i64) #1

declare dso_local i32 @xdl_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
