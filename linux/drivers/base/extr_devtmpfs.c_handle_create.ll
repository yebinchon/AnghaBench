; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_handle_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_handle_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dentry = type { i32 }
%struct.path = type { %struct.dentry* }
%struct.iattr = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@AT_FDCWD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, %struct.device*)* @handle_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_create(i8* %0, i32 %1, i32 %2, i32 %3, %struct.device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.path, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iattr, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.device* %4, %struct.device** %11, align 8
  %16 = load i32, i32* @AT_FDCWD, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct.dentry* @kern_path_create(i32 %16, i8* %17, %struct.path* %13, i32 0)
  store %struct.dentry* %18, %struct.dentry** %12, align 8
  %19 = load %struct.dentry*, %struct.dentry** %12, align 8
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.dentry* @ERR_PTR(i32 %21)
  %23 = icmp eq %struct.dentry* %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @create_path(i8* %25)
  %27 = load i32, i32* @AT_FDCWD, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call %struct.dentry* @kern_path_create(i32 %27, i8* %28, %struct.path* %13, i32 0)
  store %struct.dentry* %29, %struct.dentry** %12, align 8
  br label %30

30:                                               ; preds = %24, %5
  %31 = load %struct.dentry*, %struct.dentry** %12, align 8
  %32 = call i64 @IS_ERR(%struct.dentry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.dentry*, %struct.dentry** %12, align 8
  %36 = call i32 @PTR_ERR(%struct.dentry* %35)
  store i32 %36, i32* %6, align 4
  br label %77

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %39 = load %struct.dentry*, %struct.dentry** %38, align 8
  %40 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %39)
  %41 = load %struct.dentry*, %struct.dentry** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vfs_mknod(%struct.TYPE_5__* %40, %struct.dentry* %41, i32 %42, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @ATTR_MODE, align 4
  %57 = load i32, i32* @ATTR_UID, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ATTR_GID, align 4
  %60 = or i32 %58, %59
  %61 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.dentry*, %struct.dentry** %12, align 8
  %63 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %62)
  %64 = call i32 @inode_lock(%struct.TYPE_5__* %63)
  %65 = load %struct.dentry*, %struct.dentry** %12, align 8
  %66 = call i32 @notify_change(%struct.dentry* %65, %struct.iattr* %15, i32* null)
  %67 = load %struct.dentry*, %struct.dentry** %12, align 8
  %68 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %67)
  %69 = call i32 @inode_unlock(%struct.TYPE_5__* %68)
  %70 = load %struct.dentry*, %struct.dentry** %12, align 8
  %71 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32* @thread, i32** %72, align 8
  br label %73

73:                                               ; preds = %49, %37
  %74 = load %struct.dentry*, %struct.dentry** %12, align 8
  %75 = call i32 @done_path_create(%struct.path* %13, %struct.dentry* %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %34
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.dentry* @kern_path_create(i32, i8*, %struct.path*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @create_path(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_mknod(%struct.TYPE_5__*, %struct.dentry*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @done_path_create(%struct.path*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
