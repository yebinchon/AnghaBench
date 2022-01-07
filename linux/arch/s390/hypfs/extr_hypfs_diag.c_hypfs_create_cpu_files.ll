; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_cpu_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_cpu_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@TMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@diag204_info_type = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"mgmtime\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cputime\00", align 1
@DIAG204_INFO_EXT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"onlinetime\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*)* @hypfs_create_cpu_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_create_cpu_files(%struct.dentry* %0, i8* %1) #0 {
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
  %16 = load i64, i64* @diag204_info_type, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @cpu_info__cpu_addr(i64 %16, i8* %17)
  %19 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call %struct.dentry* @hypfs_mkdir(%struct.dentry* %20, i8* %14)
  store %struct.dentry* %21, %struct.dentry** %6, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = load i64, i64* @diag204_info_type, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @cpu_info__acc_time(i64 %23, i8* %24)
  %26 = load i64, i64* @diag204_info_type, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @cpu_info__lp_time(i64 %26, i8* %27)
  %29 = sub nsw i64 %25, %28
  %30 = call i8* @hypfs_create_u64(%struct.dentry* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %75

37:                                               ; preds = %2
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = load i64, i64* @diag204_info_type, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @cpu_info__lp_time(i64 %39, i8* %40)
  %42 = call i8* @hypfs_create_u64(%struct.dentry* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %75

49:                                               ; preds = %37
  %50 = load i64, i64* @diag204_info_type, align 8
  %51 = load i64, i64* @DIAG204_INFO_EXT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = load i64, i64* @diag204_info_type, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @cpu_info__online_time(i64 %55, i8* %56)
  %58 = call i8* @hypfs_create_u64(%struct.dentry* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %75

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i64, i64* @diag204_info_type, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @cpu_info__ctidx(i64 %67, i8* %68)
  %70 = call i32 @diag224_idx2name(i32 %69, i8* %14)
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = call i8* @hypfs_create_str(%struct.dentry* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @PTR_ERR_OR_ZERO(i8* %73)
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %66, %62, %46, %34
  %76 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @cpu_info__cpu_addr(i64, i8*) #2

declare dso_local %struct.dentry* @hypfs_mkdir(%struct.dentry*, i8*) #2

declare dso_local i8* @hypfs_create_u64(%struct.dentry*, i8*, i64) #2

declare dso_local i64 @cpu_info__acc_time(i64, i8*) #2

declare dso_local i64 @cpu_info__lp_time(i64, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i64 @cpu_info__online_time(i64, i8*) #2

declare dso_local i32 @diag224_idx2name(i32, i8*) #2

declare dso_local i32 @cpu_info__ctidx(i64, i8*) #2

declare dso_local i8* @hypfs_create_str(%struct.dentry*, i8*, i8*) #2

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
