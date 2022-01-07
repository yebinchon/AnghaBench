; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_poll_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_poll_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HCTX_TYPE_POLL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@QUEUE_FLAG_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.request_queue*, i8*, i64)* @queue_poll_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @queue_poll_store(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %22, %14, %3
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %57

36:                                               ; preds = %22
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @queue_var_store(i64* %8, i8* %37, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %4, align 8
  br label %57

44:                                               ; preds = %36
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @QUEUE_FLAG_POLL, align 4
  %49 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %50 = call i32 @blk_queue_flag_set(i32 %48, %struct.request_queue* %49)
  br label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @QUEUE_FLAG_POLL, align 4
  %53 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %54 = call i32 @blk_queue_flag_clear(i32 %52, %struct.request_queue* %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %42, %33
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i64 @queue_var_store(i64*, i8*, i64) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
