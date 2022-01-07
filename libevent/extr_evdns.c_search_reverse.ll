; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_search_reverse.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_search_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.search_domain* }
%struct.search_domain = type { %struct.search_domain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_base*)* @search_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_reverse(%struct.evdns_base* %0) #0 {
  %2 = alloca %struct.evdns_base*, align 8
  %3 = alloca %struct.search_domain*, align 8
  %4 = alloca %struct.search_domain*, align 8
  %5 = alloca %struct.search_domain*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %2, align 8
  store %struct.search_domain* null, %struct.search_domain** %4, align 8
  %6 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %7 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %6)
  %8 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %9 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.search_domain*, %struct.search_domain** %11, align 8
  store %struct.search_domain* %12, %struct.search_domain** %3, align 8
  br label %13

13:                                               ; preds = %16, %1
  %14 = load %struct.search_domain*, %struct.search_domain** %3, align 8
  %15 = icmp ne %struct.search_domain* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.search_domain*, %struct.search_domain** %3, align 8
  %18 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %17, i32 0, i32 0
  %19 = load %struct.search_domain*, %struct.search_domain** %18, align 8
  store %struct.search_domain* %19, %struct.search_domain** %5, align 8
  %20 = load %struct.search_domain*, %struct.search_domain** %4, align 8
  %21 = load %struct.search_domain*, %struct.search_domain** %3, align 8
  %22 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %21, i32 0, i32 0
  store %struct.search_domain* %20, %struct.search_domain** %22, align 8
  %23 = load %struct.search_domain*, %struct.search_domain** %3, align 8
  store %struct.search_domain* %23, %struct.search_domain** %4, align 8
  %24 = load %struct.search_domain*, %struct.search_domain** %5, align 8
  store %struct.search_domain* %24, %struct.search_domain** %3, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.search_domain*, %struct.search_domain** %4, align 8
  %27 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %28 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.search_domain* %26, %struct.search_domain** %30, align 8
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
