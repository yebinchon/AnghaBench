; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_create_u64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_create_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@TMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@REG_FILE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @hypfs_create_u64(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @TMP_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @TMP_SIZE, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kstrdup(i8* %16, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.dentry* @ERR_PTR(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %4, align 8
  store i32 1, i32* %12, align 4
  br label %49

28:                                               ; preds = %3
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @S_IFREG, align 4
  %33 = load i32, i32* @REG_FILE_MODE, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.dentry* @hypfs_create_file(%struct.dentry* %29, i8* %30, i8* %31, i32 %34)
  store %struct.dentry* %35, %struct.dentry** %11, align 8
  %36 = load %struct.dentry*, %struct.dentry** %11, align 8
  %37 = call i64 @IS_ERR(%struct.dentry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.dentry* @ERR_PTR(i32 %43)
  store %struct.dentry* %44, %struct.dentry** %4, align 8
  store i32 1, i32* %12, align 4
  br label %49

45:                                               ; preds = %28
  %46 = load %struct.dentry*, %struct.dentry** %11, align 8
  %47 = call i32 @hypfs_add_dentry(%struct.dentry* %46)
  %48 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %48, %struct.dentry** %4, align 8
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %45, %39, %24
  %50 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local %struct.dentry* @ERR_PTR(i32) #2

declare dso_local %struct.dentry* @hypfs_create_file(%struct.dentry*, i8*, i8*, i32) #2

declare dso_local i64 @IS_ERR(%struct.dentry*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @hypfs_add_dentry(%struct.dentry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
