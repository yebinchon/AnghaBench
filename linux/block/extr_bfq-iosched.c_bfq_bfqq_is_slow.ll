; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_bfqq_is_slow.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_bfqq_is_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, i32, i32, i32 }
%struct.bfq_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BFQ_MIN_TT = common dso_local global i64 0, align 8
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@bfq_slice_idle = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bfq_bfqq_is_slow: slow %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_data*, %struct.bfq_queue*, i32, i32, i64*)* @bfq_bfqq_is_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_bfqq_is_slow(%struct.bfq_data* %0, %struct.bfq_queue* %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfq_data*, align 8
  %8 = alloca %struct.bfq_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %7, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %16 = call i32 @BFQQ_SEEKY(%struct.bfq_queue* %15)
  store i32 %16, i32* %14, align 4
  %17 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %18 = call i32 @bfq_bfqq_sync(%struct.bfq_queue* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %83

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.bfq_data*, %struct.bfq_data** %7, align 8
  %26 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  br label %30

28:                                               ; preds = %21
  %29 = call i32 (...) @ktime_get()
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.bfq_data*, %struct.bfq_data** %7, align 8
  %33 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ktime_sub(i32 %31, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @ktime_to_us(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 1000
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.bfq_data*, %struct.bfq_data** %7, align 8
  %42 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @blk_queue_nonrot(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i64, i64* @BFQ_MIN_TT, align 8
  %48 = load i64, i64* @NSEC_PER_MSEC, align 8
  %49 = udiv i64 %47, %48
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  br label %56

51:                                               ; preds = %40
  %52 = load i64, i64* @bfq_slice_idle, align 8
  %53 = load i64, i64* @NSEC_PER_MSEC, align 8
  %54 = udiv i64 %52, %53
  %55 = load i64*, i64** %11, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %83

58:                                               ; preds = %30
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @USEC_PER_MSEC, align 4
  %61 = sdiv i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %11, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %64, 20000
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %68 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bfq_data*, %struct.bfq_data** %7, align 8
  %72 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 2
  %75 = icmp slt i32 %70, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %66, %58
  %78 = load %struct.bfq_data*, %struct.bfq_data** %7, align 8
  %79 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @bfq_log_bfqq(%struct.bfq_data* %78, %struct.bfq_queue* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %77, %56, %20
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @BFQQ_SEEKY(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_sync(%struct.bfq_queue*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i64 @blk_queue_nonrot(i32) #1

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
