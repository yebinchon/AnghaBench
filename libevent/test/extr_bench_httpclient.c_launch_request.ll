; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_bench_httpclient.c_launch_request.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_bench_httpclient.c_launch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bufferevent = type { i32 }
%struct.request_info = type { i32, i64 }
%struct.sockaddr = type { i32 }

@total_n_launched = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@readcb = common dso_local global i32 0, align 4
@errorcb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GET %s HTTP/1.0\0D\0A\0D\0A\00", align 1
@resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @launch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @launch_request() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.request_info*, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @memset(%struct.sockaddr_in* %3, i32 0, i32 12)
  %8 = load i32, i32* @total_n_launched, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @total_n_launched, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = call i32 @htonl(i32 2130706433)
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = call i32 @htons(i32 8080)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = call i32 @socket(i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %71

22:                                               ; preds = %0
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @evutil_make_socket_nonblocking(i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @evutil_closesocket(i32 %27)
  store i32 -1, i32* %1, align 4
  br label %71

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @frob_socket(i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %34 = call i64 @connect(i32 %32, %struct.sockaddr* %33, i32 12)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @evutil_socket_geterror(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @EVUTIL_ERR_CONNECT_RETRIABLE(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @evutil_closesocket(i32 %43)
  store i32 -1, i32* %1, align 4
  br label %71

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %29
  %47 = call %struct.request_info* @malloc(i32 16)
  store %struct.request_info* %47, %struct.request_info** %5, align 8
  %48 = load %struct.request_info*, %struct.request_info** %5, align 8
  %49 = getelementptr inbounds %struct.request_info, %struct.request_info* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.request_info*, %struct.request_info** %5, align 8
  %51 = getelementptr inbounds %struct.request_info, %struct.request_info* %50, i32 0, i32 0
  %52 = call i32 @evutil_gettimeofday(i32* %51, i32* null)
  %53 = load i32, i32* @base, align 4
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %56 = call %struct.bufferevent* @bufferevent_socket_new(i32 %53, i32 %54, i32 %55)
  store %struct.bufferevent* %56, %struct.bufferevent** %4, align 8
  %57 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %58 = load i32, i32* @readcb, align 4
  %59 = load i32, i32* @errorcb, align 4
  %60 = load %struct.request_info*, %struct.request_info** %5, align 8
  %61 = call i32 @bufferevent_setcb(%struct.bufferevent* %57, i32 %58, i32* null, i32 %59, %struct.request_info* %60)
  %62 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %63 = load i32, i32* @EV_READ, align 4
  %64 = load i32, i32* @EV_WRITE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @bufferevent_enable(%struct.bufferevent* %62, i32 %65)
  %67 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %68 = call i32 @bufferevent_get_output(%struct.bufferevent* %67)
  %69 = load i32, i32* @resource, align 4
  %70 = call i32 @evbuffer_add_printf(i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %46, %42, %26, %21
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @evutil_make_socket_nonblocking(i32) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @frob_socket(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i32 @EVUTIL_ERR_CONNECT_RETRIABLE(i32) #1

declare dso_local %struct.request_info* @malloc(i32) #1

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32*, i32, %struct.request_info*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i32) #1

declare dso_local i32 @bufferevent_get_output(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
