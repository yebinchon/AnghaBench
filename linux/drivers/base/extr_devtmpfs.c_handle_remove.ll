; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_handle_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_handle_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }
%struct.kstat = type { i32 }
%struct.iattr = type { i32, i32, i32, i32 }

@STATX_TYPE = common dso_local global i32 0, align 4
@STATX_MODE = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.device*)* @handle_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_remove(i8* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kstat, align 4
  %11 = alloca %struct.path, align 8
  %12 = alloca %struct.iattr, align 4
  store i8* %0, i8** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.dentry* @kern_path_locked(i8* %13, %struct.path* %6)
  store %struct.dentry* %14, %struct.dentry** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = call i64 @IS_ERR(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.dentry* %19)
  store i32 %20, i32* %3, align 4
  br label %104

21:                                               ; preds = %2
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = call i64 @d_really_is_positive(%struct.dentry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %27, %struct.dentry** %26, align 8
  %28 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %29 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @STATX_TYPE, align 4
  %32 = load i32, i32* @STATX_MODE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %35 = call i32 @vfs_getattr(%struct.path* %11, %struct.kstat* %10, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %81, label %38

38:                                               ; preds = %25
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = call i32 @d_inode(%struct.dentry* %40)
  %42 = call i64 @dev_mynode(%struct.device* %39, i32 %41, %struct.kstat* %10)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %38
  %45 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %46 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -512
  %52 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @ATTR_UID, align 4
  %54 = load i32, i32* @ATTR_GID, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ATTR_MODE, align 4
  %57 = or i32 %55, %56
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = call i32 @d_inode(%struct.dentry* %59)
  %61 = call i32 @inode_lock(i32 %60)
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = call i32 @notify_change(%struct.dentry* %62, %struct.iattr* %12, i32* null)
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = call i32 @d_inode(%struct.dentry* %64)
  %66 = call i32 @inode_unlock(i32 %65)
  %67 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %68 = load %struct.dentry*, %struct.dentry** %67, align 8
  %69 = call i32 @d_inode(%struct.dentry* %68)
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = call i32 @vfs_unlink(i32 %69, %struct.dentry* %70, i32* null)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %44
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %44
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %74
  br label %81

81:                                               ; preds = %80, %38, %25
  br label %85

82:                                               ; preds = %21
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %81
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  %87 = call i32 @dput(%struct.dentry* %86)
  %88 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %89 = load %struct.dentry*, %struct.dentry** %88, align 8
  %90 = call i32 @d_inode(%struct.dentry* %89)
  %91 = call i32 @inode_unlock(i32 %90)
  %92 = call i32 @path_put(%struct.path* %6)
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load i8*, i8** %4, align 8
  %97 = call i64 @strchr(i8* %96, i8 signext 47)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 @delete_path(i8* %100)
  br label %102

102:                                              ; preds = %99, %95, %85
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %18
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.dentry* @kern_path_locked(i8*, %struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #1

declare dso_local i64 @dev_mynode(%struct.device*, i32, %struct.kstat*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @vfs_unlink(i32, %struct.dentry*, i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @delete_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
