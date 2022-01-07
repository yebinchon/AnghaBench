; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_max_sectors_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_max_sectors_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.request_queue*, i8*, i64)* @queue_max_sectors_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @queue_max_sectors_store(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %13 = call i32 @queue_max_hw_sectors(%struct.request_queue* %12)
  %14 = ashr i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = sub nsw i32 %16, 10
  %18 = shl i32 1, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @queue_var_store(i64* %8, i8* %20, i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %4, align 8
  br label %67

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = lshr i64 %32, 1
  %34 = call i64 @min_not_zero(i64 %28, i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %27
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %4, align 8
  br label %67

45:                                               ; preds = %38
  %46 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %47 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %46, i32 0, i32 0
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load i64, i64* %8, align 8
  %50 = shl i64 %49, 1
  %51 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = sub nsw i32 %55, 10
  %57 = zext i32 %56 to i64
  %58 = lshr i64 %54, %57
  %59 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %60 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %64 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %45, %42, %25
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local i64 @queue_var_store(i64*, i8*, i64) #1

declare dso_local i64 @min_not_zero(i64, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
