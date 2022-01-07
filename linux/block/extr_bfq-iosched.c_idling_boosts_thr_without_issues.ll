; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_idling_boosts_thr_without_issues.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_idling_boosts_thr_without_issues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i64, i32, i32 }
%struct.bfq_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_data*, %struct.bfq_queue*)* @idling_boosts_thr_without_issues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idling_boosts_thr_without_issues(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %8 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %9 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @blk_queue_nonrot(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %15 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %23 = call i32 @BFQQ_SEEKY(%struct.bfq_queue* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %27 = call i64 @bfq_bfqq_IO_bound(%struct.bfq_queue* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %31 = call i64 @bfq_bfqq_has_short_ttime(%struct.bfq_queue* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %25, %19
  %34 = phi i1 [ false, %25 ], [ false, %19 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %33
  %39 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %40 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @blk_queue_nonrot(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %46 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i1 [ false, %44 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %33
  %55 = phi i1 [ true, %33 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %61 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

declare dso_local i32 @blk_queue_nonrot(i32) #1

declare dso_local i32 @BFQQ_SEEKY(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_bfqq_IO_bound(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_bfqq_has_short_ttime(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
