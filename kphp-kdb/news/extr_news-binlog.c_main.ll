; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-binlog.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-binlog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@stdout = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@dump_news_replay_logevent = common dso_local global i32 0, align 4
@replay_logevent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tphvT:\00", align 1
@dump_log_pos = common dso_local global i32 0, align 4
@dump_timestamp = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@min_utime = common dso_local global i32 0, align 4
@max_utime = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"engine_preload_filelist done\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@binlog_loaded_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @stdout, align 4
  store i32 %10, i32* @out, align 4
  %11 = load i32, i32* @dump_news_replay_logevent, align 4
  store i32 %11, i32* @replay_logevent, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %34 [
    i32 112, label %19
    i32 116, label %20
    i32 118, label %21
    i32 104, label %24
    i32 84, label %26
  ]

19:                                               ; preds = %17
  store i32 1, i32* @dump_log_pos, align 4
  br label %34

20:                                               ; preds = %17
  store i32 1, i32* @dump_timestamp, align 4
  br label %34

21:                                               ; preds = %17
  %22 = load i32, i32* @verbosity, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @verbosity, align 4
  br label %34

24:                                               ; preds = %17
  %25 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %130

26:                                               ; preds = %17
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @sscanf(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32* %8)
  %29 = icmp eq i32 2, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* @min_utime, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* @max_utime, align 4
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %17, %33, %21, %20, %19
  br label %12

35:                                               ; preds = %12
  %36 = load i32, i32* @optind, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %130

41:                                               ; preds = %35
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* @optind, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @binlogname, align 8
  %48 = call i64 @engine_preload_filelist(i8* %46, i8* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %41
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @binlogname, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i8*, i8** @binlogname, align 8
  br label %62

56:                                               ; preds = %50
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* @optind, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  br label %62

62:                                               ; preds = %56, %54
  %63 = phi i8* [ %55, %54 ], [ %61, %56 ]
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %41
  %67 = load i32, i32* @verbosity, align 4
  %68 = icmp sge i32 %67, 3
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %73, i64 %74)
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** @Binlog, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @stderr, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %82, i64 %83)
  %85 = call i32 @exit(i32 1) #3
  unreachable

86:                                               ; preds = %72
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** @binlogname, align 8
  %92 = load i32, i32* @verbosity, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** @binlogname, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %96, i32 %101)
  br label %103

103:                                              ; preds = %94, %86
  %104 = call i32 (...) @mytime()
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* @binlog_load_time, align 4
  %106 = call i32 (...) @clear_log()
  %107 = load i64, i64* %9, align 8
  %108 = load i32, i32* @jump_log_ts, align 4
  %109 = load i32, i32* @jump_log_crc32, align 4
  %110 = call i32 @init_log_data(i64 %107, i32 %108, i32 %109)
  %111 = load i32, i32* @verbosity, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %103
  %117 = call i32 @replay_log(i32 0, i32 1)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @verbosity, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @stderr, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %116
  %124 = call i32 (...) @mytime()
  %125 = load i32, i32* @binlog_load_time, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* @binlog_load_time, align 4
  %127 = load i64, i64* @log_readto_pos, align 8
  %128 = load i64, i64* %9, align 8
  %129 = sub nsw i64 %127, %128
  store i64 %129, i64* @binlog_loaded_size, align 8
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %123, %39, %24
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #1

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
