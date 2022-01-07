; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_new.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__*, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32 }

@SC_NBINS = common dso_local global i32 0, align 4
@bin_infos = common dso_local global %struct.TYPE_10__* null, align 8
@CACHELINE = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"tcache_ql\00", align 1
@WITNESS_RANK_TCACHE_QL = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@config_prof = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"arena_large\00", align 1
@WITNESS_RANK_ARENA_LARGE = common dso_local global i32 0, align 4
@extent_state_dirty = common dso_local global i32 0, align 4
@extent_state_muzzy = common dso_local global i32 0, align 4
@extent_state_retained = common dso_local global i32 0, align 4
@HUGEPAGE = common dso_local global i32 0, align 4
@SC_LARGE_MAXCLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"extent_grow\00", align 1
@WITNESS_RANK_EXTENT_GROW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"extent_avail\00", align 1
@WITNESS_RANK_EXTENT_AVAIL = common dso_local global i32 0, align 4
@ATOMIC_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @arena_new(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32* (...) @b0get()
  store i32* %20, i32** %9, align 8
  br label %30

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @base_new(i32* %22, i32 %23, i32* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %316

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %19
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SC_NBINS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bin_infos, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = add i64 136, %50
  store i64 %51, i64* %12, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* @CACHELINE, align 4
  %56 = call i64 @base_alloc(i32* %52, i32* %53, i64 %54, i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %8, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = icmp eq %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %308

61:                                               ; preds = %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 24
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* @ATOMIC_RELAXED, align 4
  %67 = call i32 @atomic_store_u(i32* %65, i32 0, i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 24
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* @ATOMIC_RELAXED, align 4
  %73 = call i32 @atomic_store_u(i32* %71, i32 0, i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 23
  store i32* null, i32** %75, align 8
  %76 = load i64, i64* @config_stats, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %61
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 9
  %82 = call i64 @arena_stats_init(i32* %79, %struct.TYPE_11__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %308

85:                                               ; preds = %78
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 22
  %88 = call i32 @ql_new(i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 21
  %91 = call i32 @ql_new(i32* %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 20
  %94 = load i32, i32* @WITNESS_RANK_TCACHE_QL, align 4
  %95 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %96 = call i64 @malloc_mutex_init(i32* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %308

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %61
  %101 = load i64, i64* @config_prof, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %5, align 8
  %105 = call i64 @prof_accum_init(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %308

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %100
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 19
  %112 = load i32, i32* @ATOMIC_RELAXED, align 4
  %113 = call i32 @atomic_store_zu(i32* %111, i32 0, i32 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 18
  %116 = call i64 (...) @extent_dss_prec_get()
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @ATOMIC_RELAXED, align 4
  %119 = call i32 @atomic_store_u(i32* %115, i32 %117, i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 17
  %122 = load i32, i32* @ATOMIC_RELAXED, align 4
  %123 = call i32 @atomic_store_zu(i32* %121, i32 0, i32 %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 16
  %126 = call i32 @extent_list_init(i32* %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 15
  %129 = load i32, i32* @WITNESS_RANK_ARENA_LARGE, align 4
  %130 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %131 = call i64 @malloc_mutex_init(i32* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %109
  br label %308

134:                                              ; preds = %109
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 14
  %138 = load i32, i32* @extent_state_dirty, align 4
  %139 = call i64 @eset_init(i32* %135, i32* %137, i32 %138, i32 1)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %308

142:                                              ; preds = %134
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 13
  %146 = load i32, i32* @extent_state_muzzy, align 4
  %147 = call i64 @eset_init(i32* %143, i32* %145, i32 %146, i32 0)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %308

150:                                              ; preds = %142
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 12
  %154 = load i32, i32* @extent_state_retained, align 4
  %155 = call i64 @eset_init(i32* %151, i32* %153, i32 %154, i32 0)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %308

158:                                              ; preds = %150
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 11
  %161 = call i32 (...) @arena_dirty_decay_ms_default_get()
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = call i64 @arena_decay_init(i32* %160, i32 %161, i32* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %308

168:                                              ; preds = %158
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 10
  %171 = call i32 (...) @arena_muzzy_decay_ms_default_get()
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = call i64 @arena_decay_init(i32* %170, i32 %171, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %308

178:                                              ; preds = %168
  %179 = load i32, i32* @HUGEPAGE, align 4
  %180 = call i8* @sz_psz2ind(i32 %179)
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 8
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* @SC_LARGE_MAXCLASS, align 4
  %184 = call i8* @sz_psz2ind(i32 %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 7
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 6
  %189 = load i32, i32* @WITNESS_RANK_EXTENT_GROW, align 4
  %190 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %191 = call i64 @malloc_mutex_init(i32* %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  br label %308

194:                                              ; preds = %178
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 5
  %197 = call i32 @extent_avail_new(i32* %196)
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 4
  %200 = load i32, i32* @WITNESS_RANK_EXTENT_AVAIL, align 4
  %201 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %202 = call i64 @malloc_mutex_init(i32* %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  br label %308

205:                                              ; preds = %194
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %207 = ptrtoint %struct.TYPE_9__* %206 to i64
  %208 = add i64 %207, 136
  store i64 %208, i64* %13, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 3
  %211 = load i32, i32* @ATOMIC_RELEASE, align 4
  %212 = call i32 @atomic_store_u(i32* %210, i32 0, i32 %211)
  store i32 0, i32* %10, align 4
  br label %213

213:                                              ; preds = %263, %205
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @SC_NBINS, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %217, label %266

217:                                              ; preds = %213
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bin_infos, align 8
  %219 = load i32, i32* %10, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %14, align 4
  %224 = load i64, i64* %13, align 8
  %225 = inttoptr i64 %224 to i32*
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = load i32, i32* %10, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  store i32* %225, i32** %232, align 8
  %233 = load i32, i32* %14, align 4
  %234 = zext i32 %233 to i64
  %235 = mul i64 %234, 4
  %236 = load i64, i64* %13, align 8
  %237 = add i64 %236, %235
  store i64 %237, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %238

238:                                              ; preds = %259, %217
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %14, align 4
  %241 = icmp ult i32 %239, %240
  br i1 %241, label %242, label %262

242:                                              ; preds = %238
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = load i32, i32* %10, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %15, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = call i32 @bin_init(i32* %253)
  store i32 %254, i32* %16, align 4
  %255 = load i32, i32* %16, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %242
  br label %308

258:                                              ; preds = %242
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %15, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %15, align 4
  br label %238

262:                                              ; preds = %238
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %10, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %213

266:                                              ; preds = %213
  %267 = load i64, i64* %13, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %269 = ptrtoint %struct.TYPE_9__* %268 to i64
  %270 = load i64, i64* %12, align 8
  %271 = add i64 %269, %270
  %272 = icmp eq i64 %267, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 @assert(i32 %273)
  %275 = load i32*, i32** %9, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  store i32* %275, i32** %277, align 8
  %278 = load i32, i32* %6, align 4
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %280 = call i32 @arena_set(i32 %278, %struct.TYPE_9__* %279)
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = call i32 @nstime_init(i32* %282, i32 0)
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = call i32 @nstime_update(i32* %285)
  %287 = load i32, i32* %6, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %306

289:                                              ; preds = %266
  %290 = load i32*, i32** %5, align 8
  %291 = call i32 @tsdn_null(i32* %290)
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i32
  %295 = call i32 @assert(i32 %294)
  %296 = load i32*, i32** %5, align 8
  %297 = call i32 @tsdn_tsd(i32* %296)
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %299 = call i32 @pre_reentrancy(i32 %297, %struct.TYPE_9__* %298)
  br i1 true, label %300, label %302

300:                                              ; preds = %289
  %301 = call i32 (...) @test_hooks_arena_new_hook()
  br label %302

302:                                              ; preds = %300, %289
  %303 = load i32*, i32** %5, align 8
  %304 = call i32 @tsdn_tsd(i32* %303)
  %305 = call i32 @post_reentrancy(i32 %304)
  br label %306

306:                                              ; preds = %302, %266
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %307, %struct.TYPE_9__** %4, align 8
  br label %316

308:                                              ; preds = %257, %204, %193, %177, %167, %157, %149, %141, %133, %107, %98, %84, %60
  %309 = load i32, i32* %6, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load i32*, i32** %5, align 8
  %313 = load i32*, i32** %9, align 8
  %314 = call i32 @base_delete(i32* %312, i32* %313)
  br label %315

315:                                              ; preds = %311, %308
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %316

316:                                              ; preds = %315, %306, %28
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %317
}

declare dso_local i32* @b0get(...) #1

declare dso_local i32* @base_new(i32*, i32, i32*) #1

declare dso_local i64 @base_alloc(i32*, i32*, i64, i32) #1

declare dso_local i32 @atomic_store_u(i32*, i32, i32) #1

declare dso_local i64 @arena_stats_init(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ql_new(i32*) #1

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i64 @prof_accum_init(i32*) #1

declare dso_local i32 @atomic_store_zu(i32*, i32, i32) #1

declare dso_local i64 @extent_dss_prec_get(...) #1

declare dso_local i32 @extent_list_init(i32*) #1

declare dso_local i64 @eset_init(i32*, i32*, i32, i32) #1

declare dso_local i64 @arena_decay_init(i32*, i32, i32*) #1

declare dso_local i32 @arena_dirty_decay_ms_default_get(...) #1

declare dso_local i32 @arena_muzzy_decay_ms_default_get(...) #1

declare dso_local i8* @sz_psz2ind(i32) #1

declare dso_local i32 @extent_avail_new(i32*) #1

declare dso_local i32 @bin_init(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @arena_set(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @nstime_init(i32*, i32) #1

declare dso_local i32 @nstime_update(i32*) #1

declare dso_local i32 @tsdn_null(i32*) #1

declare dso_local i32 @pre_reentrancy(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @tsdn_tsd(i32*) #1

declare dso_local i32 @test_hooks_arena_new_hook(...) #1

declare dso_local i32 @post_reentrancy(i32) #1

declare dso_local i32 @base_delete(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
