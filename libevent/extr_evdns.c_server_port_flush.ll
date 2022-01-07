; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_server_port_flush.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_server_port_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_port = type { i32, i32, i32, %struct.server_request* }
%struct.server_request = type { i64, i32, i64, i32 }
%struct.sockaddr = type { i32 }

@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Error %s (%d) while writing response to port; dropping\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@server_port_ready_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Error from libevent when adding event for DNS server.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_server_port*)* @server_port_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_port_flush(%struct.evdns_server_port* %0) #0 {
  %2 = alloca %struct.evdns_server_port*, align 8
  %3 = alloca %struct.server_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.evdns_server_port* %0, %struct.evdns_server_port** %2, align 8
  %6 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %7 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %6, i32 0, i32 3
  %8 = load %struct.server_request*, %struct.server_request** %7, align 8
  store %struct.server_request* %8, %struct.server_request** %3, align 8
  %9 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %10 = call i32 @ASSERT_LOCKED(%struct.evdns_server_port* %9)
  br label %11

11:                                               ; preds = %66, %1
  %12 = load %struct.server_request*, %struct.server_request** %3, align 8
  %13 = icmp ne %struct.server_request* %12, null
  br i1 %13, label %14, label %67

14:                                               ; preds = %11
  %15 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %16 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.server_request*, %struct.server_request** %3, align 8
  %19 = getelementptr inbounds %struct.server_request, %struct.server_request* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.server_request*, %struct.server_request** %3, align 8
  %22 = getelementptr inbounds %struct.server_request, %struct.server_request* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.server_request*, %struct.server_request** %3, align 8
  %26 = getelementptr inbounds %struct.server_request, %struct.server_request* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to %struct.sockaddr*
  %28 = load %struct.server_request*, %struct.server_request** %3, align 8
  %29 = getelementptr inbounds %struct.server_request, %struct.server_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @sendto(i32 %17, i32 %20, i32 %24, i32 0, %struct.sockaddr* %27, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %14
  %36 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %37 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @evutil_socket_geterror(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %92

44:                                               ; preds = %35
  %45 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @evutil_socket_error_to_string(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i8*, ...) @log(i32 %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %14
  %51 = load %struct.server_request*, %struct.server_request** %3, align 8
  %52 = call i64 @server_request_free(%struct.server_request* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %92

55:                                               ; preds = %50
  %56 = load %struct.server_request*, %struct.server_request** %3, align 8
  %57 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %58 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %57, i32 0, i32 3
  %59 = load %struct.server_request*, %struct.server_request** %58, align 8
  %60 = icmp ne %struct.server_request* %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @EVUTIL_ASSERT(i32 %61)
  %63 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %64 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %63, i32 0, i32 3
  %65 = load %struct.server_request*, %struct.server_request** %64, align 8
  store %struct.server_request* %65, %struct.server_request** %3, align 8
  br label %66

66:                                               ; preds = %55
  br label %11

67:                                               ; preds = %11
  %68 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %69 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %68, i32 0, i32 0
  %70 = call i32 @event_del(i32* %69)
  %71 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %72 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %71, i32 0, i32 0
  %73 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %74 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %77 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EV_READ, align 4
  %80 = load i32, i32* @EV_PERSIST, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @server_port_ready_callback, align 4
  %83 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %84 = call i32 @event_assign(i32* %72, i32 %75, i32 %78, i32 %81, i32 %82, %struct.evdns_server_port* %83)
  %85 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %86 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %85, i32 0, i32 0
  %87 = call i64 @event_add(i32* %86, i32* null)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %67
  %90 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %91 = call i32 (i32, i8*, ...) @log(i32 %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %43, %54, %89, %67
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_server_port*) #1

declare dso_local i32 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local i32 @evutil_socket_error_to_string(i32) #1

declare dso_local i64 @server_request_free(%struct.server_request*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.evdns_server_port*) #1

declare dso_local i64 @event_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
