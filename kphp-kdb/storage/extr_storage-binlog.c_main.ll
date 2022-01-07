; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-binlog.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-binlog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@stdout = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tphuv\00", align 1
@dump_log_pos = common dso_local global i32 0, align 4
@secret_in_base64url = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"engine_preload_filelist done\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_12__* null, align 8
@jump_log_pos = common dso_local global i32 0, align 4
@Binlog = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @stdout, align 4
  store i32 %8, i32* @out, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %23 [
    i32 112, label %16
    i32 117, label %17
    i32 118, label %18
    i32 104, label %21
  ]

16:                                               ; preds = %14
  store i32 1, i32* @dump_log_pos, align 4
  br label %23

17:                                               ; preds = %14
  store i32 1, i32* @secret_in_base64url, align 4
  br label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @verbosity, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @verbosity, align 4
  br label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %94

23:                                               ; preds = %14, %18, %17, %16
  br label %9

24:                                               ; preds = %9
  %25 = load i32, i32* @optind, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %94

30:                                               ; preds = %24
  %31 = call i32 @memset(%struct.TYPE_10__* %7, i32 0, i32 8)
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* @optind, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @binlogname, align 8
  %38 = call i64 @engine_preload_filelist(i8* %36, i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = load i8*, i8** @binlogname, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** @binlogname, align 8
  br label %51

45:                                               ; preds = %40
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* @optind, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  br label %51

51:                                               ; preds = %45, %43
  %52 = phi i8* [ %44, %43 ], [ %50, %45 ]
  %53 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %30
  %56 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @engine_replica, align 8
  %58 = load i32, i32* @jump_log_pos, align 4
  %59 = call %struct.TYPE_11__* @open_binlog(%struct.TYPE_12__* %57, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %60, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** @Binlog, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = icmp ne %struct.TYPE_11__* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @engine_replica, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load i32, i32* @jump_log_pos, align 4
  %71 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %69, i32 %70)
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** @binlogname, align 8
  %80 = load i8*, i8** @binlogname, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Binlog, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %80, i32 %85)
  %87 = call i32 (...) @mytime()
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* @binlog_load_time, align 4
  %89 = call i32 @dump_storage_replay_log(%struct.TYPE_10__* %7, i32 0)
  %90 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %91 = call i32 (...) @mytime()
  %92 = load i32, i32* @binlog_load_time, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* @binlog_load_time, align 4
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %73, %28, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @kprintf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_11__* @open_binlog(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @dump_storage_replay_log(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
