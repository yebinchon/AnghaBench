; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_found_ifaddr.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_found_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Detected an IPv4 interface\00", align 1
@had_ipv4_address = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Detected an IPv6 interface\00", align 1
@had_ipv6_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*)* @evutil_found_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evutil_found_ifaddr(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AF_INET, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %3, align 8
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %15 = call i32 @evutil_v4addr_is_local_(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = call i32 @event_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @had_ipv4_address, align 4
  br label %19

19:                                               ; preds = %17, %10
  br label %37

20:                                               ; preds = %1
  %21 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %28, %struct.sockaddr_in6** %4, align 8
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 0
  %31 = call i32 @evutil_v6addr_is_local_(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = call i32 @event_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @had_ipv6_address, align 4
  br label %35

35:                                               ; preds = %33, %26
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %19
  ret void
}

declare dso_local i32 @evutil_v4addr_is_local_(i32*) #1

declare dso_local i32 @event_debug(i8*) #1

declare dso_local i32 @evutil_v6addr_is_local_(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
