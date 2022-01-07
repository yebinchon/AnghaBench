; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_stream_check_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_stream_check_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.kfs_file_info* }
%struct.kfs_file_info = type { %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [114 x i8] c"in %s '%s' zipped header file_hash field (0x%016llx) isn't equal to LEV_ROTATE_TO cur_log_hash field (0x%016llx).\00", align 1
@.str.1 = private unnamed_addr constant [150 x i8] c"in %s '%s' computed file hash (0x%016llx) isn't equal LEV_ROTATE_TO cur_log_hash field (0x%016llx). KFS header probably was truncated during packing.\00", align 1
@.str.2 = private unnamed_addr constant [116 x i8] c"in %s '%s' computed file hash (0x%016llx) isn't equal LEV_ROTATE_TO cur_log_hash field (0x%016llx). No KFS headers.\00", align 1
@.str.3 = private unnamed_addr constant [151 x i8] c"in %s '%s' computed file hash (0x%016llx) isn't equal LEV_ROTATE_TO cur_log_hash field (0x%016llx). file_id_hash in KFS headers is equal to 0x%016llx.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i64)* @stream_check_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_check_hash(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.kfs_file_info*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %119

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = call i64 @stream_is_zipped(%struct.TYPE_9__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.kfs_file_info*, %struct.kfs_file_info** %21, align 8
  %23 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %17
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @type_to_str(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.kfs_file_info*, %struct.kfs_file_info** %39, align 8
  %41 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @log_fatal(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %42, i64 %45, i64 %46)
  br label %63

48:                                               ; preds = %17
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @type_to_str(i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.kfs_file_info*, %struct.kfs_file_info** %56, align 8
  %58 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @log_warning(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %59, i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %48, %31
  br label %119

64:                                               ; preds = %13
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.kfs_file_info*, %struct.kfs_file_info** %68, align 8
  store %struct.kfs_file_info* %69, %struct.kfs_file_info** %8, align 8
  %70 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %71 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @type_to_str(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.kfs_file_info*, %struct.kfs_file_info** %82, align 8
  %84 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 (i8*, i32, i32, i64, i64, ...) @log_error(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %85, i64 %86, i64 %87)
  br label %118

89:                                               ; preds = %64
  %90 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %91 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %89
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @type_to_str(i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.kfs_file_info*, %struct.kfs_file_info** %105, align 8
  %107 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %112 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i8*, i32, i32, i64, i64, ...) @log_error(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %108, i64 %109, i64 %110, i64 %115)
  br label %117

117:                                              ; preds = %97, %89
  br label %118

118:                                              ; preds = %117, %74
  br label %119

119:                                              ; preds = %12, %118, %63
  ret void
}

declare dso_local i64 @stream_is_zipped(%struct.TYPE_9__*) #1

declare dso_local i32 @log_fatal(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @type_to_str(i32) #1

declare dso_local i32 @log_warning(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @log_error(i8*, i32, i32, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
