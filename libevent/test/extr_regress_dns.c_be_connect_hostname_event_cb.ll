; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_be_connect_hostname_event_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_be_connect_hostname_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.be_conn_hostname_result = type { i16, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Two events on one bufferevent. %d,%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Got a bufferevent event %d\00", align 1
@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [17 x i8] c"DNS error %d: %s\00", align 1
@total_connected_or_failed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Got %d connections or errors.\00", align 1
@errno = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@total_n_accepted = common dso_local global i32 0, align 4
@be_connect_hostname_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @be_connect_hostname_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_connect_hostname_event_cb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.be_conn_hostname_result*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.be_conn_hostname_result*
  store %struct.be_conn_hostname_result* %11, %struct.be_conn_hostname_result** %7, align 8
  %12 = load %struct.be_conn_hostname_result*, %struct.be_conn_hostname_result** %7, align 8
  %13 = getelementptr inbounds %struct.be_conn_hostname_result, %struct.be_conn_hostname_result* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 4
  %15 = icmp ne i16 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.be_conn_hostname_result*, %struct.be_conn_hostname_result** %7, align 8
  %18 = getelementptr inbounds %struct.be_conn_hostname_result, %struct.be_conn_hostname_result* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 4
  %20 = load i16, i16* %5, align 2
  %21 = sext i16 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @TT_FAIL(i8* %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load i16, i16* %5, align 2
  %27 = sext i16 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @TT_BLATHER(i8* %28)
  %30 = load i16, i16* %5, align 2
  %31 = load %struct.be_conn_hostname_result*, %struct.be_conn_hostname_result** %7, align 8
  %32 = getelementptr inbounds %struct.be_conn_hostname_result, %struct.be_conn_hostname_result* %31, i32 0, i32 0
  store i16 %30, i16* %32, align 4
  %33 = load i16, i16* %5, align 2
  %34 = sext i16 %33 to i32
  %35 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %36 = sext i16 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %25
  %40 = load i16, i16* %5, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %43 = sext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %39, %25
  store i32 3, i32* %8, align 4
  %47 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %48 = call i32 @bufferevent_socket_get_dns_error(%struct.bufferevent* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.be_conn_hostname_result*, %struct.be_conn_hostname_result** %7, align 8
  %54 = getelementptr inbounds %struct.be_conn_hostname_result, %struct.be_conn_hostname_result* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @evutil_gai_strerror(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @TT_BLATHER(i8* %59)
  br label %61

61:                                               ; preds = %51, %46
  %62 = load i32, i32* @total_connected_or_failed, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @total_connected_or_failed, align 4
  %64 = load i32, i32* @total_connected_or_failed, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @TT_BLATHER(i8* %66)
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @EMFILE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* @total_n_accepted, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* @total_connected_or_failed, align 4
  %78 = icmp sge i32 %77, 5
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @be_connect_hostname_base, align 4
  %81 = call i32 @event_base_loopexit(i32 %80, i32* null)
  br label %82

82:                                               ; preds = %79, %76, %72
  br label %83

83:                                               ; preds = %82, %39
  ret void
}

declare dso_local i32 @TT_FAIL(i8*) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @bufferevent_socket_get_dns_error(%struct.bufferevent*) #1

declare dso_local i32 @evutil_gai_strerror(i32) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
