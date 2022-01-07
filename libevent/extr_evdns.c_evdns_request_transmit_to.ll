; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_request_transmit_to.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_request_transmit_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nameserver = type { i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.nameserver*)* @evdns_request_transmit_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_request_transmit_to(%struct.request* %0, %struct.nameserver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.nameserver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.nameserver* %1, %struct.nameserver** %5, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @ASSERT_LOCKED(%struct.TYPE_2__* %10)
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call i32 @ASSERT_VALID_REQUEST(%struct.request* %12)
  %14 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  %15 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.request*, %struct.request** %4, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  %27 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %26, i32 0, i32 4
  %28 = call i64 @event_add(i32* %27, i32* null)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %76

31:                                               ; preds = %25, %18, %2
  %32 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  %33 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  %43 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %42, i32 0, i32 3
  %44 = bitcast i32* %43 to %struct.sockaddr*
  %45 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  %46 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sendto(i32 %34, i8* %38, i64 %41, i32 0, %struct.sockaddr* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %31
  %52 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  %53 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @evutil_socket_geterror(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %76

60:                                               ; preds = %51
  %61 = load %struct.request*, %struct.request** %4, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @evutil_socket_error_to_string(i32 %64)
  %66 = call i32 @nameserver_failed(i32 %63, i32 %65)
  store i32 2, i32* %3, align 4
  br label %76

67:                                               ; preds = %31
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.request*, %struct.request** %4, align 8
  %70 = getelementptr inbounds %struct.request, %struct.request* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %74, %60, %59, %30
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ASSERT_LOCKED(%struct.TYPE_2__*) #1

declare dso_local i32 @ASSERT_VALID_REQUEST(%struct.request*) #1

declare dso_local i64 @event_add(i32*, i32*) #1

declare dso_local i32 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @nameserver_failed(i32, i32) #1

declare dso_local i32 @evutil_socket_error_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
