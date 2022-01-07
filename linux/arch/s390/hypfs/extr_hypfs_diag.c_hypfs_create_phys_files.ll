; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_phys_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_phys_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type opaque

@.str = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@diag204_info_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i8*)* @hypfs_create_phys_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hypfs_create_phys_files(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = bitcast %struct.dentry* %10 to i8*
  %12 = call i8* @hypfs_mkdir(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = bitcast i8* %12 to %struct.dentry*
  store %struct.dentry* %13, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = bitcast %struct.dentry* %14 to i8*
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = bitcast %struct.dentry* %19 to i8*
  store i8* %20, i8** %3, align 8
  br label %54

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @diag204_info_type, align 4
  %24 = call i32 @phys_hdr__size(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %22, i64 %25
  store i8* %26, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %49, %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @diag204_info_type, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @phys_hdr__cpus(i32 %29, i8* %30)
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = bitcast %struct.dentry* %34 to i8*
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @hypfs_create_phys_cpu_files(i8* %35, i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @ERR_PTR(i32 %41)
  store i8* %42, i8** %3, align 8
  br label %54

43:                                               ; preds = %33
  %44 = load i32, i32* @diag204_info_type, align 4
  %45 = call i32 @phys_cpu__size(i32 %44)
  %46 = load i8*, i8** %7, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %52, %40, %18
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i8* @hypfs_mkdir(i8*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @phys_hdr__size(i32) #1

declare dso_local i32 @phys_hdr__cpus(i32, i8*) #1

declare dso_local i32 @hypfs_create_phys_cpu_files(i8*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @phys_cpu__size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
