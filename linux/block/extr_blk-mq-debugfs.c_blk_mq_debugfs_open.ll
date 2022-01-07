; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_open.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type { i32, i64 }
%struct.file = type { %struct.seq_file*, %struct.TYPE_5__ }
%struct.seq_file = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@EPERM = common dso_local global i32 0, align 4
@blk_mq_debugfs_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @blk_mq_debugfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_debugfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.blk_mq_debugfs_attr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.seq_file*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %11, align 8
  store %struct.blk_mq_debugfs_attr* %12, %struct.blk_mq_debugfs_attr** %6, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_6__* @d_inode(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %6, align 8
  %23 = getelementptr inbounds %struct.blk_mq_debugfs_attr, %struct.blk_mq_debugfs_attr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %6, align 8
  %29 = getelementptr inbounds %struct.blk_mq_debugfs_attr, %struct.blk_mq_debugfs_attr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @seq_open(%struct.file* %27, i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %26
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load %struct.seq_file*, %struct.seq_file** %36, align 8
  store %struct.seq_file* %37, %struct.seq_file** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %40 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %34, %26
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %62

43:                                               ; preds = %2
  %44 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %6, align 8
  %45 = getelementptr inbounds %struct.blk_mq_debugfs_attr, %struct.blk_mq_debugfs_attr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON_ONCE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = load i32, i32* @blk_mq_debugfs_show, align 4
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %59, align 8
  %61 = call i32 @single_open(%struct.file* %56, i32 %57, %struct.blk_mq_debugfs_attr* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %52, %41
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_6__* @d_inode(i32) #1

declare dso_local i32 @seq_open(%struct.file*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @single_open(%struct.file*, i32, %struct.blk_mq_debugfs_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
