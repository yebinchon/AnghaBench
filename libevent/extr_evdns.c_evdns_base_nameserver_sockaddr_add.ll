; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_nameserver_sockaddr_add.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_nameserver_sockaddr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_base_nameserver_sockaddr_add(%struct.evdns_base* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.evdns_base*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %11 = call i32 @EVUTIL_ASSERT(%struct.evdns_base* %10)
  %12 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %13 = call i32 @EVDNS_LOCK(%struct.evdns_base* %12)
  %14 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @evdns_nameserver_add_impl_(%struct.evdns_base* %14, %struct.sockaddr* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %19 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %18)
  %20 = load i32, i32* %9, align 4
  ret i32 %20
}

declare dso_local i32 @EVUTIL_ASSERT(%struct.evdns_base*) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @evdns_nameserver_add_impl_(%struct.evdns_base*, %struct.sockaddr*, i32) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
