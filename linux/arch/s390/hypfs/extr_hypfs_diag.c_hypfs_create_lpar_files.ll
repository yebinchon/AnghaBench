; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_lpar_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_lpar_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type opaque

@DIAG204_LPAR_NAME_LEN = common dso_local global i32 0, align 4
@diag204_info_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i8*)* @hypfs_create_lpar_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hypfs_create_lpar_files(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @DIAG204_LPAR_NAME_LEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @diag204_info_type, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @part_hdr__part_name(i32 %19, i8* %20, i8* %18)
  %22 = load i32, i32* @DIAG204_LPAR_NAME_LEN, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = bitcast %struct.dentry* %25 to i8*
  %27 = call i8* @hypfs_mkdir(i8* %26, i8* %18)
  %28 = bitcast i8* %27 to %struct.dentry*
  store %struct.dentry* %28, %struct.dentry** %7, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = bitcast %struct.dentry* %29 to i8*
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = bitcast %struct.dentry* %34 to i8*
  store i8* %35, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %81

36:                                               ; preds = %2
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = bitcast %struct.dentry* %37 to i8*
  %39 = call i8* @hypfs_mkdir(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = bitcast i8* %39 to %struct.dentry*
  store %struct.dentry* %40, %struct.dentry** %6, align 8
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = bitcast %struct.dentry* %41 to i8*
  %43 = call i64 @IS_ERR(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = bitcast %struct.dentry* %46 to i8*
  store i8* %47, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %81

48:                                               ; preds = %36
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @diag204_info_type, align 4
  %51 = call i32 @part_hdr__size(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %49, i64 %52
  store i8* %53, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %76, %48
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @diag204_info_type, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @part_hdr__rcpus(i32 %56, i8* %57)
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = bitcast %struct.dentry* %61 to i8*
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @hypfs_create_cpu_files(i8* %62, i8* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = call i8* @ERR_PTR(i32 %68)
  store i8* %69, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %81

70:                                               ; preds = %60
  %71 = load i32, i32* @diag204_info_type, align 4
  %72 = call i32 @cpu_info__size(i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr i8, i8* %73, i64 %74
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %54

79:                                               ; preds = %54
  %80 = load i8*, i8** %10, align 8
  store i8* %80, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %67, %45, %33
  %82 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @part_hdr__part_name(i32, i8*, i8*) #2

declare dso_local i8* @hypfs_mkdir(i8*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @part_hdr__size(i32) #2

declare dso_local i32 @part_hdr__rcpus(i32, i8*) #2

declare dso_local i32 @hypfs_create_cpu_files(i8*, i8*) #2

declare dso_local i8* @ERR_PTR(i32) #2

declare dso_local i32 @cpu_info__size(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
