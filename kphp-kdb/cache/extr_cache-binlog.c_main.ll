; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-binlog.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-binlog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@stdout = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@dump_cache_replay_logevent = common dso_local global i32 0, align 4
@replay_logevent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tphv\00", align 1
@optarg = common dso_local global i32 0, align 4
@filtered_uri_short_md5 = common dso_local global i32 0, align 4
@dump_log_pos = common dso_local global i32 0, align 4
@dump_timestamp = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@binlog_loaded_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @stdout, align 4
  store i32 %8, i32* @out, align 4
  %9 = load i32, i32* @dump_cache_replay_logevent, align 4
  store i32 %9, i32* @replay_logevent, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %26 [
    i32 70, label %17
    i32 112, label %19
    i32 116, label %20
    i32 118, label %21
    i32 104, label %24
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  store i32 %18, i32* @filtered_uri_short_md5, align 4
  br label %26

19:                                               ; preds = %15
  store i32 1, i32* @dump_log_pos, align 4
  br label %26

20:                                               ; preds = %15
  store i32 1, i32* @dump_timestamp, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @verbosity, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @verbosity, align 4
  br label %26

24:                                               ; preds = %15
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %15, %21, %20, %19, %17
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* @optind, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* @optind, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @binlogname, align 8
  %40 = call i64 @engine_preload_filelist(i8* %38, i8* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %33
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** @binlogname, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** @binlogname, align 8
  br label %54

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  br label %54

54:                                               ; preds = %48, %46
  %55 = phi i8* [ %47, %46 ], [ %53, %48 ]
  %56 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %33
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %59, i64 %60)
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** @Binlog, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %63 = icmp ne %struct.TYPE_7__* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %67, i64 %68)
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %58
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** @binlogname, align 8
  %77 = load i8*, i8** @binlogname, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 %82)
  %84 = call i32 (...) @mytime()
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* @binlog_load_time, align 4
  %86 = call i32 (...) @clear_log()
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* @jump_log_ts, align 4
  %89 = load i32, i32* @jump_log_crc32, align 4
  %90 = call i32 @init_log_data(i64 %87, i32 %88, i32 %89)
  %91 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %92 = call i32 @replay_log(i32 0, i32 1)
  store i32 %92, i32* %6, align 4
  %93 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %94 = call i32 (...) @mytime()
  %95 = load i32, i32* @binlog_load_time, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* @binlog_load_time, align 4
  %97 = load i64, i64* @log_readto_pos, align 8
  %98 = load i64, i64* %7, align 8
  %99 = sub nsw i64 %97, %98
  store i64 %99, i64* @binlog_loaded_size, align 8
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @kprintf(i8*, i32, i64) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
