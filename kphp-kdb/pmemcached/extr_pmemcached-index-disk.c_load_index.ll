; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_load_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32*, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }

@PMEMCACHED_TYPE_INDEX_DISK = common dso_local global i32 0, align 4
@index_type = common dso_local global i32 0, align 4
@MAX_METAFILES = common dso_local global i64 0, align 8
@prev_use = common dso_local global i64* null, align 8
@next_use = common dso_local global i64* null, align 8
@index_size = common dso_local global i64 0, align 8
@jump_log_ts = common dso_local global i64 0, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@jump_log_crc32 = common dso_local global i64 0, align 8
@snapshot_size = common dso_local global i32 0, align 4
@metafile_mode = common dso_local global i32 0, align 4
@idx_fd = common dso_local global i32 0, align 4
@PMEMCACHED_INDEX_MAGIC = common dso_local global i64 0, align 8
@PMEMCACHED_INDEX_MAGIC_OLD = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"index file is not for pmemcached\0A\00", align 1
@use_metafile_crc32 = common dso_local global i32 0, align 4
@metafile_number = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%d metafiles readed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Fatal: too many metafiles\0A\00", align 1
@tot_records = common dso_local global i32 0, align 4
@metafile_header_tmp = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@metafiles = common dso_local global %struct.TYPE_16__* null, align 8
@init_memory = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"read metafile %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"number of records = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Total %lld records in index\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_index(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load i32, i32* @PMEMCACHED_TYPE_INDEX_DISK, align 4
  store i32 %7, i32* @index_type, align 4
  %8 = load i64, i64* @MAX_METAFILES, align 8
  %9 = load i64*, i64** @prev_use, align 8
  %10 = load i64, i64* @MAX_METAFILES, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  store i64 %8, i64* %11, align 8
  %12 = load i64, i64* @MAX_METAFILES, align 8
  %13 = load i64*, i64** @next_use, align 8
  %14 = load i64, i64* @MAX_METAFILES, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 %12, i64* %15, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = icmp eq %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i64 0, i64* @index_size, align 8
  store i64 0, i64* @jump_log_ts, align 8
  store i64 0, i64* @jump_log_pos, align 8
  store i64 0, i64* @jump_log_crc32, align 8
  store i32 0, i32* @snapshot_size, align 4
  store i32 0, i32* %2, align 4
  br label %192

19:                                               ; preds = %1
  store i32 1, i32* @metafile_mode, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* @idx_fd, align 4
  %23 = load i32, i32* @idx_fd, align 4
  %24 = call i32 @read(i32 %23, %struct.TYPE_14__* %4, i32 48)
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PMEMCACHED_INDEX_MAGIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PMEMCACHED_INDEX_MAGIC_OLD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %192

37:                                               ; preds = %29, %19
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PMEMCACHED_INDEX_MAGIC_OLD, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* @use_metafile_crc32, align 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* @jump_log_ts, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* @jump_log_pos, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* @jump_log_crc32, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* @metafile_number, align 8
  %55 = load i32, i32* @verbosity, align 4
  %56 = icmp sge i32 %55, 2
  br i1 %56, label %57, label %62

57:                                               ; preds = %37
  %58 = load i32, i32* @stderr, align 4
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %57, %37
  %63 = load i64, i64* @metafile_number, align 8
  %64 = load i64, i64* @MAX_METAFILES, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %192

69:                                               ; preds = %62
  store i32 0, i32* @tot_records, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %174, %69
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @metafile_number, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %177

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @idx_fd, align 4
  %80 = call i32 @read(i32 %79, %struct.TYPE_14__* @metafile_header_tmp, i32 4)
  %81 = call i32 @upgrade_header(%struct.TYPE_14__* @metafile_header_tmp)
  br label %85

82:                                               ; preds = %75
  %83 = load i32, i32* @idx_fd, align 4
  %84 = call i32 @read(i32 %83, %struct.TYPE_14__* @metafile_header_tmp, i32 4)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @metafile_header_tmp, i32 0, i32 2), align 8
  %87 = sext i32 %86 to i64
  %88 = add i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call %struct.TYPE_15__* @zzmalloc(i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %95, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @metafile_header_tmp, i32 0, i32 2), align 8
  %97 = sext i32 %96 to i64
  %98 = add i64 4, %97
  %99 = load i32, i32* @init_memory, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* @init_memory, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = call i32 @memcpy(%struct.TYPE_15__* %108, %struct.TYPE_14__* @metafile_header_tmp, i32 4)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  %125 = load i32, i32* @idx_fd, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @metafile_header_tmp, i32 0, i32 2), align 8
  %135 = call i32 @read(i32 %125, %struct.TYPE_14__* %133, i32 %134)
  %136 = load i32, i32* @idx_fd, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SEEK_CUR, align 4
  %146 = call i32 @lseek(i32 %136, i32 %144, i32 %145)
  %147 = load i32, i32* @verbosity, align 4
  %148 = icmp sge i32 %147, 3
  br i1 %148, label %149, label %163

149:                                              ; preds = %85
  %150 = load i32, i32* @stderr, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @stderr, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %149, %85
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metafiles, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @tot_records, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* @tot_records, align 4
  br label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %70

177:                                              ; preds = %70
  %178 = load i32, i32* @verbosity, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* @stderr, align 4
  %182 = load i32, i32* @tot_records, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* @index_size, align 8
  %190 = load i32, i32* @init_memory, align 4
  store i32 %190, i32* @snapshot_size, align 4
  %191 = call i32 (...) @pmemcached_register_replay_logevent()
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %184, %66, %34, %18
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @read(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @upgrade_header(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @zzmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @pmemcached_register_replay_logevent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
