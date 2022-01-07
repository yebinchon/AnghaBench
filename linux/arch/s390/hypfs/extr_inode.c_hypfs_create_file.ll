; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i8*, i32*, i32*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@hypfs_file_ops = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i8*, i8*, i32)* @hypfs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hypfs_create_file(%struct.dentry* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call i32 @d_inode(%struct.dentry* %11)
  %13 = call i32 @inode_lock(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = call %struct.dentry* @lookup_one_len(i8* %14, %struct.dentry* %15, i64 %17)
  store %struct.dentry* %18, %struct.dentry** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %9, align 8
  %20 = call i64 @IS_ERR(%struct.dentry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.dentry* @ERR_PTR(i32 %24)
  store %struct.dentry* %25, %struct.dentry** %9, align 8
  br label %82

26:                                               ; preds = %4
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.inode* @hypfs_make_inode(i32 %29, i32 %30)
  store %struct.inode* %31, %struct.inode** %10, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.dentry*, %struct.dentry** %9, align 8
  %36 = call i32 @dput(%struct.dentry* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.dentry* @ERR_PTR(i32 %38)
  store %struct.dentry* %39, %struct.dentry** %9, align 8
  br label %82

40:                                               ; preds = %26
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i32* @hypfs_file_ops, i32** %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %49
  br label %73

58:                                               ; preds = %40
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @S_ISDIR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  store i32* @simple_dir_inode_operations, i32** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %66, align 8
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  %68 = call i32 @d_inode(%struct.dentry* %67)
  %69 = call i32 @inc_nlink(i32 %68)
  br label %72

70:                                               ; preds = %58
  %71 = call i32 (...) @BUG()
  br label %72

72:                                               ; preds = %70, %62
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.dentry*, %struct.dentry** %9, align 8
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = call i32 @d_instantiate(%struct.dentry* %77, %struct.inode* %78)
  %80 = load %struct.dentry*, %struct.dentry** %9, align 8
  %81 = call i32 @dget(%struct.dentry* %80)
  br label %82

82:                                               ; preds = %73, %34, %22
  %83 = load %struct.dentry*, %struct.dentry** %5, align 8
  %84 = call i32 @d_inode(%struct.dentry* %83)
  %85 = call i32 @inode_unlock(i32 %84)
  %86 = load %struct.dentry*, %struct.dentry** %9, align 8
  ret %struct.dentry* %86
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @hypfs_make_inode(i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @inc_nlink(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
