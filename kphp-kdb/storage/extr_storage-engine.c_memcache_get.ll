; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"memcache_get (c = %p, %.*s)\0A\00", align 1
@get_queries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%lld,%1023s\00", align 1
@get_file_queries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%lld,%x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"HIDE\0A\00", align 1
@get_hide_queries = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"**hide doc**%x\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"path: %s\0A\00", align 1
@get_volume_misses = common dso_local global i32 0, align 4
@get_misses = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i64 0, align 8
@force_write_index = common dso_local global i64 0, align 8
@ct_unknown = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"check_file\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%lld,%lld,%lf\00", align 1
@value_buff = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"volumes\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"VALUE %s 1 %d\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"dirs\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"enable_file\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"%lld,%d\00", align 1
@STORAGE_ERR_SIZE_MISMATCH = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"enable_file%lld,%d returns error code %d.\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"disable_file\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"scandir\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Path wasn't found\00", align 1
@STORAGE_ERR_SCANDIR_MULTIPLE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [32 x i8] c"Couldn't scandir more than once\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.connection* %25, i32 %26, i8* %27)
  %29 = load i32, i32* @get_queries, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @get_queries, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @get_at_prefix_length(i8* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 4
  br i1 %42, label %43, label %56

43:                                               ; preds = %3
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @memcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %51 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %9, i8* %50)
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @get_file_queries, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @get_file_queries, align 4
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %47, %43, %3
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %57, 4
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @memcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64* %9, i32* %12)
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* @get_hide_queries, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @get_hide_queries, align 4
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @snprintf(i8* %72, i32 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %75, 1024
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  store i32 1, i32* %11, align 4
  br label %79

79:                                               ; preds = %68, %63, %59, %56
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %79
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %84 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  %85 = load i64, i64* %9, align 8
  %86 = call %struct.TYPE_7__* @get_volume_f(i64 %85, i32 0)
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %13, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %88 = icmp eq %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32, i32* @get_volume_misses, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @get_volume_misses, align 4
  %92 = load i32, i32* @get_misses, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @get_misses, align 4
  store i32 0, i32* %4, align 4
  br label %475

94:                                               ; preds = %82
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* @binlog_disabled, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* @force_write_index, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %99, %94
  store i32 0, i32* %4, align 4
  br label %475

106:                                              ; preds = %102
  %107 = load %struct.connection*, %struct.connection** %5, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %114 = load i32, i32* @ct_unknown, align 4
  %115 = call i32 @create_write_thread(%struct.connection* %107, i32 0, %struct.TYPE_7__* %108, i8* %112, i8* %113, i32* null, i32 0, i32 %114)
  store i32 0, i32* %4, align 4
  br label %475

116:                                              ; preds = %79
  store double 0.000000e+00, double* %15, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp sge i32 %117, 10
  br i1 %118, label %119, label %179

119:                                              ; preds = %116
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @memcmp(i8* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %179, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 10
  %126 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i64* %9, i64* %16, double* %15)
  store i32 %126, i32* %14, align 4
  %127 = icmp sge i32 %126, 2
  br i1 %127, label %128, label %179

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store double 9.900000e+01, double* %15, align 8
  br label %132

132:                                              ; preds = %131, %128
  %133 = load double, double* %15, align 8
  %134 = fcmp olt double %133, 0.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store double 0.000000e+00, double* %15, align 8
  br label %136

136:                                              ; preds = %135, %132
  %137 = load double, double* %15, align 8
  %138 = fcmp ogt double %137, 1.000000e+02
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store double 1.000000e+02, double* %15, align 8
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i64, i64* %9, align 8
  %142 = call %struct.TYPE_7__* @get_volume_f(i64 %141, i32 0)
  store %struct.TYPE_7__* %142, %struct.TYPE_7__** %17, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %144 = icmp eq %struct.TYPE_7__* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i32, i32* @get_volume_misses, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @get_volume_misses, align 4
  %148 = load i32, i32* @get_misses, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @get_misses, align 4
  store i32 0, i32* %4, align 4
  br label %475

150:                                              ; preds = %140
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = load i64, i64* @binlog_disabled, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i64, i64* @force_write_index, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158, %155, %150
  store i32 0, i32* %4, align 4
  br label %475

162:                                              ; preds = %158
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %164 = load double, double* %15, align 8
  %165 = fmul double %164, 1.000000e-02
  %166 = load i64, i64* %16, align 8
  %167 = call i32 @storage_volume_check_file(%struct.TYPE_7__* %163, double %165, i64 %166)
  store i32 %167, i32* %14, align 4
  %168 = load %struct.connection*, %struct.connection** %5, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = sub i64 0, %171
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i8*, i8** @value_buff, align 8
  %175 = load i8*, i8** @value_buff, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %176)
  %178 = call i32 @return_one_key(%struct.connection* %168, i8* %173, i8* %174, i32 %177)
  store i32 %178, i32* %4, align 4
  br label %475

179:                                              ; preds = %123, %119, %116
  %180 = load i32, i32* %7, align 4
  %181 = icmp eq i32 %180, 7
  br i1 %181, label %182, label %199

182:                                              ; preds = %179
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 @memcmp(i8* %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 7)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %199, label %186

186:                                              ; preds = %182
  %187 = call i32 (...) @gen_volumes_list()
  store i32 %187, i32* %14, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %186
  %190 = load %struct.connection*, %struct.connection** %5, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = sub i64 0, %193
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = load i8*, i8** @value_buff, align 8
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @return_one_key(%struct.connection* %190, i8* %195, i8* %196, i32 %197)
  store i32 %198, i32* %4, align 4
  br label %475

199:                                              ; preds = %186, %182, %179
  %200 = load i32, i32* %7, align 4
  %201 = icmp sge i32 %200, 6
  br i1 %201, label %202, label %243

202:                                              ; preds = %199
  %203 = load i8*, i8** %6, align 8
  %204 = call i32 @memcmp(i8* %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 6)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %243, label %206

206:                                              ; preds = %202
  %207 = load i8*, i8** %6, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 6
  %209 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64* %9)
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %243

211:                                              ; preds = %206
  %212 = load i8*, i8** @value_buff, align 8
  %213 = load i64, i64* %9, align 8
  %214 = call i32 @get_volume_serialized(i8* %212, i64 %213)
  store i32 %214, i32* %14, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %243

216:                                              ; preds = %211
  %217 = load %struct.connection*, %struct.connection** %5, align 8
  %218 = getelementptr inbounds %struct.connection, %struct.connection* %217, i32 0, i32 0
  %219 = load i8*, i8** @value_buff, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8*, i8** @value_buff, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8*, i8** %6, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 0, %229
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  %232 = load i32, i32* %14, align 4
  %233 = call i32 (i8*, i8*, ...) @sprintf(i8* %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %231, i32 %232)
  %234 = call i32 @write_out(i32* %218, i8* %222, i32 %233)
  %235 = load %struct.connection*, %struct.connection** %5, align 8
  %236 = getelementptr inbounds %struct.connection, %struct.connection* %235, i32 0, i32 0
  %237 = load i8*, i8** @value_buff, align 8
  %238 = load i32, i32* %14, align 4
  %239 = call i32 @write_out(i32* %236, i8* %237, i32 %238)
  %240 = load %struct.connection*, %struct.connection** %5, align 8
  %241 = getelementptr inbounds %struct.connection, %struct.connection* %240, i32 0, i32 0
  %242 = call i32 @write_out(i32* %241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  store i32 0, i32* %4, align 4
  br label %475

243:                                              ; preds = %211, %206, %202, %199
  %244 = load i32, i32* %7, align 4
  %245 = icmp sge i32 %244, 6
  br i1 %245, label %246, label %270

246:                                              ; preds = %243
  %247 = load i8*, i8** %6, align 8
  %248 = call i32 @memcmp(i8* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 6)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %270, label %250

250:                                              ; preds = %246
  %251 = load i8*, i8** %6, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 6
  %253 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64* %9)
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %270

255:                                              ; preds = %250
  %256 = load i8*, i8** @value_buff, align 8
  %257 = load i64, i64* %9, align 8
  %258 = call i32 @get_volume_text(i8* %256, i64 %257)
  store i32 %258, i32* %14, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %255
  %261 = load %struct.connection*, %struct.connection** %5, align 8
  %262 = load i8*, i8** %6, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = sub i64 0, %264
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i8*, i8** @value_buff, align 8
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @return_one_key(%struct.connection* %261, i8* %266, i8* %267, i32 %268)
  store i32 %269, i32* %4, align 4
  br label %475

270:                                              ; preds = %255, %250, %246, %243
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, 4
  br i1 %272, label %273, label %310

273:                                              ; preds = %270
  %274 = load i8*, i8** %6, align 8
  %275 = call i32 @memcmp(i8* %274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %310, label %277

277:                                              ; preds = %273
  %278 = load i8*, i8** @value_buff, align 8
  %279 = call i32 @get_dirs_serialized(i8* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %310, label %281

281:                                              ; preds = %277
  %282 = load i8*, i8** @value_buff, align 8
  %283 = call i32 @strlen(i8* %282)
  store i32 %283, i32* %14, align 4
  %284 = load %struct.connection*, %struct.connection** %5, align 8
  %285 = getelementptr inbounds %struct.connection, %struct.connection* %284, i32 0, i32 0
  %286 = load i8*, i8** @value_buff, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = load i8*, i8** @value_buff, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  %294 = load i8*, i8** %6, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = sub i64 0, %296
  %298 = getelementptr inbounds i8, i8* %294, i64 %297
  %299 = load i32, i32* %14, align 4
  %300 = call i32 (i8*, i8*, ...) @sprintf(i8* %293, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %298, i32 %299)
  %301 = call i32 @write_out(i32* %285, i8* %289, i32 %300)
  %302 = load %struct.connection*, %struct.connection** %5, align 8
  %303 = getelementptr inbounds %struct.connection, %struct.connection* %302, i32 0, i32 0
  %304 = load i8*, i8** @value_buff, align 8
  %305 = load i32, i32* %14, align 4
  %306 = call i32 @write_out(i32* %303, i8* %304, i32 %305)
  %307 = load %struct.connection*, %struct.connection** %5, align 8
  %308 = getelementptr inbounds %struct.connection, %struct.connection* %307, i32 0, i32 0
  %309 = call i32 @write_out(i32* %308, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  store i32 0, i32* %4, align 4
  br label %475

310:                                              ; preds = %277, %273, %270
  %311 = load i32, i32* %7, align 4
  %312 = icmp sge i32 %311, 5
  br i1 %312, label %313, label %329

313:                                              ; preds = %310
  %314 = load i8*, i8** %6, align 8
  %315 = call i32 @strncmp(i8* %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 5)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %329, label %317

317:                                              ; preds = %313
  %318 = load %struct.connection*, %struct.connection** %5, align 8
  %319 = call i32 @storage_prepare_stats(%struct.connection* %318)
  store i32 %319, i32* %18, align 4
  %320 = load %struct.connection*, %struct.connection** %5, align 8
  %321 = load i8*, i8** %6, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = sub i64 0, %323
  %325 = getelementptr inbounds i8, i8* %321, i64 %324
  %326 = load i8*, i8** @stats_buff, align 8
  %327 = load i32, i32* %18, align 4
  %328 = call i32 @return_one_key(%struct.connection* %320, i8* %325, i8* %326, i32 %327)
  store i32 %328, i32* %4, align 4
  br label %475

329:                                              ; preds = %313, %310
  store i32 -1, i32* %19, align 4
  %330 = load i32, i32* %7, align 4
  %331 = icmp sge i32 %330, 11
  br i1 %331, label %332, label %384

332:                                              ; preds = %329
  %333 = load i8*, i8** %6, align 8
  %334 = call i32 @memcmp(i8* %333, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 11)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %384, label %336

336:                                              ; preds = %332
  %337 = load i8*, i8** %6, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 11
  %339 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %338, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i64* %9, i32* %19)
  %340 = icmp eq i32 %339, 2
  br i1 %340, label %341, label %384

341:                                              ; preds = %336
  %342 = load i64, i64* %9, align 8
  %343 = call %struct.TYPE_7__* @get_volume_f(i64 %342, i32 0)
  store %struct.TYPE_7__* %343, %struct.TYPE_7__** %20, align 8
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %345 = icmp eq %struct.TYPE_7__* %344, null
  br i1 %345, label %346, label %349

346:                                              ; preds = %341
  %347 = load i32, i32* @get_misses, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* @get_misses, align 4
  store i32 0, i32* %4, align 4
  br label %475

349:                                              ; preds = %341
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %351 = load i32, i32* %19, align 4
  %352 = call i32 @storage_enable_binlog_file(%struct.TYPE_7__* %350, i32 %351)
  store i32 %352, i32* %14, align 4
  %353 = load i32, i32* %14, align 4
  %354 = load i32, i32* @STORAGE_ERR_SIZE_MISMATCH, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %364

356:                                              ; preds = %349
  %357 = load %struct.connection*, %struct.connection** %5, align 8
  %358 = load i8*, i8** %6, align 8
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = sub i64 0, %360
  %362 = getelementptr inbounds i8, i8* %358, i64 %361
  %363 = call i32 @return_one_key(%struct.connection* %357, i8* %362, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 1)
  store i32 %363, i32* %4, align 4
  br label %475

364:                                              ; preds = %349
  %365 = load i32, i32* %14, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = load i64, i64* %9, align 8
  %369 = load i32, i32* %19, align 4
  %370 = load i32, i32* %14, align 4
  %371 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i64 %368, i32 %369, i32 %370)
  br label %372

372:                                              ; preds = %367, %364
  %373 = load %struct.connection*, %struct.connection** %5, align 8
  %374 = load i8*, i8** %6, align 8
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = sub i64 0, %376
  %378 = getelementptr inbounds i8, i8* %374, i64 %377
  %379 = load i32, i32* %14, align 4
  %380 = icmp slt i32 %379, 0
  %381 = zext i1 %380 to i64
  %382 = select i1 %380, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %383 = call i32 @return_one_key(%struct.connection* %373, i8* %378, i8* %382, i32 1)
  store i32 %383, i32* %4, align 4
  br label %475

384:                                              ; preds = %336, %332, %329
  %385 = load i32, i32* %7, align 4
  %386 = icmp sge i32 %385, 12
  br i1 %386, label %387, label %419

387:                                              ; preds = %384
  %388 = load i8*, i8** %6, align 8
  %389 = call i32 @memcmp(i8* %388, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 12)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %419, label %391

391:                                              ; preds = %387
  %392 = load i8*, i8** %6, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 12
  %394 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %393, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i64* %9, i32* %19)
  %395 = icmp eq i32 %394, 2
  br i1 %395, label %396, label %419

396:                                              ; preds = %391
  %397 = load i64, i64* %9, align 8
  %398 = call %struct.TYPE_7__* @get_volume_f(i64 %397, i32 0)
  store %struct.TYPE_7__* %398, %struct.TYPE_7__** %21, align 8
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %400 = icmp eq %struct.TYPE_7__* %399, null
  br i1 %400, label %401, label %404

401:                                              ; preds = %396
  %402 = load i32, i32* @get_misses, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* @get_misses, align 4
  store i32 0, i32* %4, align 4
  br label %475

404:                                              ; preds = %396
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %406 = load i32, i32* %19, align 4
  %407 = call i32 @storage_close_binlog_file(%struct.TYPE_7__* %405, i32 %406)
  store i32 %407, i32* %14, align 4
  %408 = load %struct.connection*, %struct.connection** %5, align 8
  %409 = load i8*, i8** %6, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = sub i64 0, %411
  %413 = getelementptr inbounds i8, i8* %409, i64 %412
  %414 = load i32, i32* %14, align 4
  %415 = icmp slt i32 %414, 0
  %416 = zext i1 %415 to i64
  %417 = select i1 %415, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %418 = call i32 @return_one_key(%struct.connection* %408, i8* %413, i8* %417, i32 1)
  store i32 %418, i32* %4, align 4
  br label %475

419:                                              ; preds = %391, %387, %384
  %420 = load i32, i32* %7, align 4
  %421 = icmp sge i32 %420, 7
  br i1 %421, label %422, label %472

422:                                              ; preds = %419
  %423 = load i8*, i8** %6, align 8
  %424 = call i32 @memcmp(i8* %423, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 7)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %472, label %426

426:                                              ; preds = %422
  %427 = load i8*, i8** %6, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 7
  %429 = call i32 @get_dir_id_by_name(i8* %428)
  store i32 %429, i32* %23, align 4
  %430 = load i32, i32* %23, align 4
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %443

432:                                              ; preds = %426
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8** %22, align 8
  %433 = load %struct.connection*, %struct.connection** %5, align 8
  %434 = load i8*, i8** %6, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sext i32 %435 to i64
  %437 = sub i64 0, %436
  %438 = getelementptr inbounds i8, i8* %434, i64 %437
  %439 = load i8*, i8** %22, align 8
  %440 = load i8*, i8** %22, align 8
  %441 = call i32 @strlen(i8* %440)
  %442 = call i32 @return_one_key(%struct.connection* %433, i8* %438, i8* %439, i32 %441)
  store i32 %442, i32* %4, align 4
  br label %475

443:                                              ; preds = %426
  %444 = load i32, i32* %23, align 4
  %445 = call i32 @storage_scan_dir(i32 %444)
  store i32 %445, i32* %24, align 4
  %446 = load i32, i32* %24, align 4
  %447 = load i32, i32* @STORAGE_ERR_SCANDIR_MULTIPLE, align 4
  %448 = icmp eq i32 %446, %447
  br i1 %448, label %449, label %460

449:                                              ; preds = %443
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0), i8** %22, align 8
  %450 = load %struct.connection*, %struct.connection** %5, align 8
  %451 = load i8*, i8** %6, align 8
  %452 = load i32, i32* %8, align 4
  %453 = sext i32 %452 to i64
  %454 = sub i64 0, %453
  %455 = getelementptr inbounds i8, i8* %451, i64 %454
  %456 = load i8*, i8** %22, align 8
  %457 = load i8*, i8** %22, align 8
  %458 = call i32 @strlen(i8* %457)
  %459 = call i32 @return_one_key(%struct.connection* %450, i8* %455, i8* %456, i32 %458)
  store i32 %459, i32* %4, align 4
  br label %475

460:                                              ; preds = %443
  %461 = load %struct.connection*, %struct.connection** %5, align 8
  %462 = load i8*, i8** %6, align 8
  %463 = load i32, i32* %8, align 4
  %464 = sext i32 %463 to i64
  %465 = sub i64 0, %464
  %466 = getelementptr inbounds i8, i8* %462, i64 %465
  %467 = load i8*, i8** @value_buff, align 8
  %468 = load i8*, i8** @value_buff, align 8
  %469 = load i32, i32* %24, align 4
  %470 = call i32 (i8*, i8*, ...) @sprintf(i8* %468, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %469)
  %471 = call i32 @return_one_key(%struct.connection* %461, i8* %466, i8* %467, i32 %470)
  store i32 %471, i32* %4, align 4
  br label %475

472:                                              ; preds = %422, %419
  %473 = load i32, i32* @get_misses, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* @get_misses, align 4
  store i32 0, i32* %4, align 4
  br label %475

475:                                              ; preds = %472, %460, %449, %432, %404, %401, %372, %356, %346, %317, %281, %260, %216, %189, %162, %161, %145, %106, %105, %89
  %476 = load i32, i32* %4, align 4
  ret i32 %476
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @get_volume_f(i64, i32) #1

declare dso_local i32 @create_write_thread(%struct.connection*, i32, %struct.TYPE_7__*, i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @storage_volume_check_file(%struct.TYPE_7__*, double, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @gen_volumes_list(...) #1

declare dso_local i32 @get_volume_serialized(i8*, i64) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @get_volume_text(i8*, i64) #1

declare dso_local i32 @get_dirs_serialized(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @storage_prepare_stats(%struct.connection*) #1

declare dso_local i32 @storage_enable_binlog_file(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @storage_close_binlog_file(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @get_dir_id_by_name(i8*) #1

declare dso_local i32 @storage_scan_dir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
