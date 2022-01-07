; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_requests_merged.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_requests_merged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i64, i32, i32 }
%struct.bfq_queue = type { %struct.request* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*, %struct.request*)* @bfq_requests_merged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_requests_merged(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bfq_queue*, align 8
  %8 = alloca %struct.bfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = call %struct.bfq_queue* @bfq_init_rq(%struct.request* %9)
  store %struct.bfq_queue* %10, %struct.bfq_queue** %7, align 8
  %11 = load %struct.request*, %struct.request** %6, align 8
  %12 = call %struct.bfq_queue* @bfq_init_rq(%struct.request* %11)
  store %struct.bfq_queue* %12, %struct.bfq_queue** %8, align 8
  %13 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %14 = icmp ne %struct.bfq_queue* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %69

16:                                               ; preds = %3
  %17 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %19 = icmp eq %struct.bfq_queue* %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 2
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %20
  %26 = load %struct.request*, %struct.request** %6, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 2
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = load %struct.request*, %struct.request** %6, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.request*, %struct.request** %5, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 2
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load %struct.request*, %struct.request** %6, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 2
  %44 = load %struct.request*, %struct.request** %5, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 2
  %46 = call i32 @list_replace_init(i32* %43, i32* %45)
  %47 = load %struct.request*, %struct.request** %6, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.request*, %struct.request** %5, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %38, %30, %25, %20, %16
  %53 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %54 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %53, i32 0, i32 0
  %55 = load %struct.request*, %struct.request** %54, align 8
  %56 = load %struct.request*, %struct.request** %6, align 8
  %57 = icmp eq %struct.request* %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.request*, %struct.request** %5, align 8
  %60 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %61 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %60, i32 0, i32 0
  store %struct.request* %59, %struct.request** %61, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %64 = call i32 @bfqq_group(%struct.bfq_queue* %63)
  %65 = load %struct.request*, %struct.request** %6, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bfqg_stats_update_io_merged(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %62, %15
  ret void
}

declare dso_local %struct.bfq_queue* @bfq_init_rq(%struct.request*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_replace_init(i32*, i32*) #1

declare dso_local i32 @bfqg_stats_update_io_merged(i32, i32) #1

declare dso_local i32 @bfqq_group(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
