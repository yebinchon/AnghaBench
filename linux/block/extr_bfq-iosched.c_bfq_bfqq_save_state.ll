; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_bfqq_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_bfqq_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, %struct.bfq_io_cq* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bfq_io_cq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_queue*)* @bfq_bfqq_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_bfqq_save_state(%struct.bfq_queue* %0) #0 {
  %2 = alloca %struct.bfq_queue*, align 8
  %3 = alloca %struct.bfq_io_cq*, align 8
  store %struct.bfq_queue* %0, %struct.bfq_queue** %2, align 8
  %4 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %5 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %4, i32 0, i32 8
  %6 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %5, align 8
  store %struct.bfq_io_cq* %6, %struct.bfq_io_cq** %3, align 8
  %7 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %8 = icmp ne %struct.bfq_io_cq* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %102

10:                                               ; preds = %1
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %12 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %16 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %18 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %21 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %23 = call i32 @bfq_bfqq_has_short_ttime(%struct.bfq_queue* %22)
  %24 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %25 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %27 = call i32 @bfq_bfqq_IO_bound(%struct.bfq_queue* %26)
  %28 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %29 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %31 = call i32 @bfq_bfqq_in_large_burst(%struct.bfq_queue* %30)
  %32 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %33 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %35 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %34, i32 0, i32 5
  %36 = call i32 @hlist_unhashed(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %41 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %43 = call i64 @bfq_bfqq_just_created(%struct.bfq_queue* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %10
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %47 = call i32 @bfq_bfqq_in_large_burst(%struct.bfq_queue* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %51 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %49, %45, %10
  %57 = phi i1 [ false, %45 ], [ false, %10 ], [ %55, %49 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %63 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %62, i32 0, i32 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %68 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = call i32 (...) @bfq_smallest_from_now()
  %70 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %71 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %73 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @bfq_wr_duration(%struct.TYPE_4__* %74)
  %76 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %77 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @jiffies, align 4
  %79 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %80 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %102

81:                                               ; preds = %56
  %82 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %83 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %86 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %88 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %91 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %93 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %96 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %98 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %101 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %9, %81, %61
  ret void
}

declare dso_local i32 @bfq_bfqq_has_short_ttime(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_IO_bound(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_in_large_burst(%struct.bfq_queue*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bfq_bfqq_just_created(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_smallest_from_now(...) #1

declare dso_local i32 @bfq_wr_duration(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
