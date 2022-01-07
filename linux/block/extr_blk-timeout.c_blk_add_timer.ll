; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-timeout.c_blk_add_timer.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-timeout.c_blk_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@RQF_TIMED_OUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_add_timer(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 3
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.request*, %struct.request** %2, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.request*, %struct.request** %2, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @RQF_TIMED_OUT, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.request*, %struct.request** %2, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.request*, %struct.request** %2, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %4, align 8
  %32 = load %struct.request*, %struct.request** %2, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @WRITE_ONCE(i32 %34, i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @round_jiffies_up(i64 %37)
  %39 = call i64 @blk_rq_timeout(i32 %38)
  store i64 %39, i64* %4, align 8
  %40 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 0
  %42 = call i32 @timer_pending(%struct.TYPE_3__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %19
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %47 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @time_before(i64 %45, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %44, %19
  %53 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %5, align 8
  %59 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %60 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %59, i32 0, i32 0
  %61 = call i32 @timer_pending(%struct.TYPE_3__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* @HZ, align 4
  %66 = sdiv i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = icmp uge i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63, %52
  %70 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %71 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %70, i32 0, i32 0
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @mod_timer(%struct.TYPE_3__* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %44
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i64 @blk_rq_timeout(i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mod_timer(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
