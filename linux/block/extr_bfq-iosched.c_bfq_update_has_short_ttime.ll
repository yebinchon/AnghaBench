; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_update_has_short_ttime.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_update_has_short_ttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i64, i64 }
%struct.bfq_queue = type { i64, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.bfq_io_cq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_queue*, %struct.bfq_io_cq*)* @bfq_update_has_short_ttime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_update_has_short_ttime(%struct.bfq_data* %0, %struct.bfq_queue* %1, %struct.bfq_io_cq* %2) #0 {
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca %struct.bfq_io_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %4, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %5, align 8
  store %struct.bfq_io_cq* %2, %struct.bfq_io_cq** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %10 = call i32 @bfq_bfqq_sync(%struct.bfq_queue* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %14 = call i64 @bfq_class_idle(%struct.bfq_queue* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %18 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %12, %3
  br label %95

22:                                               ; preds = %16
  %23 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %24 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %27 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i64 @time_is_after_eq_jiffies(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %95

33:                                               ; preds = %22
  %34 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %6, align 8
  %35 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %33
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %43 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @bfq_sample_valid(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %50 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %54 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48, %33
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %48, %41
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %61 = call i32 @bfq_bfqq_has_short_ttime(%struct.bfq_queue* %60)
  %62 = icmp ne i32 %59, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %68 = call i32 @bfq_mark_bfqq_has_short_ttime(%struct.bfq_queue* %67)
  br label %72

69:                                               ; preds = %58
  %70 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %71 = call i32 @bfq_clear_bfqq_has_short_ttime(%struct.bfq_queue* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %77 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %82 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @msecs_to_jiffies(i32 100)
  %85 = add nsw i64 %83, %84
  %86 = call i64 @time_is_before_eq_jiffies(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88, %80
  %92 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %93 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %94 = call i32 @bfq_reset_inject_limit(%struct.bfq_data* %92, %struct.bfq_queue* %93)
  br label %95

95:                                               ; preds = %21, %32, %91, %88, %75, %72
  ret void
}

declare dso_local i32 @bfq_bfqq_sync(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_class_idle(%struct.bfq_queue*) #1

declare dso_local i64 @time_is_after_eq_jiffies(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @bfq_sample_valid(i32) #1

declare dso_local i32 @bfq_bfqq_has_short_ttime(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_mark_bfqq_has_short_ttime(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_clear_bfqq_has_short_ttime(%struct.bfq_queue*) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bfq_reset_inject_limit(%struct.bfq_data*, %struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
