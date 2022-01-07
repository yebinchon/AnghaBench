; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i8*, %struct.file_operations*, %struct.super_block* }
%struct.super_block = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @binderfs_create_file(%struct.dentry* %0, i8* %1, %struct.file_operations* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.super_block*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.file_operations* %2, %struct.file_operations** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %11, align 8
  %16 = call i32 @inode_lock(%struct.inode* %15)
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.dentry* @binderfs_create_dentry(%struct.dentry* %17, i8* %18)
  store %struct.dentry* %19, %struct.dentry** %9, align 8
  %20 = load %struct.dentry*, %struct.dentry** %9, align 8
  %21 = call i64 @IS_ERR(%struct.dentry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %53

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %12, align 8
  %28 = load %struct.super_block*, %struct.super_block** %12, align 8
  %29 = load i32, i32* @S_IFREG, align 4
  %30 = or i32 %29, 292
  %31 = call %struct.inode* @binderfs_make_inode(%struct.super_block* %28, i32 %30)
  store %struct.inode* %31, %struct.inode** %10, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %24
  %35 = load %struct.dentry*, %struct.dentry** %9, align 8
  %36 = call i32 @dput(%struct.dentry* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.dentry* @ERR_PTR(i32 %38)
  store %struct.dentry* %39, %struct.dentry** %9, align 8
  br label %53

40:                                               ; preds = %24
  %41 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  store %struct.file_operations* %41, %struct.file_operations** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i32 @d_instantiate(%struct.dentry* %47, %struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = load %struct.dentry*, %struct.dentry** %9, align 8
  %52 = call i32 @fsnotify_create(%struct.inode* %50, %struct.dentry* %51)
  br label %53

53:                                               ; preds = %40, %34, %23
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call i32 @inode_unlock(%struct.inode* %54)
  %56 = load %struct.dentry*, %struct.dentry** %9, align 8
  ret %struct.dentry* %56
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.dentry* @binderfs_create_dentry(%struct.dentry*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @binderfs_make_inode(%struct.super_block*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
