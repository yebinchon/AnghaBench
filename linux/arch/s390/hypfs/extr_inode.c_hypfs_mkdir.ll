; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@DIR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @hypfs_mkdir(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @S_IFDIR, align 4
  %10 = load i32, i32* @DIR_MODE, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.dentry* @hypfs_create_file(%struct.dentry* %7, i8* %8, i32* null, i32 %11)
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call i64 @IS_ERR(%struct.dentry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %17, %struct.dentry** %3, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call i32 @hypfs_add_dentry(%struct.dentry* %19)
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %21, %struct.dentry** %3, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %23
}

declare dso_local %struct.dentry* @hypfs_create_file(%struct.dentry*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @hypfs_add_dentry(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
