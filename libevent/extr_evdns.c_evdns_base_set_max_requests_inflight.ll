; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_set_max_requests_inflight.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_set_max_requests_inflight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32, i32, %struct.request** }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i32)* @evdns_base_set_max_requests_inflight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdns_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.request**, align 8
  %9 = alloca %struct.request**, align 8
  %10 = alloca %struct.request*, align 8
  %11 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %13 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %16 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %15, i32 0, i32 2
  %17 = load %struct.request**, %struct.request*** %16, align 8
  store %struct.request** %17, %struct.request*** %8, align 8
  %18 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %19 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 4
  %26 = sdiv i32 %25, 5
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @EVUTIL_ASSERT(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.request** @mm_calloc(i32 %31, i32 8)
  store %struct.request** %32, %struct.request*** %9, align 8
  %33 = load %struct.request**, %struct.request*** %9, align 8
  %34 = icmp ne %struct.request** %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %91

36:                                               ; preds = %23
  %37 = load %struct.request**, %struct.request*** %8, align 8
  %38 = icmp ne %struct.request** %37, null
  br i1 %38, label %39, label %81

39:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %75, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %52, %44
  %46 = load %struct.request**, %struct.request*** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.request*, %struct.request** %46, i64 %48
  %50 = load %struct.request*, %struct.request** %49, align 8
  %51 = icmp ne %struct.request* %50, null
  br i1 %51, label %52, label %74

52:                                               ; preds = %45
  %53 = load %struct.request**, %struct.request*** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.request*, %struct.request** %53, i64 %55
  %57 = load %struct.request*, %struct.request** %56, align 8
  store %struct.request* %57, %struct.request** %10, align 8
  %58 = load %struct.request*, %struct.request** %10, align 8
  %59 = load %struct.request**, %struct.request*** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.request*, %struct.request** %59, i64 %61
  %63 = call i32 @evdns_request_remove(%struct.request* %58, %struct.request** %62)
  %64 = load %struct.request*, %struct.request** %10, align 8
  %65 = load %struct.request**, %struct.request*** %9, align 8
  %66 = load %struct.request*, %struct.request** %10, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = srem i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.request*, %struct.request** %65, i64 %71
  %73 = call i32 @evdns_request_insert(%struct.request* %64, %struct.request** %72)
  br label %45

74:                                               ; preds = %45
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %40

78:                                               ; preds = %40
  %79 = load %struct.request**, %struct.request*** %8, align 8
  %80 = call i32 @mm_free(%struct.request** %79)
  br label %81

81:                                               ; preds = %78, %36
  %82 = load %struct.request**, %struct.request*** %9, align 8
  %83 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %84 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %83, i32 0, i32 2
  store %struct.request** %82, %struct.request*** %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %87 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %90 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %81, %35
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local %struct.request** @mm_calloc(i32, i32) #1

declare dso_local i32 @evdns_request_remove(%struct.request*, %struct.request**) #1

declare dso_local i32 @evdns_request_insert(%struct.request*, %struct.request**) #1

declare dso_local i32 @mm_free(%struct.request**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
