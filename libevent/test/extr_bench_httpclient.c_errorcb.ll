; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_bench_httpclient.c_errorcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_bench_httpclient.c_errorcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.request_info = type { i32, i64 }
%struct.timeval = type { i32 }

@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@total_n_handled = common dso_local global i32 0, align 4
@total_n_bytes = common dso_local global i32 0, align 4
@total_time = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%d requests done\0A\00", align 1
@total_n_launched = common dso_local global i64 0, align 8
@N_REQUESTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Can't launch\00", align 1
@total_n_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Unexpected error\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @errorcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @errorcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.request_info*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.request_info*
  store %struct.request_info* %11, %struct.request_info** %7, align 8
  %12 = load i16, i16* %5, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @BEV_EVENT_EOF, align 2
  %15 = sext i16 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %3
  %19 = load i32, i32* @total_n_handled, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @total_n_handled, align 4
  %21 = load %struct.request_info*, %struct.request_info** %7, align 8
  %22 = getelementptr inbounds %struct.request_info, %struct.request_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @total_n_bytes, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* @total_n_bytes, align 4
  %28 = call i32 @evutil_gettimeofday(%struct.timeval* %8, i32* null)
  %29 = load %struct.request_info*, %struct.request_info** %7, align 8
  %30 = getelementptr inbounds %struct.request_info, %struct.request_info* %29, i32 0, i32 0
  %31 = call i32 @evutil_timersub(%struct.timeval* %8, i32* %30, %struct.timeval* %9)
  %32 = call i32 @evutil_timeradd(%struct.timeval* %9, i32* @total_time, i32* @total_time)
  %33 = load i32, i32* @total_n_handled, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load i32, i32* @total_n_handled, align 4
  %37 = srem i32 %36, 1000
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @total_n_handled, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %35, %18
  %43 = load i64, i64* @total_n_launched, align 8
  %44 = load i64, i64* @N_REQUESTS, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = call i64 (...) @launch_request()
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %42
  br label %57

53:                                               ; preds = %3
  %54 = load i32, i32* @total_n_errors, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @total_n_errors, align 4
  %56 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %59 = call i32 @bufferevent_setcb(%struct.bufferevent* %58, i32* null, i32* null, i32* null, i32* null)
  %60 = load %struct.request_info*, %struct.request_info** %7, align 8
  %61 = call i32 @free(%struct.request_info* %60)
  %62 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %63 = load i32, i32* @EV_READ, align 4
  %64 = load i32, i32* @EV_WRITE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @bufferevent_disable(%struct.bufferevent* %62, i32 %65)
  %67 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %68 = call i32 @bufferevent_free(%struct.bufferevent* %67)
  ret void
}

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @evutil_timersub(%struct.timeval*, i32*, %struct.timeval*) #1

declare dso_local i32 @evutil_timeradd(%struct.timeval*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @launch_request(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free(%struct.request_info*) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
