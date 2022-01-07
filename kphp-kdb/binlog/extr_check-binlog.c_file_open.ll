; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_file_open.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_20__, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_20__, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@max_log_errors = common dso_local global i64 0, align 8
@stats = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@backups_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@bs_io_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"openning binlog file '%s' in read-only mode failed.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"size(%lld) of '%s' isn't multiple of 4.\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"backup '%s' and binlog '%s' have equal inodes.\00", align 1
@bs_same_inode = common dso_local global i32 0, align 4
@bs_larger = common dso_local global i32 0, align 4
@bs_ok = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"backup '%s' and binlog '%s' have different original file size (%lld and %lld).\00", align 1
@bs_differ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"backup '%s' and binlog '%s' have different header size (%d and %d).\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"backup '%s' and binlog '%s' have different headers.\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"backup '%s' and backup '%s' have equal inodes.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_open(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %9 = call i32 (...) @reset_max_errors_limit()
  %10 = load i64, i64* @max_log_errors, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @stats, i32 0, i32 1), align 8
  %14 = load i64, i64* @max_log_errors, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @stats, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @stats, i32 0, i32 0), align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @reset_max_errors_limit()
  br label %20

20:                                               ; preds = %18, %12
  br label %21

21:                                               ; preds = %20, %1
  %22 = call i32 (...) @find_backups()
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @basename(i32 %29)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call %struct.TYPE_19__* @get_backup_file_f(i8* %31, i32 %33, i32 0)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %36, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %4, align 8
  br label %40

40:                                               ; preds = %79, %21
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = icmp ne %struct.TYPE_19__* %41, null
  br i1 %42, label %43, label %83

43:                                               ; preds = %40
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = load i8*, i8** @backups_dir, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = add nsw i32 %47, %49
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i8* @zmalloc(i32 %53)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i8*, i8** @backups_dir, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @snprintf(i8* %55, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @stream_open(%struct.TYPE_20__* %68, %struct.TYPE_21__* null, i8* %69, i32 1)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %43
  %73 = load i32, i32* @bs_io_error, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %43
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %4, align 8
  br label %40

83:                                               ; preds = %40
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = call i64 @stream_open(%struct.TYPE_20__* %85, %struct.TYPE_21__* %88, i8* null, i32 0)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = call i32 (i8*, i64, ...) @log_fatal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  store i32 -1, i32* %2, align 4
  br label %427

101:                                              ; preds = %83
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = srem i32 %105, 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %101
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, i64, ...) @log_fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %113, i32 %121)
  store i32 -1, i32* %2, align 4
  br label %427

123:                                              ; preds = %101
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %4, align 8
  br label %127

127:                                              ; preds = %350, %123
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = icmp ne %struct.TYPE_19__* %128, null
  br i1 %129, label %130, label %354

130:                                              ; preds = %127
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %349, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = call i64 @stream_same_inode(%struct.TYPE_20__* %137, %struct.TYPE_20__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %135
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %158)
  %160 = load i32, i32* @bs_same_inode, align 4
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %142, %135
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %169, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %165
  %176 = load i32, i32* @bs_larger, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %165
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @bs_ok, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %348

187:                                              ; preds = %181
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 1
  %190 = call i64 @stream_is_zipped(%struct.TYPE_20__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %348

192:                                              ; preds = %187
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = call i64 @stream_is_zipped(%struct.TYPE_20__* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %348

197:                                              ; preds = %192
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %201, %205
  br i1 %206, label %207, label %238

207:                                              ; preds = %197
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i8*, i32, i32, ...) @log_warning(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %215, i32 %223, i32 %227, i32 %231)
  %233 = load i32, i32* @bs_differ, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %347

238:                                              ; preds = %197
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %246, %254
  br i1 %255, label %256, label %295

256:                                              ; preds = %238
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 (i8*, i32, i32, ...) @log_warning(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %264, i32 %272, i32 %280, i32 %288)
  %290 = load i32, i32* @bs_differ, align 4
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %346

295:                                              ; preds = %238
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i64 @memcmp(i32 %303, i32 %311, i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %345

322:                                              ; preds = %295
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 1
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 (i8*, i32, i32, ...) @log_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %330, i32 %338)
  %340 = load i32, i32* @bs_differ, align 4
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  br label %345

345:                                              ; preds = %322, %295
  br label %346

346:                                              ; preds = %345, %256
  br label %347

347:                                              ; preds = %346, %207
  br label %348

348:                                              ; preds = %347, %192, %187, %181
  br label %349

349:                                              ; preds = %348, %130
  br label %350

350:                                              ; preds = %349
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 3
  %353 = load %struct.TYPE_19__*, %struct.TYPE_19__** %352, align 8
  store %struct.TYPE_19__* %353, %struct.TYPE_19__** %4, align 8
  br label %127

354:                                              ; preds = %127
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %356, align 8
  store %struct.TYPE_19__* %357, %struct.TYPE_19__** %4, align 8
  br label %358

358:                                              ; preds = %422, %354
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %360 = icmp ne %struct.TYPE_19__* %359, null
  br i1 %360, label %361, label %426

361:                                              ; preds = %358
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @bs_ok, align 4
  %366 = icmp ne i32 %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  br label %422

368:                                              ; preds = %361
  %369 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %369, i32 0, i32 3
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %370, align 8
  store %struct.TYPE_19__* %371, %struct.TYPE_19__** %8, align 8
  br label %372

372:                                              ; preds = %417, %368
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %374 = icmp ne %struct.TYPE_19__* %373, null
  br i1 %374, label %375, label %421

375:                                              ; preds = %372
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @bs_ok, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %416

381:                                              ; preds = %375
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %384, i32 0, i32 1
  %386 = call i64 @stream_same_inode(%struct.TYPE_20__* %383, %struct.TYPE_20__* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %416

388:                                              ; preds = %381
  %389 = load i32, i32* @bs_same_inode, align 4
  %390 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = or i32 %392, %389
  store i32 %393, i32* %391, align 8
  %394 = load i32, i32* @bs_same_inode, align 4
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = or i32 %397, %394
  store i32 %398, i32* %396, align 8
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_17__*, %struct.TYPE_17__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 1
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %406, i32 %414)
  br label %416

416:                                              ; preds = %388, %381, %375
  br label %417

417:                                              ; preds = %416
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 3
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** %419, align 8
  store %struct.TYPE_19__* %420, %struct.TYPE_19__** %8, align 8
  br label %372

421:                                              ; preds = %372
  br label %422

422:                                              ; preds = %421, %367
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 3
  %425 = load %struct.TYPE_19__*, %struct.TYPE_19__** %424, align 8
  store %struct.TYPE_19__* %425, %struct.TYPE_19__** %4, align 8
  br label %358

426:                                              ; preds = %358
  store i32 0, i32* %2, align 4
  br label %427

427:                                              ; preds = %426, %108, %91
  %428 = load i32, i32* %2, align 4
  ret i32 %428
}

declare dso_local i32 @reset_max_errors_limit(...) #1

declare dso_local i32 @find_backups(...) #1

declare dso_local i8* @basename(i32) #1

declare dso_local %struct.TYPE_19__* @get_backup_file_f(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @stream_open(%struct.TYPE_20__*, %struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @log_fatal(i8*, i64, ...) #1

declare dso_local i64 @stream_same_inode(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @log_error(i8*, i32, i32) #1

declare dso_local i64 @stream_is_zipped(%struct.TYPE_20__*) #1

declare dso_local i32 @log_warning(i8*, i32, i32, ...) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
