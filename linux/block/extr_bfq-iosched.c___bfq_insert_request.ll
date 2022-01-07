; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c___bfq_insert_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c___bfq_insert_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i64* }
%struct.request = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bfq_queue** }
%struct.bfq_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_data*, %struct.request*)* @__bfq_insert_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bfq_insert_request(%struct.bfq_data* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca %struct.bfq_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call %struct.bfq_queue* @RQ_BFQQ(%struct.request* %9)
  store %struct.bfq_queue* %10, %struct.bfq_queue** %5, align 8
  %11 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %12 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = call %struct.bfq_queue* @bfq_setup_cooperator(%struct.bfq_data* %11, %struct.bfq_queue* %12, %struct.request* %13, i32 1)
  store %struct.bfq_queue* %14, %struct.bfq_queue** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %16 = icmp ne %struct.bfq_queue* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %2
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %19 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %23 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %27 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = call i32 @RQ_BIC(%struct.request* %30)
  %32 = call %struct.bfq_queue* @bic_to_bfqq(i32 %31, i32 1)
  %33 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %34 = icmp eq %struct.bfq_queue* %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %17
  %36 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = call i32 @RQ_BIC(%struct.request* %37)
  %39 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %40 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %41 = call i32 @bfq_merge_bfqqs(%struct.bfq_data* %36, i32 %38, %struct.bfq_queue* %39, %struct.bfq_queue* %40)
  br label %42

42:                                               ; preds = %35, %17
  %43 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %44 = call i32 @bfq_clear_bfqq_just_created(%struct.bfq_queue* %43)
  %45 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %46 = call i32 @bfq_put_queue(%struct.bfq_queue* %45)
  %47 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.bfq_queue**, %struct.bfq_queue*** %50, align 8
  %52 = getelementptr inbounds %struct.bfq_queue*, %struct.bfq_queue** %51, i64 1
  store %struct.bfq_queue* %47, %struct.bfq_queue** %52, align 8
  %53 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  store %struct.bfq_queue* %53, %struct.bfq_queue** %5, align 8
  br label %54

54:                                               ; preds = %42, %2
  %55 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %56 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %57 = call i32 @bfq_update_io_thinktime(%struct.bfq_data* %55, %struct.bfq_queue* %56)
  %58 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %59 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %60 = load %struct.request*, %struct.request** %4, align 8
  %61 = call i32 @RQ_BIC(%struct.request* %60)
  %62 = call i32 @bfq_update_has_short_ttime(%struct.bfq_data* %58, %struct.bfq_queue* %59, i32 %61)
  %63 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %64 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %65 = load %struct.request*, %struct.request** %4, align 8
  %66 = call i32 @bfq_update_io_seektime(%struct.bfq_data* %63, %struct.bfq_queue* %64, %struct.request* %65)
  %67 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %68 = icmp ne %struct.bfq_queue* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %71 = call i64 @bfq_bfqq_wait_request(%struct.bfq_queue* %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %54
  %74 = phi i1 [ false, %54 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load %struct.request*, %struct.request** %4, align 8
  %77 = call i32 @bfq_add_request(%struct.request* %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %82 = call i64 @bfq_bfqq_wait_request(%struct.bfq_queue* %81)
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %80, %73
  %86 = phi i1 [ false, %73 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = call i64 (...) @ktime_get_ns()
  %89 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %90 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.request*, %struct.request** %4, align 8
  %93 = call i64 @rq_is_sync(%struct.request* %92)
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %88, %95
  %97 = load %struct.request*, %struct.request** %4, align 8
  %98 = getelementptr inbounds %struct.request, %struct.request* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.request*, %struct.request** %4, align 8
  %100 = getelementptr inbounds %struct.request, %struct.request* %99, i32 0, i32 0
  %101 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %102 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %101, i32 0, i32 0
  %103 = call i32 @list_add_tail(i32* %100, i32* %102)
  %104 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %105 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %106 = load %struct.request*, %struct.request** %4, align 8
  %107 = call i32 @bfq_rq_enqueued(%struct.bfq_data* %104, %struct.bfq_queue* %105, %struct.request* %106)
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local %struct.bfq_queue* @RQ_BFQQ(%struct.request*) #1

declare dso_local %struct.bfq_queue* @bfq_setup_cooperator(%struct.bfq_data*, %struct.bfq_queue*, %struct.request*, i32) #1

declare dso_local %struct.bfq_queue* @bic_to_bfqq(i32, i32) #1

declare dso_local i32 @RQ_BIC(%struct.request*) #1

declare dso_local i32 @bfq_merge_bfqqs(%struct.bfq_data*, i32, %struct.bfq_queue*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_clear_bfqq_just_created(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_put_queue(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_update_io_thinktime(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_update_has_short_ttime(%struct.bfq_data*, %struct.bfq_queue*, i32) #1

declare dso_local i32 @bfq_update_io_seektime(%struct.bfq_data*, %struct.bfq_queue*, %struct.request*) #1

declare dso_local i64 @bfq_bfqq_wait_request(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_add_request(%struct.request*) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfq_rq_enqueued(%struct.bfq_data*, %struct.bfq_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
