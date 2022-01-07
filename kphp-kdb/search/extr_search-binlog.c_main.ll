; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-binlog.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-binlog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@stdout = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@dump_search_replay_logevent = common dso_local global i32 0, align 4
@replay_logevent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tphv\00", align 1
@dump_log_pos = common dso_local global i32 0, align 4
@dump_timestamp = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"engine_preload_filelist done\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
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
  %9 = load i32, i32* @dump_search_replay_logevent, align 4
  store i32 %9, i32* @replay_logevent, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %24 [
    i32 112, label %17
    i32 116, label %18
    i32 118, label %19
    i32 104, label %22
  ]

17:                                               ; preds = %15
  store i32 1, i32* @dump_log_pos, align 4
  br label %24

18:                                               ; preds = %15
  store i32 1, i32* @dump_timestamp, align 4
  br label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @verbosity, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @verbosity, align 4
  br label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %120

24:                                               ; preds = %15, %19, %18, %17
  br label %10

25:                                               ; preds = %10
  %26 = load i32, i32* @optind, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %120

31:                                               ; preds = %25
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* @optind, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @binlogname, align 8
  %38 = call i64 @engine_preload_filelist(i8* %36, i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** @binlogname, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i8*, i8** @binlogname, align 8
  br label %52

46:                                               ; preds = %40
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* @optind, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  br label %52

52:                                               ; preds = %46, %44
  %53 = phi i8* [ %45, %44 ], [ %51, %46 ]
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %31
  %57 = load i32, i32* @verbosity, align 4
  %58 = icmp sge i32 %57, 3
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %63, i64 %64)
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** @Binlog, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @stderr, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %72, i64 %73)
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %62
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** @binlogname, align 8
  %82 = load i32, i32* @verbosity, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8*, i8** @binlogname, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %86, i32 %91)
  br label %93

93:                                               ; preds = %84, %76
  %94 = call i32 (...) @mytime()
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* @binlog_load_time, align 4
  %96 = call i32 (...) @clear_log()
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* @jump_log_ts, align 4
  %99 = load i32, i32* @jump_log_crc32, align 4
  %100 = call i32 @init_log_data(i64 %97, i32 %98, i32 %99)
  %101 = load i32, i32* @verbosity, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %93
  %107 = call i32 @replay_log(i32 0, i32 1)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @verbosity, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @stderr, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %106
  %114 = call i32 (...) @mytime()
  %115 = load i32, i32* @binlog_load_time, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* @binlog_load_time, align 4
  %117 = load i64, i64* @log_readto_pos, align 8
  %118 = load i64, i64* %7, align 8
  %119 = sub nsw i64 %117, %118
  store i64 %119, i64* @binlog_loaded_size, align 8
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %113, %29, %22
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i64) #1

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
