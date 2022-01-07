; ModuleID = '/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_merged_requests.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_merged_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*, %struct.request*)* @dd_merged_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dd_merged_requests(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 1
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %3
  %12 = load %struct.request*, %struct.request** %6, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %11
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.request*, %struct.request** %5, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @time_before(i64 %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load %struct.request*, %struct.request** %5, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 1
  %28 = load %struct.request*, %struct.request** %6, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 1
  %30 = call i32 @list_move(i32* %27, i32* %29)
  %31 = load %struct.request*, %struct.request** %6, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.request*, %struct.request** %5, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %25, %16
  br label %37

37:                                               ; preds = %36, %11, %3
  %38 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = call i32 @deadline_remove_request(%struct.request_queue* %38, %struct.request* %39)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @deadline_remove_request(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
