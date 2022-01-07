; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_merge_bfqqs.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_merge_bfqqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i64 }
%struct.bfq_io_cq = type { i32 }
%struct.bfq_queue = type { i32, i32, i32*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"merging with queue %lu\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"merge_bfqqs: wr_busy %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_io_cq*, %struct.bfq_queue*, %struct.bfq_queue*)* @bfq_merge_bfqqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_merge_bfqqs(%struct.bfq_data* %0, %struct.bfq_io_cq* %1, %struct.bfq_queue* %2, %struct.bfq_queue* %3) #0 {
  %5 = alloca %struct.bfq_data*, align 8
  %6 = alloca %struct.bfq_io_cq*, align 8
  %7 = alloca %struct.bfq_queue*, align 8
  %8 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %5, align 8
  store %struct.bfq_io_cq* %1, %struct.bfq_io_cq** %6, align 8
  store %struct.bfq_queue* %2, %struct.bfq_queue** %7, align 8
  store %struct.bfq_queue* %3, %struct.bfq_queue** %8, align 8
  %9 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %10 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %12 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = call i32 @bfq_log_bfqq(%struct.bfq_data* %9, %struct.bfq_queue* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %17 = call i32 @bfq_bfqq_save_state(%struct.bfq_queue* %16)
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %19 = call i32 @bfq_bfqq_save_state(%struct.bfq_queue* %18)
  %20 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %21 = call i64 @bfq_bfqq_IO_bound(%struct.bfq_queue* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %25 = call i32 @bfq_mark_bfqq_IO_bound(%struct.bfq_queue* %24)
  br label %26

26:                                               ; preds = %23, %4
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %28 = call i32 @bfq_clear_bfqq_IO_bound(%struct.bfq_queue* %27)
  %29 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %30 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %71

33:                                               ; preds = %26
  %34 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %35 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %71

38:                                               ; preds = %33
  %39 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %40 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %43 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %45 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %48 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %50 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %53 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %55 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %58 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %60 = call i64 @bfq_bfqq_busy(%struct.bfq_queue* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %38
  %63 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %64 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %62, %38
  %68 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %69 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %33, %26
  %72 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %73 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %78 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %80 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %83 = call i64 @bfq_bfqq_busy(%struct.bfq_queue* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %87 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %85, %76
  br label %91

91:                                               ; preds = %90, %71
  %92 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %93 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %94 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %95 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @bfq_log_bfqq(%struct.bfq_data* %92, %struct.bfq_queue* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %6, align 8
  %99 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %100 = call i32 @bic_set_bfqq(%struct.bfq_io_cq* %98, %struct.bfq_queue* %99, i32 1)
  %101 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %102 = call i32 @bfq_mark_bfqq_coop(%struct.bfq_queue* %101)
  %103 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %104 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %103, i32 0, i32 2
  store i32* null, i32** %104, align 8
  %105 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %106 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %105, i32 0, i32 0
  store i32 -1, i32* %106, align 8
  %107 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %108 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %107, i32 0, i32 2
  store i32* null, i32** %108, align 8
  %109 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %110 = call i32 @bfq_put_queue(%struct.bfq_queue* %109)
  ret void
}

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*, i64) #1

declare dso_local i32 @bfq_bfqq_save_state(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_bfqq_IO_bound(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_mark_bfqq_IO_bound(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_clear_bfqq_IO_bound(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_bfqq_busy(%struct.bfq_queue*) #1

declare dso_local i32 @bic_set_bfqq(%struct.bfq_io_cq*, %struct.bfq_queue*, i32) #1

declare dso_local i32 @bfq_mark_bfqq_coop(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_put_queue(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
