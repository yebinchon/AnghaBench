; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_nameserver_add.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_nameserver_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_base_nameserver_add(%struct.evdns_base* %0, i64 %1) #0 {
  %3 = alloca %struct.evdns_base*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sockaddr_in, align 8
  %6 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 @memset(%struct.sockaddr_in* %5, i32 0, i32 16)
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = call i32 @htons(i32 53)
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %16 = call i32 @EVDNS_LOCK(%struct.evdns_base* %15)
  %17 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %18 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %19 = call i32 @evdns_nameserver_add_impl_(%struct.evdns_base* %17, %struct.sockaddr* %18, i32 16)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %21 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %20)
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @evdns_nameserver_add_impl_(%struct.evdns_base*, %struct.sockaddr*, i32) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
