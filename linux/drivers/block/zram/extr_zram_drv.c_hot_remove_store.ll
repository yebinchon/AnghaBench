; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_hot_remove_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_hot_remove_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i32 }
%struct.class_attribute = type { i32 }
%struct.zram = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@zram_index_mutex = common dso_local global i32 0, align 4
@zram_index_idr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.class*, %struct.class_attribute*, i8*, i64)* @hot_remove_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hot_remove_store(%struct.class* %0, %struct.class_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.class*, align 8
  %7 = alloca %struct.class_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zram*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.class* %0, %struct.class** %6, align 8
  store %struct.class_attribute* %1, %struct.class_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @kstrtoint(i8* %13, i32 10, i32* %12)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %55

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %55

25:                                               ; preds = %19
  %26 = call i32 @mutex_lock(i32* @zram_index_mutex)
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.zram* @idr_find(i32* @zram_index_idr, i32 %27)
  store %struct.zram* %28, %struct.zram** %10, align 8
  %29 = load %struct.zram*, %struct.zram** %10, align 8
  %30 = icmp ne %struct.zram* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.zram*, %struct.zram** %10, align 8
  %33 = call i32 @zram_remove(%struct.zram* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @idr_remove(i32* @zram_index_idr, i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  br label %43

40:                                               ; preds = %25
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = call i32 @mutex_unlock(i32* @zram_index_mutex)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  br label %52

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i64 [ %49, %47 ], [ %51, %50 ]
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %22, %17
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.zram* @idr_find(i32*, i32) #1

declare dso_local i32 @zram_remove(%struct.zram*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
