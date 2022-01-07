; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_check_expired.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_check_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.request = type { i32, i32 (%struct.request*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i32)* @blk_mq_check_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_check_expired(%struct.blk_mq_hw_ctx* %0, %struct.request* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %10, align 8
  %13 = load %struct.request*, %struct.request** %7, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = call i64 @blk_mq_req_expired(%struct.request* %13, i64* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %54

18:                                               ; preds = %4
  %19 = load %struct.request*, %struct.request** %7, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = call i32 @refcount_inc_not_zero(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %54

24:                                               ; preds = %18
  %25 = load %struct.request*, %struct.request** %7, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = call i64 @blk_mq_req_expired(%struct.request* %25, i64* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.request*, %struct.request** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @blk_mq_rq_timed_out(%struct.request* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.request*, %struct.request** %7, align 8
  %35 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %36 = call i64 @is_flush_rq(%struct.request* %34, %struct.blk_mq_hw_ctx* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.request*, %struct.request** %7, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 1
  %41 = load i32 (%struct.request*, i32)*, i32 (%struct.request*, i32)** %40, align 8
  %42 = load %struct.request*, %struct.request** %7, align 8
  %43 = call i32 %41(%struct.request* %42, i32 0)
  br label %53

44:                                               ; preds = %33
  %45 = load %struct.request*, %struct.request** %7, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 0
  %47 = call i64 @refcount_dec_and_test(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.request*, %struct.request** %7, align 8
  %51 = call i32 @__blk_mq_free_request(%struct.request* %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %38
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %23, %17
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @blk_mq_req_expired(%struct.request*, i64*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @blk_mq_rq_timed_out(%struct.request*, i32) #1

declare dso_local i64 @is_flush_rq(%struct.request*, %struct.blk_mq_hw_ctx*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @__blk_mq_free_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
