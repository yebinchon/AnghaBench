; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_sprp.c_hypfs_sprp_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_sprp.c_hypfs_sprp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIAG304_QUERY_PRP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*)* @hypfs_sprp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_sprp_create(i8** %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* @DIAG304_QUERY_PRP, align 4
  %21 = call i64 @hypfs_sprp_diag304(i8* %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 1
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i8**, i8*** %6, align 8
  store i8* null, i8** %25, align 8
  %26 = load i8**, i8*** %5, align 8
  store i8* null, i8** %26, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = call i32 @free_page(i64 %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %18
  %34 = load i8*, i8** %9, align 8
  %35 = load i8**, i8*** %6, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %24, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @hypfs_sprp_diag304(i8*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
