; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_open.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i64*, i32, i64, i64, i32, i32, %struct.TYPE_23__*, i64, i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_17__*, %struct.TYPE_19__*, i32, i32*, i32*, i8*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_23__*)* }
%struct.TYPE_17__ = type { i64, i32, i64 }
%struct.TYPE_22__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cache:\00", align 1
@DEFAULT_CACHE_MAX_CAPACITY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"cache_max_capacity\00", align 1
@IJK_AV_DICT_MATCH_CASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cache_file_forwards_capacity\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cache_file_close\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cur_file_no\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"only_read_file\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"ijkio cache will use the data that already exists\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [94 x i8] c"ijkio cache exist is error, will delete last_physical_pos = %lld, cur_exist_file_size = %lld\0A\00", align 1
@tree_destroy = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"pthread_mutex_init failed : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"pthread_cond_init failed : %s\0A\00", align 1
@ijkio_cache_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32, i32**)* @ijkio_cache_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ijkio_cache_open(%struct.TYPE_20__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %19 = icmp ne %struct.TYPE_21__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = call i32 @IJKAVERROR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %630

23:                                               ; preds = %4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 20
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 20
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = icmp eq %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %630

34:                                               ; preds = %23
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 25
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 17
  store i8* null, i8** %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @ijk_av_strstart(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7)
  %48 = load i8*, i8** @DEFAULT_CACHE_MAX_CAPACITY, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 24
  store i8* %48, i8** %50, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %13, align 8
  %51 = load i32**, i32*** %9, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %54 = call %struct.TYPE_22__* @ijk_av_dict_get(i32* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %53)
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %13, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %56 = icmp ne %struct.TYPE_22__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %34
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @strtoll(i32 %60, i32* null, i32 10)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 24
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %34
  %65 = load i32**, i32*** %9, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %68 = call %struct.TYPE_22__* @ijk_av_dict_get(i32* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %67)
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %13, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %70 = icmp ne %struct.TYPE_22__* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @strtoll(i32 %74, i32* null, i32 10)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 17
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %71, %64
  %79 = load i32**, i32*** %9, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %82 = call %struct.TYPE_22__* @ijk_av_dict_get(i32* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %81)
  store %struct.TYPE_22__* %82, %struct.TYPE_22__** %13, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %84 = icmp ne %struct.TYPE_22__* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %78
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @strtol(i32 %88, i32* null, i32 10)
  %90 = trunc i64 %89 to i32
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %85, %78
  %102 = load i32**, i32*** %9, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %105 = call %struct.TYPE_22__* @ijk_av_dict_get(i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %104)
  store %struct.TYPE_22__* %105, %struct.TYPE_22__** %13, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %107 = icmp ne %struct.TYPE_22__* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @strtol(i32 %111, i32* null, i32 10)
  %113 = trunc i64 %112 to i32
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %108, %101
  %117 = load i32**, i32*** %9, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %120 = call %struct.TYPE_22__* @ijk_av_dict_get(i32* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %119)
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %13, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %122 = icmp ne %struct.TYPE_22__* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %116
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @strtol(i32 %126, i32* null, i32 10)
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 17
  store i8* null, i8** %137, align 8
  br label %138

138:                                              ; preds = %135, %123
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 20
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 22
  store i32* %144, i32** %146, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 22
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %139
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 22
  %154 = load i32*, i32** %153, align 8
  %155 = call i64 @strlen(i32* %154)
  %156 = icmp eq i64 0, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151, %139
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %151
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 20
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 16
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 20
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 21
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 20
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 4
  store i64* %178, i64** %180, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 20
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 23
  store i32* %184, i32** %186, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 4
  %189 = load i64*, i64** %188, align 8
  %190 = icmp ne i64* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %160
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 16
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 21
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %196, %191, %160
  store i32 -1, i32* %5, align 4
  br label %630

202:                                              ; preds = %196
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %409, label %207

207:                                              ; preds = %202
  br label %208

208:                                              ; preds = %207
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 20
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = icmp sge i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %208
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 20
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 8
  br label %301

223:                                              ; preds = %208
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 21
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @ijk_map_size(i32 %226)
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %278

229:                                              ; preds = %223
  %230 = load i32, i32* @AV_LOG_INFO, align 4
  %231 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %230, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 22
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* @O_RDWR, align 4
  %236 = load i32, i32* @O_BINARY, align 4
  %237 = or i32 %235, %236
  %238 = call i8* @open(i32* %234, i32 %237, i32 384)
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  store i32 1, i32* %243, align 8
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @SEEK_END, align 4
  %248 = call i64 @lseek(i32 %246, i64 0, i32 %247)
  store i64 %248, i64* %12, align 8
  %249 = load i64, i64* %12, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 4
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* %252, align 8
  %254 = icmp slt i64 %249, %253
  br i1 %254, label %255, label %277

255:                                              ; preds = %229
  %256 = load i32, i32* @AV_LOG_WARNING, align 4
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 4
  %259 = load i64*, i64** %258, align 8
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %12, align 8
  %262 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %256, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0), i64 %260, i64 %261)
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 21
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @tree_destroy, align 4
  %267 = call i32 @ijk_map_traversal_handle(i32 %265, i32* null, i32 %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 21
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @ijk_map_clear(i32 %270)
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 4
  %274 = load i64*, i64** %273, align 8
  store i64 0, i64* %274, align 8
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 6
  store i64 0, i64* %276, align 8
  br label %277

277:                                              ; preds = %255, %229
  br label %293

278:                                              ; preds = %223
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 22
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* @O_RDWR, align 4
  %283 = load i32, i32* @O_BINARY, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @O_CREAT, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @O_TRUNC, align 4
  %288 = or i32 %286, %287
  %289 = call i8* @open(i32* %281, i32 %288, i32 384)
  %290 = ptrtoint i8* %289 to i32
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 5
  store i32 %290, i32* %292, align 8
  br label %293

293:                                              ; preds = %278, %277
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 20
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 1
  store i32 %296, i32* %300, align 8
  br label %301

301:                                              ; preds = %293, %215
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 1
  store i32 1, i32* %308, align 4
  br label %408

309:                                              ; preds = %301
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 4
  %315 = load i64*, i64** %314, align 8
  %316 = load i64, i64* %315, align 8
  %317 = load i32, i32* @SEEK_SET, align 4
  %318 = call i64 @lseek(i32 %312, i64 %316, i32 %317)
  store i64 %318, i64* %14, align 8
  %319 = load i64, i64* %14, align 8
  %320 = icmp slt i64 %319, 0
  br i1 %320, label %321, label %334

321:                                              ; preds = %309
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 1
  store i32 1, i32* %323, align 4
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @close(i32 %326)
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 5
  store i32 -1, i32* %329, align 8
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 20
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 1
  store i32 -1, i32* %333, align 8
  br label %408

334:                                              ; preds = %309
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 4
  %337 = load i64*, i64** %336, align 8
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 6
  store i64 %338, i64* %340, align 8
  br label %341

341:                                              ; preds = %334
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 21
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = call %struct.TYPE_17__* @ijk_map_get(i32 %344, i64 %348)
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 19
  store %struct.TYPE_17__* %349, %struct.TYPE_17__** %351, align 8
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 19
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %353, align 8
  %355 = icmp eq %struct.TYPE_17__* %354, null
  br i1 %355, label %356, label %379

356:                                              ; preds = %341
  %357 = call %struct.TYPE_17__* @calloc(i32 1, i32 4)
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 19
  store %struct.TYPE_17__* %357, %struct.TYPE_17__** %359, align 8
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 4
  %362 = load i64*, i64** %361, align 8
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 19
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 0
  store i64 %363, i64* %367, align 8
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 21
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = sext i32 %373 to i64
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 19
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %376, align 8
  %378 = call i32 @ijk_map_put(i32 %370, i64 %374, %struct.TYPE_17__* %377)
  br label %407

379:                                              ; preds = %341
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 19
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = icmp sgt i32 %384, 204800
  br i1 %385, label %386, label %403

386:                                              ; preds = %379
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 19
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = icmp sgt i64 %391, 0
  br i1 %392, label %393, label %403

393:                                              ; preds = %386
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 19
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 7
  store i64 %398, i64* %400, align 8
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 0
  store i32 1, i32* %402, align 8
  br label %406

403:                                              ; preds = %386, %379
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 0
  store i32 0, i32* %405, align 8
  br label %406

406:                                              ; preds = %403, %393
  br label %407

407:                                              ; preds = %406, %356
  br label %408

408:                                              ; preds = %407, %321, %306
  br label %409

409:                                              ; preds = %408, %202
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 10
  %412 = load i8*, i8** %7, align 8
  %413 = call i32 @ijkio_alloc_url(%struct.TYPE_23__** %411, i8* %412)
  store i32 %413, i32* %11, align 4
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 10
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %415, align 8
  %417 = icmp ne %struct.TYPE_23__* %416, null
  br i1 %417, label %418, label %474

418:                                              ; preds = %409
  %419 = load i32, i32* %11, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %474, label %421

421:                                              ; preds = %418
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 20
  %424 = load %struct.TYPE_19__*, %struct.TYPE_19__** %423, align 8
  %425 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 10
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %427, i32 0, i32 2
  store %struct.TYPE_19__* %424, %struct.TYPE_19__** %428, align 8
  %429 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 7
  %431 = load i64, i64* %430, align 8
  %432 = icmp sle i64 %431, 0
  br i1 %432, label %438, label %433

433:                                              ; preds = %421
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %450

438:                                              ; preds = %433, %421
  %439 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %440 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %439, i32 0, i32 0
  store i32 0, i32* %440, align 8
  %441 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %442 = load i8*, i8** %7, align 8
  %443 = load i32, i32* %8, align 4
  %444 = load i32**, i32*** %9, align 8
  %445 = call i32 @ijkio_cache_io_open(%struct.TYPE_20__* %441, i8* %442, i32 %443, i32** %444)
  store i32 %445, i32* %11, align 4
  %446 = load i32, i32* %11, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %438
  br label %614

449:                                              ; preds = %438
  br label %473

450:                                              ; preds = %433
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 7
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %454, i32 0, i32 19
  %456 = load %struct.TYPE_17__*, %struct.TYPE_17__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %456, i32 0, i32 2
  store i64 %453, i64* %457, align 8
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i32 0, i32 11
  %460 = load i32**, i32*** %9, align 8
  %461 = load i32*, i32** %460, align 8
  %462 = call i32 @ijk_av_dict_copy(i64* %459, i32* %461, i32 0)
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 18
  %465 = load i32, i32* %464, align 8
  %466 = load i8*, i8** %7, align 8
  %467 = call i32 @strcpy(i32 %465, i8* %466)
  %468 = load i32, i32* %8, align 4
  %469 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %470 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %469, i32 0, i32 8
  store i32 %468, i32* %470, align 8
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %472 = call i32 @call_inject_statistic(%struct.TYPE_20__* %471)
  br label %473

473:                                              ; preds = %450, %449
  br label %474

474:                                              ; preds = %473, %418, %409
  %475 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %475, i32 0, i32 12
  %477 = call i32 @pthread_mutex_init(i32* %476, i32* null)
  store i32 %477, i32* %11, align 4
  %478 = load i32, i32* %11, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %485

480:                                              ; preds = %474
  %481 = load i32, i32* @AV_LOG_ERROR, align 4
  %482 = load i32, i32* %11, align 4
  %483 = call i32 @av_err2str(i32 %482)
  %484 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %481, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %483)
  br label %563

485:                                              ; preds = %474
  %486 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %487 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %486, i32 0, i32 13
  %488 = call i32 @pthread_cond_init(i32* %487, i32* null)
  store i32 %488, i32* %11, align 4
  %489 = load i32, i32* %11, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %485
  %492 = load i32, i32* @AV_LOG_ERROR, align 4
  %493 = load i32, i32* %11, align 4
  %494 = call i32 @av_err2str(i32 %493)
  %495 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %492, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %494)
  br label %559

496:                                              ; preds = %485
  %497 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %498 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %497, i32 0, i32 14
  %499 = call i32 @pthread_cond_init(i32* %498, i32* null)
  store i32 %499, i32* %11, align 4
  %500 = load i32, i32* %11, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %507

502:                                              ; preds = %496
  %503 = load i32, i32* @AV_LOG_ERROR, align 4
  %504 = load i32, i32* %11, align 4
  %505 = call i32 @av_err2str(i32 %504)
  %506 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %503, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %505)
  br label %555

507:                                              ; preds = %496
  %508 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %509 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %508, i32 0, i32 15
  %510 = call i32 @pthread_cond_init(i32* %509, i32* null)
  store i32 %510, i32* %11, align 4
  %511 = load i32, i32* %11, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %518

513:                                              ; preds = %507
  %514 = load i32, i32* @AV_LOG_ERROR, align 4
  %515 = load i32, i32* %11, align 4
  %516 = call i32 @av_err2str(i32 %515)
  %517 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %514, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %516)
  br label %551

518:                                              ; preds = %507
  %519 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %520 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %546, label %523

523:                                              ; preds = %518
  %524 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %525 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %524, i32 0, i32 17
  %526 = load i8*, i8** %525, align 8
  %527 = icmp ne i8* %526, null
  br i1 %527, label %528, label %546

528:                                              ; preds = %523
  %529 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %530 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %529, i32 0, i32 9
  store i32 1, i32* %530, align 4
  %531 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %532 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %531, i32 0, i32 16
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* @ijkio_cache_task, align 4
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %536 = call i32 @ijk_threadpool_add(i32 %533, i32 %534, %struct.TYPE_20__* %535, i32* null, i32 0)
  store i32 %536, i32* %11, align 4
  %537 = load i32, i32* %11, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %545

539:                                              ; preds = %528
  %540 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %541 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %540, i32 0, i32 9
  store i32 0, i32* %541, align 4
  %542 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %543 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %542, i32 0, i32 15
  %544 = call i32 @pthread_cond_signal(i32* %543)
  br label %547

545:                                              ; preds = %528
  br label %546

546:                                              ; preds = %545, %523, %518
  store i32 0, i32* %5, align 4
  br label %630

547:                                              ; preds = %539
  %548 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %549 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %548, i32 0, i32 15
  %550 = call i32 @pthread_cond_destroy(i32* %549)
  br label %551

551:                                              ; preds = %547, %513
  %552 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %553 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %552, i32 0, i32 14
  %554 = call i32 @pthread_cond_destroy(i32* %553)
  br label %555

555:                                              ; preds = %551, %502
  %556 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %557 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %556, i32 0, i32 13
  %558 = call i32 @pthread_cond_destroy(i32* %557)
  br label %559

559:                                              ; preds = %555, %491
  %560 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %561 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %560, i32 0, i32 12
  %562 = call i32 @pthread_mutex_destroy(i32* %561)
  br label %563

563:                                              ; preds = %559, %480
  %564 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %565 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %578

568:                                              ; preds = %563
  %569 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %569, i32 0, i32 11
  %571 = load i64, i64* %570, align 8
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %577

573:                                              ; preds = %568
  %574 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %575 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %574, i32 0, i32 11
  %576 = call i32 @ijk_av_dict_free(i64* %575)
  br label %577

577:                                              ; preds = %573, %568
  br label %613

578:                                              ; preds = %563
  %579 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %580 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %579, i32 0, i32 10
  %581 = load %struct.TYPE_23__*, %struct.TYPE_23__** %580, align 8
  %582 = icmp ne %struct.TYPE_23__* %581, null
  br i1 %582, label %583, label %612

583:                                              ; preds = %578
  %584 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %585 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %584, i32 0, i32 10
  %586 = load %struct.TYPE_23__*, %struct.TYPE_23__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %586, i32 0, i32 1
  %588 = load %struct.TYPE_18__*, %struct.TYPE_18__** %587, align 8
  %589 = icmp ne %struct.TYPE_18__* %588, null
  br i1 %589, label %590, label %611

590:                                              ; preds = %583
  %591 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %592 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %591, i32 0, i32 10
  %593 = load %struct.TYPE_23__*, %struct.TYPE_23__** %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %593, i32 0, i32 1
  %595 = load %struct.TYPE_18__*, %struct.TYPE_18__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %595, i32 0, i32 0
  %597 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %596, align 8
  %598 = icmp ne i32 (%struct.TYPE_23__*)* %597, null
  br i1 %598, label %599, label %611

599:                                              ; preds = %590
  %600 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %601 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %600, i32 0, i32 10
  %602 = load %struct.TYPE_23__*, %struct.TYPE_23__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %602, i32 0, i32 1
  %604 = load %struct.TYPE_18__*, %struct.TYPE_18__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %604, i32 0, i32 0
  %606 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %605, align 8
  %607 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %608 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %607, i32 0, i32 10
  %609 = load %struct.TYPE_23__*, %struct.TYPE_23__** %608, align 8
  %610 = call i32 %606(%struct.TYPE_23__* %609)
  br label %611

611:                                              ; preds = %599, %590, %583
  br label %612

612:                                              ; preds = %611, %578
  br label %613

613:                                              ; preds = %612, %577
  br label %614

614:                                              ; preds = %613, %448
  %615 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %616 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %615, i32 0, i32 10
  %617 = load %struct.TYPE_23__*, %struct.TYPE_23__** %616, align 8
  %618 = icmp ne %struct.TYPE_23__* %617, null
  br i1 %618, label %619, label %628

619:                                              ; preds = %614
  %620 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %621 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %620, i32 0, i32 10
  %622 = load %struct.TYPE_23__*, %struct.TYPE_23__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %622, i32 0, i32 0
  %624 = call i32 @ijk_av_freep(%struct.TYPE_23__** %623)
  %625 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %626 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %625, i32 0, i32 10
  %627 = call i32 @ijk_av_freep(%struct.TYPE_23__** %626)
  br label %628

628:                                              ; preds = %619, %614
  %629 = load i32, i32* %11, align 4
  store i32 %629, i32* %5, align 4
  br label %630

630:                                              ; preds = %628, %546, %201, %33, %20
  %631 = load i32, i32* %5, align 4
  ret i32 %631
}

declare dso_local i32 @IJKAVERROR(i32) #1

declare dso_local i32 @ijk_av_strstart(i8*, i8*, i8**) #1

declare dso_local %struct.TYPE_22__* @ijk_av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i8* @strtoll(i32, i32*, i32) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @ijk_map_size(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i8* @open(i32*, i32, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @ijk_map_traversal_handle(i32, i32*, i32) #1

declare dso_local i32 @ijk_map_clear(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.TYPE_17__* @ijk_map_get(i32, i64) #1

declare dso_local %struct.TYPE_17__* @calloc(i32, i32) #1

declare dso_local i32 @ijk_map_put(i32, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @ijkio_alloc_url(%struct.TYPE_23__**, i8*) #1

declare dso_local i32 @ijkio_cache_io_open(%struct.TYPE_20__*, i8*, i32, i32**) #1

declare dso_local i32 @ijk_av_dict_copy(i64*, i32*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @call_inject_statistic(%struct.TYPE_20__*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @ijk_threadpool_add(i32, i32, %struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @ijk_av_dict_free(i64*) #1

declare dso_local i32 @ijk_av_freep(%struct.TYPE_23__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
