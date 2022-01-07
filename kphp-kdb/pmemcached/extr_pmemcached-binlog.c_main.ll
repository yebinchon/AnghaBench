; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-binlog.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-binlog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@disable_crc32 = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@dump_pmemcached_replay_logevent = common dso_local global i32 0, align 4
@replay_logevent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pthvS:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%lli\00", align 1
@dump_log_pos = common dso_local global i32 0, align 4
@dump_timestamp = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"jump_log_pos: %lld\0A\00", align 1
@binlogname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"engine_preload_filelist done\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
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
  store i32 3, i32* @disable_crc32, align 4
  %8 = load i32, i32* @stdout, align 4
  store i32 %8, i32* @out, align 4
  %9 = load i32, i32* @dump_pmemcached_replay_logevent, align 4
  store i32 %9, i32* @replay_logevent, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %30 [
    i32 83, label %17
    i32 112, label %23
    i32 116, label %24
    i32 118, label %25
    i32 104, label %28
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  %19 = call i32 @sscanf(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %7)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %15, %22
  store i32 1, i32* @dump_log_pos, align 4
  br label %30

24:                                               ; preds = %15
  store i32 1, i32* @dump_timestamp, align 4
  br label %30

25:                                               ; preds = %15
  %26 = load i32, i32* @verbosity, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @verbosity, align 4
  br label %30

28:                                               ; preds = %15
  %29 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %128

30:                                               ; preds = %15, %25, %24, %23
  br label %10

31:                                               ; preds = %10
  %32 = load i32, i32* @optind, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %128

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* @optind, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @binlogname, align 8
  %46 = call i64 @engine_preload_filelist(i8* %44, i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %37
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @binlogname, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i8*, i8** @binlogname, align 8
  br label %60

54:                                               ; preds = %48
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* @optind, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  br label %60

60:                                               ; preds = %54, %52
  %61 = phi i8* [ %53, %52 ], [ %59, %54 ]
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %37
  %65 = load i32, i32* @verbosity, align 4
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %71, i64 %72)
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** @Binlog, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @stderr, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %80, i64 %81)
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %70
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** @binlogname, align 8
  %90 = load i32, i32* @verbosity, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8*, i8** @binlogname, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %94, i32 %99)
  br label %101

101:                                              ; preds = %92, %84
  %102 = call i32 (...) @mytime()
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* @binlog_load_time, align 4
  %104 = call i32 (...) @clear_log()
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* @jump_log_ts, align 4
  %107 = load i32, i32* @jump_log_crc32, align 4
  %108 = call i32 @init_log_data(i64 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @verbosity, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %101
  %115 = call i32 @replay_log(i32 0, i32 1)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* @verbosity, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %114
  %122 = call i32 (...) @mytime()
  %123 = load i32, i32* @binlog_load_time, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* @binlog_load_time, align 4
  %125 = load i64, i64* @log_readto_pos, align 8
  %126 = load i64, i64* %7, align 8
  %127 = sub nsw i64 %125, %126
  store i64 %127, i64* @binlog_loaded_size, align 8
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %35, %28
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i32, i8*, i64*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

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
