; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mask_ctx_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mask_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32, i64, i32*, i32, i32*, i32*, i32*, i64, i32*, i32*, i32*, i32*, i64, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i8** }
%struct.TYPE_14__ = type { i8* }

@ATTACK_MODE_STRAIGHT = common dso_local global i64 0, align 8
@ATTACK_MODE_COMBI = common dso_local global i64 0, align 8
@SP_ROOT_CNT = common dso_local global i32 0, align 4
@SP_MARKOV_CNT = common dso_local global i32 0, align 4
@SP_PW_MAX = common dso_local global i32 0, align 4
@CHARSIZ = common dso_local global i32 0, align 4
@MAX_MFS = common dso_local global i32 0, align 4
@ATTACK_MODE_BF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@HCBUFSIZ_LARGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: unsupported file type.\00", align 1
@DEF_MASK = common dso_local global i8* null, align 8
@ATTACK_MODE_HYBRID1 = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Invalid mask.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mask_ctx_init(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %5, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %7, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %573

48:                                               ; preds = %1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %573

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %573

60:                                               ; preds = %54
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %573

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %573

72:                                               ; preds = %66
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %573

78:                                               ; preds = %72
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ATTACK_MODE_STRAIGHT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %573

85:                                               ; preds = %78
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %573

92:                                               ; preds = %85
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = call i64 @hccalloc(i32 8, i32 4)
  %96 = inttoptr i64 %95 to i32*
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 6
  store i32* %96, i32** %98, align 8
  %99 = call i64 @hccalloc(i32 4, i32 4)
  %100 = inttoptr i64 %99 to i32*
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 5
  store i32* %100, i32** %102, align 8
  %103 = call i64 @hccalloc(i32 256, i32 4)
  %104 = inttoptr i64 %103 to i32*
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 14
  store i32* %104, i32** %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 13
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @SP_ROOT_CNT, align 4
  %110 = call i64 @hccalloc(i32 %109, i32 4)
  %111 = inttoptr i64 %110 to i32*
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 12
  store i32* %111, i32** %113, align 8
  %114 = load i32, i32* @SP_MARKOV_CNT, align 4
  %115 = call i64 @hccalloc(i32 %114, i32 4)
  %116 = inttoptr i64 %115 to i32*
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 11
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = call i32 @sp_setup_tbl(%struct.TYPE_15__* %119)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %123

122:                                              ; preds = %92
  store i32 -1, i32* %2, align 4
  br label %573

123:                                              ; preds = %92
  %124 = load i32, i32* @SP_PW_MAX, align 4
  %125 = call i64 @hccalloc(i32 %124, i32 4)
  %126 = inttoptr i64 %125 to i32*
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 10
  store i32* %126, i32** %128, align 8
  %129 = load i32, i32* @SP_PW_MAX, align 4
  %130 = load i32, i32* @CHARSIZ, align 4
  %131 = mul nsw i32 %129, %130
  %132 = call i64 @hccalloc(i32 %131, i32 4)
  %133 = inttoptr i64 %132 to i32*
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 9
  store i32* %133, i32** %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  store i32* null, i32** %139, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 8
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* @MAX_MFS, align 4
  %145 = call i64 @hccalloc(i32 %144, i32 4)
  %146 = inttoptr i64 %145 to i32*
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 7
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @mp_setup_sys(i32* %151)
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 11
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %123
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 11
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @mp_setup_usr(%struct.TYPE_15__* %158, i32* %161, i32* %164, i64 %167, i32 0)
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %171

170:                                              ; preds = %157
  store i32 -1, i32* %2, align 4
  br label %573

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %123
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 10
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 5
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 10
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @mp_setup_usr(%struct.TYPE_15__* %178, i32* %181, i32* %184, i64 %187, i32 1)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %191

190:                                              ; preds = %177
  store i32 -1, i32* %2, align 4
  br label %573

191:                                              ; preds = %177
  br label %192

192:                                              ; preds = %191, %172
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 6
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 5
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 9
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @mp_setup_usr(%struct.TYPE_15__* %198, i32* %201, i32* %204, i64 %207, i32 2)
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  store i32 -1, i32* %2, align 4
  br label %573

211:                                              ; preds = %197
  br label %212

212:                                              ; preds = %211, %192
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 8
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %212
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 6
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 5
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 8
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @mp_setup_usr(%struct.TYPE_15__* %218, i32* %221, i32* %224, i64 %227, i32 3)
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %230, label %231

230:                                              ; preds = %217
  store i32 -1, i32* %2, align 4
  br label %573

231:                                              ; preds = %217
  br label %232

232:                                              ; preds = %231, %212
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 6
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @ATTACK_MODE_BF, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %370

238:                                              ; preds = %232
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %359

243:                                              ; preds = %238
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %350

248:                                              ; preds = %243
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = load i8**, i8*** %250, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 0
  %253 = load i8*, i8** %252, align 8
  store i8* %253, i8** %8, align 8
  %254 = load i8*, i8** %8, align 8
  %255 = call i32 @hc_path_exist(i8* %254)
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %248
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %259 = load i8*, i8** %8, align 8
  %260 = call i32 @mask_append(%struct.TYPE_15__* %258, i8* %259, i8* null)
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  store i32 -1, i32* %2, align 4
  br label %573

263:                                              ; preds = %257
  br label %349

264:                                              ; preds = %248
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  store i32 1, i32* %266, align 4
  store i32 0, i32* %9, align 4
  br label %267

267:                                              ; preds = %345, %264
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %348

273:                                              ; preds = %267
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 1
  %276 = load i8**, i8*** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  store i8* %280, i8** %8, align 8
  %281 = load i8*, i8** %8, align 8
  %282 = call i32 @hc_path_is_file(i8* %281)
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %340

284:                                              ; preds = %273
  %285 = load i8*, i8** %8, align 8
  %286 = call i32 @hc_fopen(i32* %10, i8* %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %290 = load i8*, i8** %8, align 8
  %291 = load i32, i32* @errno, align 4
  %292 = call i32 @strerror(i32 %291)
  %293 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_error(%struct.TYPE_15__* %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %290, i32 %292)
  store i32 -1, i32* %2, align 4
  br label %573

294:                                              ; preds = %284
  %295 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %296 = call i64 @hcmalloc(i32 %295)
  %297 = inttoptr i64 %296 to i8*
  store i8* %297, i8** %11, align 8
  br label %298

298:                                              ; preds = %335, %315, %308, %294
  %299 = call i32 @hc_feof(i32* %10)
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  br i1 %301, label %302, label %336

302:                                              ; preds = %298
  %303 = load i8*, i8** %11, align 8
  %304 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %305 = call i64 @fgetl(i32* %10, i8* %303, i32 %304)
  store i64 %305, i64* %12, align 8
  %306 = load i64, i64* %12, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %302
  br label %298

309:                                              ; preds = %302
  %310 = load i8*, i8** %11, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 0
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 35
  br i1 %314, label %315, label %316

315:                                              ; preds = %309
  br label %298

316:                                              ; preds = %309
  %317 = load i8*, i8** %11, align 8
  %318 = load i64, i64* %12, align 8
  %319 = call i8* @mask_ctx_parse_maskfile_find_mask(i8* %317, i64 %318)
  store i8* %319, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %320 = load i8*, i8** %11, align 8
  %321 = load i8*, i8** %13, align 8
  %322 = icmp ne i8* %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %316
  %324 = load i8*, i8** %11, align 8
  store i8* %324, i8** %14, align 8
  %325 = load i8*, i8** %13, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 -1
  store i8 0, i8* %326, align 1
  br label %327

327:                                              ; preds = %323, %316
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %329 = load i8*, i8** %13, align 8
  %330 = load i8*, i8** %14, align 8
  %331 = call i32 @mask_append(%struct.TYPE_15__* %328, i8* %329, i8* %330)
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %333, label %335

333:                                              ; preds = %327
  %334 = call i32 @hc_fclose(i32* %10)
  store i32 -1, i32* %2, align 4
  br label %573

335:                                              ; preds = %327
  br label %298

336:                                              ; preds = %298
  %337 = load i8*, i8** %11, align 8
  %338 = call i32 @hcfree(i8* %337)
  %339 = call i32 @hc_fclose(i32* %10)
  br label %344

340:                                              ; preds = %273
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %342 = load i8*, i8** %8, align 8
  %343 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_error(%struct.TYPE_15__* %341, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %342)
  store i32 -1, i32* %2, align 4
  br label %573

344:                                              ; preds = %336
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %9, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %9, align 4
  br label %267

348:                                              ; preds = %267
  br label %349

349:                                              ; preds = %348, %263
  br label %358

350:                                              ; preds = %243
  %351 = load i8*, i8** @DEF_MASK, align 8
  store i8* %351, i8** %15, align 8
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %353 = load i8*, i8** %15, align 8
  %354 = call i32 @mask_append(%struct.TYPE_15__* %352, i8* %353, i8* null)
  %355 = icmp eq i32 %354, -1
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  store i32 -1, i32* %2, align 4
  br label %573

357:                                              ; preds = %350
  br label %358

358:                                              ; preds = %357, %349
  br label %369

359:                                              ; preds = %238
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  store i8* %362, i8** %16, align 8
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %364 = load i8*, i8** %16, align 8
  %365 = call i32 @mask_append(%struct.TYPE_15__* %363, i8* %364, i8* null)
  %366 = icmp eq i32 %365, -1
  br i1 %366, label %367, label %368

367:                                              ; preds = %359
  store i32 -1, i32* %2, align 4
  br label %573

368:                                              ; preds = %359
  br label %369

369:                                              ; preds = %368, %358
  br label %557

370:                                              ; preds = %232
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 6
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @ATTACK_MODE_HYBRID1, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %465

376:                                              ; preds = %370
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 1
  %379 = load i8**, i8*** %378, align 8
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8*, i8** %379, i64 %384
  %386 = load i8*, i8** %385, align 8
  store i8* %386, i8** %17, align 8
  %387 = load i8*, i8** %17, align 8
  %388 = call i32 @hc_path_exist(i8* %387)
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %397

390:                                              ; preds = %376
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %392 = load i8*, i8** %17, align 8
  %393 = call i32 @mask_append(%struct.TYPE_15__* %391, i8* %392, i8* null)
  %394 = icmp eq i32 %393, -1
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  store i32 -1, i32* %2, align 4
  br label %573

396:                                              ; preds = %390
  br label %464

397:                                              ; preds = %376
  %398 = load i8*, i8** %17, align 8
  %399 = call i32 @hc_path_is_file(i8* %398)
  %400 = icmp eq i32 %399, 1
  br i1 %400, label %401, label %459

401:                                              ; preds = %397
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 1
  store i32 1, i32* %403, align 4
  %404 = load i8*, i8** %17, align 8
  %405 = call i32 @hc_fopen(i32* %18, i8* %404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %401
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %409 = load i8*, i8** %17, align 8
  %410 = load i32, i32* @errno, align 4
  %411 = call i32 @strerror(i32 %410)
  %412 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_error(%struct.TYPE_15__* %408, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %409, i32 %411)
  store i32 -1, i32* %2, align 4
  br label %573

413:                                              ; preds = %401
  %414 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %415 = call i64 @hcmalloc(i32 %414)
  %416 = inttoptr i64 %415 to i8*
  store i8* %416, i8** %19, align 8
  br label %417

417:                                              ; preds = %454, %434, %427, %413
  %418 = call i32 @hc_feof(i32* %18)
  %419 = icmp ne i32 %418, 0
  %420 = xor i1 %419, true
  br i1 %420, label %421, label %455

421:                                              ; preds = %417
  %422 = load i8*, i8** %19, align 8
  %423 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %424 = call i64 @fgetl(i32* %18, i8* %422, i32 %423)
  store i64 %424, i64* %20, align 8
  %425 = load i64, i64* %20, align 8
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %421
  br label %417

428:                                              ; preds = %421
  %429 = load i8*, i8** %19, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 0
  %431 = load i8, i8* %430, align 1
  %432 = sext i8 %431 to i32
  %433 = icmp eq i32 %432, 35
  br i1 %433, label %434, label %435

434:                                              ; preds = %428
  br label %417

435:                                              ; preds = %428
  %436 = load i8*, i8** %19, align 8
  %437 = load i64, i64* %20, align 8
  %438 = call i8* @mask_ctx_parse_maskfile_find_mask(i8* %436, i64 %437)
  store i8* %438, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %439 = load i8*, i8** %19, align 8
  %440 = load i8*, i8** %21, align 8
  %441 = icmp ne i8* %439, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %435
  %443 = load i8*, i8** %19, align 8
  store i8* %443, i8** %22, align 8
  %444 = load i8*, i8** %21, align 8
  %445 = getelementptr inbounds i8, i8* %444, i64 -1
  store i8 0, i8* %445, align 1
  br label %446

446:                                              ; preds = %442, %435
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %448 = load i8*, i8** %21, align 8
  %449 = load i8*, i8** %22, align 8
  %450 = call i32 @mask_append(%struct.TYPE_15__* %447, i8* %448, i8* %449)
  %451 = icmp eq i32 %450, -1
  br i1 %451, label %452, label %454

452:                                              ; preds = %446
  %453 = call i32 @hc_fclose(i32* %18)
  store i32 -1, i32* %2, align 4
  br label %573

454:                                              ; preds = %446
  br label %417

455:                                              ; preds = %417
  %456 = load i8*, i8** %19, align 8
  %457 = call i32 @hcfree(i8* %456)
  %458 = call i32 @hc_fclose(i32* %18)
  br label %463

459:                                              ; preds = %397
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %461 = load i8*, i8** %17, align 8
  %462 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_error(%struct.TYPE_15__* %460, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %461)
  store i32 -1, i32* %2, align 4
  br label %573

463:                                              ; preds = %455
  br label %464

464:                                              ; preds = %463, %396
  br label %556

465:                                              ; preds = %370
  %466 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 6
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %555

471:                                              ; preds = %465
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 1
  %474 = load i8**, i8*** %473, align 8
  %475 = getelementptr inbounds i8*, i8** %474, i64 0
  %476 = load i8*, i8** %475, align 8
  store i8* %476, i8** %23, align 8
  %477 = load i8*, i8** %23, align 8
  %478 = call i32 @hc_path_exist(i8* %477)
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %487

480:                                              ; preds = %471
  %481 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %482 = load i8*, i8** %23, align 8
  %483 = call i32 @mask_append(%struct.TYPE_15__* %481, i8* %482, i8* null)
  %484 = icmp eq i32 %483, -1
  br i1 %484, label %485, label %486

485:                                              ; preds = %480
  store i32 -1, i32* %2, align 4
  br label %573

486:                                              ; preds = %480
  br label %554

487:                                              ; preds = %471
  %488 = load i8*, i8** %23, align 8
  %489 = call i32 @hc_path_is_file(i8* %488)
  %490 = icmp eq i32 %489, 1
  br i1 %490, label %491, label %549

491:                                              ; preds = %487
  %492 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %493 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %492, i32 0, i32 1
  store i32 1, i32* %493, align 4
  %494 = load i8*, i8** %23, align 8
  %495 = call i32 @hc_fopen(i32* %24, i8* %494, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %491
  %498 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %499 = load i8*, i8** %23, align 8
  %500 = load i32, i32* @errno, align 4
  %501 = call i32 @strerror(i32 %500)
  %502 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_error(%struct.TYPE_15__* %498, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %499, i32 %501)
  store i32 -1, i32* %2, align 4
  br label %573

503:                                              ; preds = %491
  %504 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %505 = call i64 @hcmalloc(i32 %504)
  %506 = inttoptr i64 %505 to i8*
  store i8* %506, i8** %25, align 8
  br label %507

507:                                              ; preds = %544, %524, %517, %503
  %508 = call i32 @hc_feof(i32* %24)
  %509 = icmp ne i32 %508, 0
  %510 = xor i1 %509, true
  br i1 %510, label %511, label %545

511:                                              ; preds = %507
  %512 = load i8*, i8** %25, align 8
  %513 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %514 = call i64 @fgetl(i32* %24, i8* %512, i32 %513)
  store i64 %514, i64* %26, align 8
  %515 = load i64, i64* %26, align 8
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %511
  br label %507

518:                                              ; preds = %511
  %519 = load i8*, i8** %25, align 8
  %520 = getelementptr inbounds i8, i8* %519, i64 0
  %521 = load i8, i8* %520, align 1
  %522 = sext i8 %521 to i32
  %523 = icmp eq i32 %522, 35
  br i1 %523, label %524, label %525

524:                                              ; preds = %518
  br label %507

525:                                              ; preds = %518
  %526 = load i8*, i8** %25, align 8
  %527 = load i64, i64* %26, align 8
  %528 = call i8* @mask_ctx_parse_maskfile_find_mask(i8* %526, i64 %527)
  store i8* %528, i8** %27, align 8
  store i8* null, i8** %28, align 8
  %529 = load i8*, i8** %25, align 8
  %530 = load i8*, i8** %27, align 8
  %531 = icmp ne i8* %529, %530
  br i1 %531, label %532, label %536

532:                                              ; preds = %525
  %533 = load i8*, i8** %25, align 8
  store i8* %533, i8** %28, align 8
  %534 = load i8*, i8** %27, align 8
  %535 = getelementptr inbounds i8, i8* %534, i64 -1
  store i8 0, i8* %535, align 1
  br label %536

536:                                              ; preds = %532, %525
  %537 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %538 = load i8*, i8** %27, align 8
  %539 = load i8*, i8** %28, align 8
  %540 = call i32 @mask_append(%struct.TYPE_15__* %537, i8* %538, i8* %539)
  %541 = icmp eq i32 %540, -1
  br i1 %541, label %542, label %544

542:                                              ; preds = %536
  %543 = call i32 @hc_fclose(i32* %24)
  store i32 -1, i32* %2, align 4
  br label %573

544:                                              ; preds = %536
  br label %507

545:                                              ; preds = %507
  %546 = load i8*, i8** %25, align 8
  %547 = call i32 @hcfree(i8* %546)
  %548 = call i32 @hc_fclose(i32* %24)
  br label %553

549:                                              ; preds = %487
  %550 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %551 = load i8*, i8** %23, align 8
  %552 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_error(%struct.TYPE_15__* %550, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %551)
  store i32 -1, i32* %2, align 4
  br label %573

553:                                              ; preds = %545
  br label %554

554:                                              ; preds = %553, %486
  br label %555

555:                                              ; preds = %554, %465
  br label %556

556:                                              ; preds = %555, %464
  br label %557

557:                                              ; preds = %556, %369
  %558 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %559 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %562, label %565

562:                                              ; preds = %557
  %563 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %564 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_error(%struct.TYPE_15__* %563, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %573

565:                                              ; preds = %557
  %566 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 3
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 0
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 4
  store i32 %570, i32* %572, align 8
  store i32 0, i32* %2, align 4
  br label %573

573:                                              ; preds = %565, %562, %549, %542, %497, %485, %459, %452, %407, %395, %367, %356, %340, %333, %288, %262, %230, %210, %190, %170, %122, %91, %84, %77, %71, %65, %59, %53, %47
  %574 = load i32, i32* %2, align 4
  ret i32 %574
}

declare dso_local i64 @hccalloc(i32, i32) #1

declare dso_local i32 @sp_setup_tbl(%struct.TYPE_15__*) #1

declare dso_local i32 @mp_setup_sys(i32*) #1

declare dso_local i32 @mp_setup_usr(%struct.TYPE_15__*, i32*, i32*, i64, i32) #1

declare dso_local i32 @hc_path_exist(i8*) #1

declare dso_local i32 @mask_append(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @hc_path_is_file(i8*) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i64 @fgetl(i32*, i8*, i32) #1

declare dso_local i8* @mask_ctx_parse_maskfile_find_mask(i8*, i64) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
