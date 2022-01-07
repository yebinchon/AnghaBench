; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_save_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_save_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"save_index\0A\00", align 1
@engine_snapshot_replica = common dso_local global %struct.TYPE_8__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot write index: cannot compute its name\0A\00", align 1
@jump_log_pos = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [101 x i8] c"skipping generation of new snapshot %s for position %lld: snapshot for this position already exists\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"creating index %s at log position %lld\0A\00", align 1
@binlog_disabled = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot create new index file %s: %m\0A\00", align 1
@SUPPORT_INDEX_MAGIC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@log_crc32_complement = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"cannot rename new index file from %s: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_index() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca i64, align 8
  store i8* null, i8** %2, align 8
  %5 = call i32 @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_snapshot_replica, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_snapshot_replica, align 8
  %10 = call i64 (...) @log_cur_pos()
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_snapshot_replica, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @get_new_snapshot_name(%struct.TYPE_8__* %9, i64 %10, i32 %13)
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %8, %0
  %16 = load i8*, i8** %2, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %15
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %18
  %29 = call i64 (...) @log_cur_pos()
  %30 = load i64, i64* @jump_log_pos, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = load i64, i64* @jump_log_pos, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i8* %34, i64 %35)
  store i32 0, i32* %1, align 4
  br label %149

37:                                               ; preds = %28
  %38 = load i64, i64* @verbosity, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = call i64 (...) @log_cur_pos()
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @binlog_disabled, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call i32 (...) @relax_write_log_crc32()
  br label %52

50:                                               ; preds = %45
  %51 = call i32 @relax_log_crc32(i32 0)
  br label %52

52:                                               ; preds = %50, %48
  %53 = call i32 @memset(%struct.TYPE_7__* %3, i32 0, i32 40)
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* @O_CREAT, align 4
  %56 = load i32, i32* @O_TRUNC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @O_WRONLY, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @O_EXCL, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @open(i8* %54, i32 %61, i32 432)
  %63 = load i32*, i32** @fd, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** @fd, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %52
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %52
  %75 = load i32, i32* @SUPPORT_INDEX_MAGIC, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 7
  store i32 %75, i32* %76, align 4
  %77 = call i32 @time(i32* null)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 6
  store i32 %77, i32* %78, align 8
  %79 = call i64 @get_index_header_size(%struct.TYPE_7__* %3)
  store i64 %79, i64* %4, align 8
  %80 = load i32*, i32** @fd, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %4, align 8
  %84 = load i32, i32* @SEEK_SET, align 4
  %85 = call i64 @lseek(i32 %82, i64 %83, i32 %84)
  %86 = load i64, i64* %4, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = call i64 (...) @log_cur_pos()
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  store i64 %90, i64* %91, align 8
  %92 = load i32, i32* @log_last_ts, align 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  store i32 %92, i32* %93, align 8
  %94 = load i32, i32* @log_split_min, align 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @log_split_max, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load i32, i32* @log_split_mod, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = call i32 @relax_log_crc32(i32 0)
  %101 = load i32, i32* @log_crc32_complement, align 4
  %102 = xor i32 %101, -1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load i32*, i32** @fd, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SEEK_SET, align 4
  %108 = call i64 @lseek(i32 %106, i64 0, i32 %107)
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32*, i32** @fd, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @write(i32 %114, %struct.TYPE_7__* %3, i32 40)
  %116 = sext i32 %115 to i64
  %117 = icmp eq i64 %116, 40
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32*, i32** @fd, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @fsync(i32 %122)
  %124 = icmp sge i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32*, i32** @fd, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @close(i32 %129)
  %131 = icmp sge i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32*, i32** @fd, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 -1, i32* %135, align 4
  %136 = load i8*, i8** %2, align 8
  %137 = call i64 @rename_temporary_snapshot(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %74
  %140 = load i32, i32* @stderr, align 4
  %141 = load i8*, i8** %2, align 8
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %141)
  %143 = load i8*, i8** %2, align 8
  %144 = call i32 @unlink(i8* %143)
  %145 = call i32 @exit(i32 1) #3
  unreachable

146:                                              ; preds = %74
  %147 = load i8*, i8** %2, align 8
  %148 = call i32 @print_snapshot_name(i8* %147)
  store i32 0, i32* %1, align 4
  br label %149

149:                                              ; preds = %146, %32
  %150 = load i32, i32* %1, align 4
  ret i32 %150
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i8* @get_new_snapshot_name(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i64 @log_cur_pos(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @relax_write_log_crc32(...) #1

declare dso_local i32 @relax_log_crc32(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @get_index_header_size(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @rename_temporary_snapshot(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @print_snapshot_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
