; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hypfs_sb_info* }
%struct.hypfs_sb_info = type { i32 }
%struct.file = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hypfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hypfs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = call %struct.TYPE_4__* @file_inode(%struct.file* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FMODE_WRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @S_IWUGO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %82

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FMODE_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @S_IRUGO, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EACCES, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %82

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %51, align 8
  store %struct.hypfs_sb_info* %52, %struct.hypfs_sb_info** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %47
  %56 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %7, align 8
  %57 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @kstrdup(i8* %59, i32 %60)
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %55
  %69 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %7, align 8
  %70 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %82

74:                                               ; preds = %55
  %75 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %7, align 8
  %76 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %47
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = load %struct.file*, %struct.file** %5, align 8
  %81 = call i32 @nonseekable_open(%struct.inode* %79, %struct.file* %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %68, %43, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
