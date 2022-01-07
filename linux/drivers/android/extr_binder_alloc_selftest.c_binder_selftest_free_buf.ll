; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_free_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_alloc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.binder_buffer = type { i32 }

@BUFFER_NUM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"expect lru but is %s at page index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@binder_selftest_failures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_alloc*, %struct.binder_buffer**, i64*, i32*, i64)* @binder_selftest_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_selftest_free_buf(%struct.binder_alloc* %0, %struct.binder_buffer** %1, i64* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.binder_alloc*, align 8
  %7 = alloca %struct.binder_buffer**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.binder_alloc* %0, %struct.binder_alloc** %6, align 8
  store %struct.binder_buffer** %1, %struct.binder_buffer*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %28, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @BUFFER_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.binder_alloc*, %struct.binder_alloc** %6, align 8
  %18 = load %struct.binder_buffer**, %struct.binder_buffer*** %7, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.binder_buffer*, %struct.binder_buffer** %18, i64 %24
  %26 = load %struct.binder_buffer*, %struct.binder_buffer** %25, align 8
  %27 = call i32 @binder_alloc_free_buf(%struct.binder_alloc* %17, %struct.binder_buffer* %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  br label %12

31:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %69, %31
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = udiv i64 %35, %36
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %32
  %40 = load %struct.binder_alloc*, %struct.binder_alloc** %6, align 8
  %41 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = call i64 @list_empty(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %39
  %50 = load i64*, i64** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @pr_err_size_seq(i64* %50, i32* %51)
  %53 = load %struct.binder_alloc*, %struct.binder_alloc** %6, align 8
  %54 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load i32, i32* @binder_selftest_failures, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @binder_selftest_failures, align 4
  br label %68

68:                                               ; preds = %49, %39
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %32

72:                                               ; preds = %32
  ret void
}

declare dso_local i32 @binder_alloc_free_buf(%struct.binder_alloc*, %struct.binder_buffer*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pr_err_size_seq(i64*, i32*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
