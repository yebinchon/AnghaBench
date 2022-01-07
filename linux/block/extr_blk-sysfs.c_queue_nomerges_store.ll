; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_nomerges_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_nomerges_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

@QUEUE_FLAG_NOMERGES = common dso_local global i32 0, align 4
@QUEUE_FLAG_NOXMERGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.request_queue*, i8*, i64)* @queue_nomerges_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @queue_nomerges_store(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @queue_var_store(i64* %8, i8* %10, i64 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %4, align 8
  br label %40

17:                                               ; preds = %3
  %18 = load i32, i32* @QUEUE_FLAG_NOMERGES, align 4
  %19 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %20 = call i32 @blk_queue_flag_clear(i32 %18, %struct.request_queue* %19)
  %21 = load i32, i32* @QUEUE_FLAG_NOXMERGES, align 4
  %22 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %23 = call i32 @blk_queue_flag_clear(i32 %21, %struct.request_queue* %22)
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @QUEUE_FLAG_NOMERGES, align 4
  %28 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %29 = call i32 @blk_queue_flag_set(i32 %27, %struct.request_queue* %28)
  br label %38

30:                                               ; preds = %17
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @QUEUE_FLAG_NOXMERGES, align 4
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = call i32 @blk_queue_flag_set(i32 %34, %struct.request_queue* %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %15
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i64 @queue_var_store(i64*, i8*, i64) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
