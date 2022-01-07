; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_nameserver_send_probe.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_nameserver_send_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i32, %struct.evdns_request*, i32 }
%struct.evdns_request = type { i32 }
%struct.request = type { %struct.nameserver* }
%struct.sockaddr = type { i32 }

@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Sending probe to %s\00", align 1
@TYPE_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"google.com\00", align 1
@DNS_QUERY_NO_SEARCH = common dso_local global i32 0, align 4
@nameserver_probe_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameserver*)* @nameserver_send_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameserver_send_probe(%struct.nameserver* %0) #0 {
  %2 = alloca %struct.nameserver*, align 8
  %3 = alloca %struct.evdns_request*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca [128 x i8], align 16
  store %struct.nameserver* %0, %struct.nameserver** %2, align 8
  %6 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %7 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @ASSERT_LOCKED(i32 %8)
  %10 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %11 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %12 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %11, i32 0, i32 2
  %13 = bitcast i32* %12 to %struct.sockaddr*
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %15 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %13, i8* %14, i32 128)
  %16 = call i32 @log(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call %struct.evdns_request* @mm_calloc(i32 1, i32 4)
  store %struct.evdns_request* %17, %struct.evdns_request** %3, align 8
  %18 = load %struct.evdns_request*, %struct.evdns_request** %3, align 8
  %19 = icmp ne %struct.evdns_request* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %23 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.evdns_request*, %struct.evdns_request** %3, align 8
  %26 = load i32, i32* @TYPE_A, align 4
  %27 = load i32, i32* @DNS_QUERY_NO_SEARCH, align 4
  %28 = load i32, i32* @nameserver_probe_callback, align 4
  %29 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %30 = call %struct.request* @request_new(i32 %24, %struct.evdns_request* %25, i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, %struct.nameserver* %29)
  store %struct.request* %30, %struct.request** %4, align 8
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = icmp ne %struct.request* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load %struct.evdns_request*, %struct.evdns_request** %3, align 8
  %35 = call i32 @mm_free(%struct.evdns_request* %34)
  br label %51

36:                                               ; preds = %21
  %37 = load %struct.evdns_request*, %struct.evdns_request** %3, align 8
  %38 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %39 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %38, i32 0, i32 1
  store %struct.evdns_request* %37, %struct.evdns_request** %39, align 8
  %40 = load %struct.request*, %struct.request** %4, align 8
  %41 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %42 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @transaction_id_pick(i32 %43)
  %45 = call i32 @request_trans_id_set(%struct.request* %40, i32 %44)
  %46 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  store %struct.nameserver* %46, %struct.nameserver** %48, align 8
  %49 = load %struct.request*, %struct.request** %4, align 8
  %50 = call i32 @request_submit(%struct.request* %49)
  br label %51

51:                                               ; preds = %36, %33, %20
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #1

declare dso_local %struct.evdns_request* @mm_calloc(i32, i32) #1

declare dso_local %struct.request* @request_new(i32, %struct.evdns_request*, i32, i8*, i32, i32, %struct.nameserver*) #1

declare dso_local i32 @mm_free(%struct.evdns_request*) #1

declare dso_local i32 @request_trans_id_set(%struct.request*, i32) #1

declare dso_local i32 @transaction_id_pick(i32) #1

declare dso_local i32 @request_submit(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
