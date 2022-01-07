; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_count_nameservers.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_count_nameservers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { %struct.nameserver* }
%struct.nameserver = type { %struct.nameserver* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_base_count_nameservers(%struct.evdns_base* %0) #0 {
  %2 = alloca %struct.evdns_base*, align 8
  %3 = alloca %struct.nameserver*, align 8
  %4 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %6 = call i32 @EVDNS_LOCK(%struct.evdns_base* %5)
  %7 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %8 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %7, i32 0, i32 0
  %9 = load %struct.nameserver*, %struct.nameserver** %8, align 8
  store %struct.nameserver* %9, %struct.nameserver** %3, align 8
  %10 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %11 = icmp ne %struct.nameserver* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %27

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %20, %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %18 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %17, i32 0, i32 0
  %19 = load %struct.nameserver*, %struct.nameserver** %18, align 8
  store %struct.nameserver* %19, %struct.nameserver** %3, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %22 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %23 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %22, i32 0, i32 0
  %24 = load %struct.nameserver*, %struct.nameserver** %23, align 8
  %25 = icmp ne %struct.nameserver* %21, %24
  br i1 %25, label %14, label %26

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %12
  %28 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %29 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %28)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
