; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-binlog.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-binlog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@stdout = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tphvCS:T:\00", align 1
@dumping_crc32 = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@start_time = common dso_local global i8* null, align 8
@end_time = common dso_local global i8* null, align 8
@dump_log_pos = common dso_local global i32 0, align 4
@dump_timestamp = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
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
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %30 [
    i32 67, label %16
    i32 83, label %17
    i32 84, label %20
    i32 112, label %23
    i32 116, label %24
    i32 118, label %25
    i32 104, label %28
  ]

16:                                               ; preds = %14
  store i32 1, i32* @dumping_crc32, align 4
  br label %30

17:                                               ; preds = %14
  %18 = load i32, i32* @optarg, align 4
  %19 = call i8* @atoi(i32 %18)
  store i8* %19, i8** @start_time, align 8
  br label %30

20:                                               ; preds = %14
  %21 = load i32, i32* @optarg, align 4
  %22 = call i8* @atoi(i32 %21)
  store i8* %22, i8** @end_time, align 8
  br label %30

23:                                               ; preds = %14
  store i32 1, i32* @dump_log_pos, align 4
  br label %30

24:                                               ; preds = %14
  store i32 1, i32* @dump_timestamp, align 4
  br label %30

25:                                               ; preds = %14
  %26 = load i32, i32* @verbosity, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @verbosity, align 4
  br label %30

28:                                               ; preds = %14
  %29 = call i32 (...) @usage()
  br label %30

30:                                               ; preds = %28, %14, %25, %24, %23, %20, %17, %16
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* @optind, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* @optind, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** @binlogname, align 8
  %44 = call i64 @engine_preload_filelist(i8* %42, i8* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load i8*, i8** @binlogname, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i8*, i8** @binlogname, align 8
  br label %57

51:                                               ; preds = %46
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* @optind, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  br label %57

57:                                               ; preds = %51, %49
  %58 = phi i8* [ %50, %49 ], [ %56, %51 ]
  %59 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %37
  %62 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %63, i64 %64)
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** @Binlog, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i64, i64* %7, align 8
  %75 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %73, i64 %74)
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %61
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** @binlogname, align 8
  %83 = load i8*, i8** @binlogname, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %83, i32 %88)
  %90 = call i32 (...) @mytime()
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* @binlog_load_time, align 4
  %92 = call i32 (...) @clear_log()
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* @jump_log_ts, align 4
  %95 = load i32, i32* @jump_log_crc32, align 4
  %96 = call i32 @init_log_data(i64 %93, i32 %94, i32 %95)
  %97 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %98 = call i32 @replay_log(i32 0, i32 1)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @out, align 4
  %100 = call i32 @fflush(i32 %99)
  %101 = load i32, i32* @out, align 4
  %102 = call i32 @fclose(i32 %101)
  %103 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %104 = call i32 (...) @mytime()
  %105 = load i32, i32* @binlog_load_time, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* @binlog_load_time, align 4
  %107 = load i64, i64* @log_readto_pos, align 8
  %108 = load i64, i64* %7, align 8
  %109 = sub nsw i64 %107, %108
  store i64 %109, i64* @binlog_loaded_size, align 8
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @kprintf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
