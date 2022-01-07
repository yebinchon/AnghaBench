; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_diag_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_diag_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type opaque
%struct.x_info_blk_hdr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"systems\00", align 1
@diag204_info_type = common dso_local global i32 0, align 4
@DIAG204_LPAR_PHYS_FLG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"hyp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LPAR Hypervisor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hypfs_diag_create_files(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %12 = call i8* (...) @diag204_store()
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @PTR_ERR(i8* %17)
  store i32 %18, i32* %2, align 4
  br label %107

19:                                               ; preds = %1
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = bitcast %struct.dentry* %20 to i8*
  %22 = call i8* @hypfs_mkdir(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = bitcast i8* %22 to %struct.dentry*
  store %struct.dentry* %23, %struct.dentry** %4, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = bitcast %struct.dentry* %24 to i8*
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = bitcast %struct.dentry* %29 to i8*
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %9, align 4
  br label %105

32:                                               ; preds = %19
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to %struct.x_info_blk_hdr*
  %35 = bitcast %struct.x_info_blk_hdr* %34 to i8*
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @diag204_info_type, align 4
  %38 = call i32 @info_blk_hdr__size(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %36, i64 %39
  store i8* %40, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %59, %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @diag204_info_type, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @info_blk_hdr__npar(i32 %43, i8* %44)
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = bitcast %struct.dentry* %48 to i8*
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @hypfs_create_lpar_files(i8* %49, i8* %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %9, align 4
  br label %105

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %41

62:                                               ; preds = %41
  %63 = load i32, i32* @diag204_info_type, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @info_blk_hdr__flags(i32 %63, i8* %64)
  %66 = load i32, i32* @DIAG204_LPAR_PHYS_FLG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.dentry*, %struct.dentry** %3, align 8
  %71 = bitcast %struct.dentry* %70 to i8*
  %72 = load i8*, i8** %7, align 8
  %73 = call i8* @hypfs_create_phys_files(i8* %71, i8* %72)
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %9, align 4
  br label %105

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.dentry*, %struct.dentry** %3, align 8
  %83 = bitcast %struct.dentry* %82 to i8*
  %84 = call i8* @hypfs_mkdir(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %85 = bitcast i8* %84 to %struct.dentry*
  store %struct.dentry* %85, %struct.dentry** %5, align 8
  %86 = load %struct.dentry*, %struct.dentry** %5, align 8
  %87 = bitcast %struct.dentry* %86 to i8*
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.dentry*, %struct.dentry** %5, align 8
  %92 = bitcast %struct.dentry* %91 to i8*
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %9, align 4
  br label %105

94:                                               ; preds = %81
  %95 = load %struct.dentry*, %struct.dentry** %5, align 8
  %96 = bitcast %struct.dentry* %95 to i8*
  %97 = call i8* @hypfs_create_str(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %97, i8** %11, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @PTR_ERR(i8* %102)
  store i32 %103, i32* %9, align 4
  br label %105

104:                                              ; preds = %94
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %101, %90, %77, %55, %28
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %16
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i8* @diag204_store(...) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @hypfs_mkdir(i8*, i8*) #1

declare dso_local i32 @info_blk_hdr__size(i32) #1

declare dso_local i32 @info_blk_hdr__npar(i32, i8*) #1

declare dso_local i8* @hypfs_create_lpar_files(i8*, i8*) #1

declare dso_local i32 @info_blk_hdr__flags(i32, i8*) #1

declare dso_local i8* @hypfs_create_phys_files(i8*, i8*) #1

declare dso_local i8* @hypfs_create_str(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
