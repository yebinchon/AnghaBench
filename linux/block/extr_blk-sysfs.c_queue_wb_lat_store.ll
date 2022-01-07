; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_wb_lat_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_wb_lat_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.rq_qos = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.request_queue*, i8*, i64)* @queue_wb_lat_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @queue_wb_lat_store(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rq_qos*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @queue_var_store64(i32* %10, i8* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %4, align 8
  br label %71

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %71

23:                                               ; preds = %17
  %24 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %25 = call %struct.rq_qos* @wbt_rq_qos(%struct.request_queue* %24)
  store %struct.rq_qos* %25, %struct.rq_qos** %8, align 8
  %26 = load %struct.rq_qos*, %struct.rq_qos** %8, align 8
  %27 = icmp ne %struct.rq_qos* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = call i64 @wbt_init(%struct.request_queue* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %4, align 8
  br label %71

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %41 = call i32 @wbt_default_latency_nsec(%struct.request_queue* %40)
  store i32 %41, i32* %10, align 4
  br label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 1000
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %53 = call i32 @wbt_get_min_lat(%struct.request_queue* %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %4, align 8
  br label %71

58:                                               ; preds = %51
  %59 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %60 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %59)
  %61 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %62 = call i32 @blk_mq_quiesce_queue(%struct.request_queue* %61)
  %63 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @wbt_set_min_lat(%struct.request_queue* %63, i32 %64)
  %66 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %67 = call i32 @blk_mq_unquiesce_queue(%struct.request_queue* %66)
  %68 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %69 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %68)
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %58, %56, %33, %20, %15
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i64 @queue_var_store64(i32*, i8*) #1

declare dso_local %struct.rq_qos* @wbt_rq_qos(%struct.request_queue*) #1

declare dso_local i64 @wbt_init(%struct.request_queue*) #1

declare dso_local i32 @wbt_default_latency_nsec(%struct.request_queue*) #1

declare dso_local i32 @wbt_get_min_lat(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_quiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @wbt_set_min_lat(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_mq_unquiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
