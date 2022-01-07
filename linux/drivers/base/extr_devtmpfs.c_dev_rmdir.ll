; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_dev_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_dev_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i32* }

@thread = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dev_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_rmdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.dentry* @kern_path_locked(i8* %7, %struct.path* %4)
  store %struct.dentry* %8, %struct.dentry** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = call i64 @IS_ERR(%struct.dentry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call i32 @PTR_ERR(%struct.dentry* %13)
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i64 @d_really_is_positive(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, @thread
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 0
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  %28 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %27)
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = call i32 @vfs_rmdir(%struct.TYPE_4__* %28, %struct.dentry* %29)
  store i32 %30, i32* %6, align 4
  br label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %38

35:                                               ; preds = %15
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = call i32 @dput(%struct.dentry* %39)
  %41 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 0
  %42 = load %struct.dentry*, %struct.dentry** %41, align 8
  %43 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %42)
  %44 = call i32 @inode_unlock(%struct.TYPE_4__* %43)
  %45 = call i32 @path_put(%struct.path* %4)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %38, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.dentry* @kern_path_locked(i8*, %struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @vfs_rmdir(%struct.TYPE_4__*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
