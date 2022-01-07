; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_clear_host_addresses.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_clear_host_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.hosts_entry = type { i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdns_base_clear_host_addresses(%struct.evdns_base* %0) #0 {
  %2 = alloca %struct.evdns_base*, align 8
  %3 = alloca %struct.hosts_entry*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %2, align 8
  %4 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %5 = call i32 @EVDNS_LOCK(%struct.evdns_base* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %8 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %7, i32 0, i32 0
  %9 = call %struct.hosts_entry* @TAILQ_FIRST(i32* %8)
  store %struct.hosts_entry* %9, %struct.hosts_entry** %3, align 8
  %10 = icmp ne %struct.hosts_entry* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %13 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %12, i32 0, i32 0
  %14 = load %struct.hosts_entry*, %struct.hosts_entry** %3, align 8
  %15 = load i32, i32* @next, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* %13, %struct.hosts_entry* %14, i32 %15)
  %17 = load %struct.hosts_entry*, %struct.hosts_entry** %3, align 8
  %18 = call i32 @mm_free(%struct.hosts_entry* %17)
  br label %6

19:                                               ; preds = %6
  %20 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %21 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %20)
  ret void
}

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local %struct.hosts_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.hosts_entry*, i32) #1

declare dso_local i32 @mm_free(%struct.hosts_entry*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
