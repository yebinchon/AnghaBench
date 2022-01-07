; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_req_expired.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_req_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32 }

@MQ_RQ_IN_FLIGHT = common dso_local global i64 0, align 8
@RQF_TIMED_OUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i64*)* @blk_mq_req_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_req_expired(%struct.request* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call i64 @blk_mq_rq_state(%struct.request* %7)
  %9 = load i64, i64* @MQ_RQ_IN_FLIGHT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RQF_TIMED_OUT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %48

20:                                               ; preds = %12
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @READ_ONCE(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @time_after_eq(i32 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %48

30:                                               ; preds = %20
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  br label %47

37:                                               ; preds = %30
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @time_after(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = load i64*, i64** %5, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %34
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %29, %19, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @blk_mq_rq_state(%struct.request*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
