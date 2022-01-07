; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_debugfs_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_debugfs_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.blk_mq_debugfs_attr = type { i32, i64 }
%struct.TYPE_2__ = type { i8* }

@blk_mq_debugfs_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, i8*, %struct.blk_mq_debugfs_attr*)* @debugfs_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debugfs_create_files(%struct.dentry* %0, i8* %1, %struct.blk_mq_debugfs_attr* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.blk_mq_debugfs_attr*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.blk_mq_debugfs_attr* %2, %struct.blk_mq_debugfs_attr** %6, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %35

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  br label %16

16:                                               ; preds = %32, %11
  %17 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %6, align 8
  %18 = getelementptr inbounds %struct.blk_mq_debugfs_attr, %struct.blk_mq_debugfs_attr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %6, align 8
  %23 = getelementptr inbounds %struct.blk_mq_debugfs_attr, %struct.blk_mq_debugfs_attr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %6, align 8
  %26 = getelementptr inbounds %struct.blk_mq_debugfs_attr, %struct.blk_mq_debugfs_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %6, align 8
  %30 = bitcast %struct.blk_mq_debugfs_attr* %29 to i8*
  %31 = call i32 @debugfs_create_file(i64 %24, i32 %27, %struct.dentry* %28, i8* %30, i32* @blk_mq_debugfs_fops)
  br label %32

32:                                               ; preds = %21
  %33 = load %struct.blk_mq_debugfs_attr*, %struct.blk_mq_debugfs_attr** %6, align 8
  %34 = getelementptr inbounds %struct.blk_mq_debugfs_attr, %struct.blk_mq_debugfs_attr* %33, i32 1
  store %struct.blk_mq_debugfs_attr* %34, %struct.blk_mq_debugfs_attr** %6, align 8
  br label %16

35:                                               ; preds = %10, %16
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i64, i32, %struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
