; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_phys_cpu_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_phys_cpu_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type opaque

@TMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@diag204_info_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mgmtime\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*)* @hypfs_create_phys_cpu_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_create_phys_cpu_files(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @TMP_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @TMP_SIZE, align 4
  %16 = load i32, i32* @diag204_info_type, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @phys_cpu__cpu_addr(i32 %16, i8* %17)
  %19 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = bitcast %struct.dentry* %20 to i8*
  %22 = call i8* @hypfs_mkdir(i8* %21, i8* %14)
  %23 = bitcast i8* %22 to %struct.dentry*
  store %struct.dentry* %23, %struct.dentry** %6, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = bitcast %struct.dentry* %24 to i8*
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = bitcast %struct.dentry* %29 to i8*
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %55

32:                                               ; preds = %2
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = bitcast %struct.dentry* %33 to i8*
  %35 = load i32, i32* @diag204_info_type, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @phys_cpu__mgm_time(i32 %35, i8* %36)
  %38 = call i8* @hypfs_create_u64(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %55

45:                                               ; preds = %32
  %46 = load i32, i32* @diag204_info_type, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @phys_cpu__ctidx(i32 %46, i8* %47)
  %49 = call i32 @diag224_idx2name(i32 %48, i8* %14)
  %50 = load %struct.dentry*, %struct.dentry** %6, align 8
  %51 = bitcast %struct.dentry* %50 to i8*
  %52 = call i8* @hypfs_create_str(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @PTR_ERR_OR_ZERO(i8* %53)
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %45, %42, %28
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @phys_cpu__cpu_addr(i32, i8*) #2

declare dso_local i8* @hypfs_mkdir(i8*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i8* @hypfs_create_u64(i8*, i8*, i32) #2

declare dso_local i32 @phys_cpu__mgm_time(i32, i8*) #2

declare dso_local i32 @diag224_idx2name(i32, i8*) #2

declare dso_local i32 @phys_cpu__ctidx(i32, i8*) #2

declare dso_local i8* @hypfs_create_str(i8*, i8*, i8*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
