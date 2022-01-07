; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_getaddrinfo_cancel.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_getaddrinfo_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_getaddrinfo_request = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdns_getaddrinfo_cancel(%struct.evdns_getaddrinfo_request* %0) #0 {
  %2 = alloca %struct.evdns_getaddrinfo_request*, align 8
  store %struct.evdns_getaddrinfo_request* %0, %struct.evdns_getaddrinfo_request** %2, align 8
  %3 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %4 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @EVDNS_LOCK(i32 %5)
  %7 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %8 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %13 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @EVDNS_UNLOCK(i32 %14)
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %18 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %17, i32 0, i32 4
  %19 = call i32 @event_del(i32* %18)
  %20 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %21 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %23 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %29 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %32 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @evdns_cancel_request(i32 %30, i64 %34)
  br label %36

36:                                               ; preds = %27, %16
  %37 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %38 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %44 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %47 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @evdns_cancel_request(i32 %45, i64 %49)
  br label %51

51:                                               ; preds = %42, %36
  %52 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %2, align 8
  %53 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @EVDNS_UNLOCK(i32 %54)
  br label %56

56:                                               ; preds = %51, %11
  ret void
}

declare dso_local i32 @EVDNS_LOCK(i32) #1

declare dso_local i32 @EVDNS_UNLOCK(i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @evdns_cancel_request(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
