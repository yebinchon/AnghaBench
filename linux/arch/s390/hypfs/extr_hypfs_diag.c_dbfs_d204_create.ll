; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_dbfs_d204_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_dbfs_d204_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbfs_d204 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@diag204_buf_pages = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DBFS_D204_HDR_VERSION = common dso_local global i32 0, align 4
@diag204_store_sc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*)* @dbfs_d204_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbfs_d204_create(i8** %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.dbfs_d204*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load i32, i32* @diag204_buf_pages, align 4
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @vzalloc(i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %3
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr i8, i8* %27, i64 12
  %29 = call %struct.dbfs_d204* @page_align_ptr(i8* %28)
  %30 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %29, i64 -12
  store %struct.dbfs_d204* %30, %struct.dbfs_d204** %8, align 8
  %31 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %32 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @diag204_buf_pages, align 4
  %35 = call i32 @diag204_do_store(i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @vfree(i8* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %69

42:                                               ; preds = %26
  %43 = load i32, i32* @DBFS_D204_HDR_VERSION, align 4
  %44 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %45 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load i32, i32* @diag204_buf_pages, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %51 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @diag204_store_sc, align 4
  %54 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %55 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %58 = bitcast %struct.dbfs_d204* %57 to i8*
  %59 = load i8**, i8*** %5, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i8**, i8*** %6, align 8
  store i8* %60, i8** %61, align 8
  %62 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %63 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %42, %38, %23
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @vzalloc(i32) #1

declare dso_local %struct.dbfs_d204* @page_align_ptr(i8*) #1

declare dso_local i32 @diag204_do_store(i32, i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
