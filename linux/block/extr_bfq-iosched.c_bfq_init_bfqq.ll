; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_init_bfqq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_init_bfqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32 }
%struct.bfq_queue = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_4__, %struct.bfq_data*, i64, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bfq_io_cq = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_queue*, %struct.bfq_io_cq*, i32, i32)* @bfq_init_bfqq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_init_bfqq(%struct.bfq_data* %0, %struct.bfq_queue* %1, %struct.bfq_io_cq* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bfq_data*, align 8
  %7 = alloca %struct.bfq_queue*, align 8
  %8 = alloca %struct.bfq_io_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %6, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %7, align 8
  store %struct.bfq_io_cq* %2, %struct.bfq_io_cq** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %12 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %11, i32 0, i32 16
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @RB_CLEAR_NODE(i32* %13)
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %16 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %15, i32 0, i32 15
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %19 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %18, i32 0, i32 14
  %20 = call i32 @INIT_HLIST_NODE(i32* %19)
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %22 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %21, i32 0, i32 13
  %23 = call i32 @INIT_HLIST_NODE(i32* %22)
  %24 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %25 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %24, i32 0, i32 12
  %26 = call i32 @INIT_HLIST_HEAD(i32* %25)
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %28 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %30 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %31 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %30, i32 0, i32 10
  store %struct.bfq_data* %29, %struct.bfq_data** %31, align 8
  %32 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %8, align 8
  %33 = icmp ne %struct.bfq_io_cq* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %36 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %8, align 8
  %37 = call i32 @bfq_set_next_ioprio_data(%struct.bfq_queue* %35, %struct.bfq_io_cq* %36)
  br label %38

38:                                               ; preds = %34, %5
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %43 = call i32 @bfq_class_idle(%struct.bfq_queue* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %47 = call i32 @bfq_mark_bfqq_has_short_ttime(%struct.bfq_queue* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %50 = call i32 @bfq_mark_bfqq_sync(%struct.bfq_queue* %49)
  %51 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %52 = call i32 @bfq_mark_bfqq_just_created(%struct.bfq_queue* %51)
  br label %56

53:                                               ; preds = %38
  %54 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %55 = call i32 @bfq_clear_bfqq_sync(%struct.bfq_queue* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = call i64 (...) @ktime_get_ns()
  %58 = add nsw i64 %57, 1
  %59 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %60 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %63 = call i32 @bfq_mark_bfqq_IO_bound(%struct.bfq_queue* %62)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %66 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %68 = call i32 @bfq_max_budget(%struct.bfq_data* %67)
  %69 = mul nsw i32 2, %68
  %70 = sdiv i32 %69, 3
  %71 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %72 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = call i8* (...) @bfq_smallest_from_now()
  %74 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %75 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %77 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load i8*, i8** @jiffies, align 8
  %79 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %80 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = call i8* (...) @bfq_smallest_from_now()
  %82 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %83 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = call i8* (...) @bfq_smallest_from_now()
  %85 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %86 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @jiffies, align 8
  %88 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %89 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %91 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  ret void
}

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @bfq_set_next_ioprio_data(%struct.bfq_queue*, %struct.bfq_io_cq*) #1

declare dso_local i32 @bfq_class_idle(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_mark_bfqq_has_short_ttime(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_mark_bfqq_sync(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_mark_bfqq_just_created(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_clear_bfqq_sync(%struct.bfq_queue*) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @bfq_mark_bfqq_IO_bound(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_max_budget(%struct.bfq_data*) #1

declare dso_local i8* @bfq_smallest_from_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
