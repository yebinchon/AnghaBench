; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_gai_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_gai_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i32 }
%struct.gai_outcome = type { i32, %struct.evutil_addrinfo* }

@n_gai_results_pending = common dso_local global i64 0, align 8
@exit_base_on_no_pending_results = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Got an answer; expecting %d more.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.evutil_addrinfo*, i8*)* @gai_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gai_cb(i32 %0, %struct.evutil_addrinfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evutil_addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gai_outcome*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.evutil_addrinfo* %1, %struct.evutil_addrinfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.gai_outcome*
  store %struct.gai_outcome* %9, %struct.gai_outcome** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.gai_outcome*, %struct.gai_outcome** %7, align 8
  %12 = getelementptr inbounds %struct.gai_outcome, %struct.gai_outcome* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %14 = load %struct.gai_outcome*, %struct.gai_outcome** %7, align 8
  %15 = getelementptr inbounds %struct.gai_outcome, %struct.gai_outcome* %14, i32 0, i32 1
  store %struct.evutil_addrinfo* %13, %struct.evutil_addrinfo** %15, align 8
  %16 = load i64, i64* @n_gai_results_pending, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* @n_gai_results_pending, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* @exit_base_on_no_pending_results, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @exit_base_on_no_pending_results, align 8
  %24 = call i32 @event_base_loopexit(i64 %23, i32* null)
  br label %25

25:                                               ; preds = %22, %19, %3
  %26 = load i64, i64* @n_gai_results_pending, align 8
  %27 = icmp slt i64 %26, 900
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* @n_gai_results_pending, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @TT_BLATHER(i8* %30)
  br label %32

32:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @event_base_loopexit(i64, i32*) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
