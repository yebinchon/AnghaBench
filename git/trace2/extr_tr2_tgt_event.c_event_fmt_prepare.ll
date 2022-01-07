; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_event_fmt_prepare.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_event_fmt_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.json_writer = type { i32 }
%struct.tr2tls_thread_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.tr2_tbuf = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@tr2env_event_be_brief = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"repo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, %struct.repository*, %struct.json_writer*)* @event_fmt_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_fmt_prepare(i8* %0, i8* %1, i32 %2, %struct.repository* %3, %struct.json_writer* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca %struct.json_writer*, align 8
  %11 = alloca %struct.tr2tls_thread_ctx*, align 8
  %12 = alloca %struct.tr2_tbuf, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.repository* %3, %struct.repository** %9, align 8
  store %struct.json_writer* %4, %struct.json_writer** %10, align 8
  %13 = call %struct.tr2tls_thread_ctx* (...) @tr2tls_get_self()
  store %struct.tr2tls_thread_ctx* %13, %struct.tr2tls_thread_ctx** %11, align 8
  %14 = load %struct.json_writer*, %struct.json_writer** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @jw_object_string(%struct.json_writer* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.json_writer*, %struct.json_writer** %10, align 8
  %18 = call i8* (...) @tr2_sid_get()
  %19 = call i32 @jw_object_string(%struct.json_writer* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load %struct.json_writer*, %struct.json_writer** %10, align 8
  %21 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %11, align 8
  %22 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @jw_object_string(%struct.json_writer* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @tr2env_event_be_brief, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %5
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32, %28, %5
  %37 = call i32 @tr2_tbuf_utc_datetime_extended(%struct.tr2_tbuf* %12)
  %38 = load %struct.json_writer*, %struct.json_writer** %10, align 8
  %39 = getelementptr inbounds %struct.tr2_tbuf, %struct.tr2_tbuf* %12, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @jw_object_string(%struct.json_writer* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* @tr2env_event_be_brief, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.json_writer*, %struct.json_writer** %10, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @jw_object_string(%struct.json_writer* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  %57 = load %struct.json_writer*, %struct.json_writer** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @jw_object_intmax(%struct.json_writer* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %48, %45, %42
  %61 = load %struct.repository*, %struct.repository** %9, align 8
  %62 = icmp ne %struct.repository* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.json_writer*, %struct.json_writer** %10, align 8
  %65 = load %struct.repository*, %struct.repository** %9, align 8
  %66 = getelementptr inbounds %struct.repository, %struct.repository* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @jw_object_intmax(%struct.json_writer* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  ret void
}

declare dso_local %struct.tr2tls_thread_ctx* @tr2tls_get_self(...) #1

declare dso_local i32 @jw_object_string(%struct.json_writer*, i8*, i8*) #1

declare dso_local i8* @tr2_sid_get(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @tr2_tbuf_utc_datetime_extended(%struct.tr2_tbuf*) #1

declare dso_local i32 @jw_object_intmax(%struct.json_writer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
