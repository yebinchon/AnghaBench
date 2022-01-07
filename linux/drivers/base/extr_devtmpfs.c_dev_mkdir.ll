; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_dev_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_dev_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.path = type { %struct.dentry* }
%struct.TYPE_3__ = type { i32* }

@AT_FDCWD = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @dev_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_mkdir(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @AT_FDCWD, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %12 = call %struct.dentry* @kern_path_create(i32 %9, i8* %10, %struct.path* %7, i32 %11)
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call i64 @IS_ERR(%struct.dentry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.dentry* %17)
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  %22 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %21)
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @vfs_mkdir(%struct.TYPE_3__* %22, %struct.dentry* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32* @thread, i32** %31, align 8
  br label %32

32:                                               ; preds = %28, %19
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = call i32 @done_path_create(%struct.path* %7, %struct.dentry* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.dentry* @kern_path_create(i32, i8*, %struct.path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_mkdir(%struct.TYPE_3__*, %struct.dentry*, i32) #1

declare dso_local %struct.TYPE_3__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @done_path_create(%struct.path*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
