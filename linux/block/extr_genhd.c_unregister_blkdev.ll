; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_unregister_blkdev.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_unregister_blkdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_major_name = type { i32, %struct.blk_major_name*, i32 }

@block_class_lock = common dso_local global i32 0, align 4
@major_names = common dso_local global %struct.blk_major_name** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_blkdev(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.blk_major_name**, align 8
  %6 = alloca %struct.blk_major_name*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.blk_major_name* null, %struct.blk_major_name** %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @major_to_index(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = call i32 @mutex_lock(i32* @block_class_lock)
  %11 = load %struct.blk_major_name**, %struct.blk_major_name*** @major_names, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.blk_major_name*, %struct.blk_major_name** %11, i64 %13
  store %struct.blk_major_name** %14, %struct.blk_major_name*** %5, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %17 = load %struct.blk_major_name*, %struct.blk_major_name** %16, align 8
  %18 = icmp ne %struct.blk_major_name* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %21 = load %struct.blk_major_name*, %struct.blk_major_name** %20, align 8
  %22 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %32

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %30 = load %struct.blk_major_name*, %struct.blk_major_name** %29, align 8
  %31 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %30, i32 0, i32 1
  store %struct.blk_major_name** %31, %struct.blk_major_name*** %5, align 8
  br label %15

32:                                               ; preds = %26, %15
  %33 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %34 = load %struct.blk_major_name*, %struct.blk_major_name** %33, align 8
  %35 = icmp ne %struct.blk_major_name* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %38 = load %struct.blk_major_name*, %struct.blk_major_name** %37, align 8
  %39 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcmp(i32 %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36, %32
  %45 = call i32 @WARN_ON(i32 1)
  br label %53

46:                                               ; preds = %36
  %47 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %48 = load %struct.blk_major_name*, %struct.blk_major_name** %47, align 8
  store %struct.blk_major_name* %48, %struct.blk_major_name** %6, align 8
  %49 = load %struct.blk_major_name*, %struct.blk_major_name** %6, align 8
  %50 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %49, i32 0, i32 1
  %51 = load %struct.blk_major_name*, %struct.blk_major_name** %50, align 8
  %52 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  store %struct.blk_major_name* %51, %struct.blk_major_name** %52, align 8
  br label %53

53:                                               ; preds = %46, %44
  %54 = call i32 @mutex_unlock(i32* @block_class_lock)
  %55 = load %struct.blk_major_name*, %struct.blk_major_name** %6, align 8
  %56 = call i32 @kfree(%struct.blk_major_name* %55)
  ret void
}

declare dso_local i32 @major_to_index(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.blk_major_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
