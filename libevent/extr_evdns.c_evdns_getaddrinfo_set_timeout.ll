; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_getaddrinfo_set_timeout.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_getaddrinfo_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.evdns_getaddrinfo_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, %struct.evdns_getaddrinfo_request*)* @evdns_getaddrinfo_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_getaddrinfo_set_timeout(%struct.evdns_base* %0, %struct.evdns_getaddrinfo_request* %1) #0 {
  %3 = alloca %struct.evdns_base*, align 8
  %4 = alloca %struct.evdns_getaddrinfo_request*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %3, align 8
  store %struct.evdns_getaddrinfo_request* %1, %struct.evdns_getaddrinfo_request** %4, align 8
  %5 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %4, align 8
  %6 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %5, i32 0, i32 0
  %7 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %8 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %7, i32 0, i32 0
  %9 = call i32 @event_add(i32* %6, i32* %8)
  ret i32 %9
}

declare dso_local i32 @event_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
