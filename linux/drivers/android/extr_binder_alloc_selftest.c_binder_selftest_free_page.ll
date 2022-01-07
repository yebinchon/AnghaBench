; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_alloc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@binder_alloc_lru = common dso_local global i32 0, align 4
@binder_alloc_free_page = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"expect free but is %s at page index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lru\00", align 1
@binder_selftest_failures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_alloc*)* @binder_selftest_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_selftest_free_page(%struct.binder_alloc* %0) #0 {
  %2 = alloca %struct.binder_alloc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.binder_alloc* %0, %struct.binder_alloc** %2, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = call i64 @list_lru_count(i32* @binder_alloc_lru)
  store i64 %6, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* @binder_alloc_free_page, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @list_lru_walk(i32* @binder_alloc_lru, i32 %9, i32* null, i64 %10)
  br label %5

12:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %48, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.binder_alloc*, %struct.binder_alloc** %2, align 8
  %16 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sdiv i32 %17, %18
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %13
  %22 = load %struct.binder_alloc*, %struct.binder_alloc** %2, align 8
  %23 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load %struct.binder_alloc*, %struct.binder_alloc** %2, align 8
  %33 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i64 @list_empty(i32* %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i32, i32* @binder_selftest_failures, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @binder_selftest_failures, align 4
  br label %47

47:                                               ; preds = %31, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %13

51:                                               ; preds = %13
  ret void
}

declare dso_local i64 @list_lru_count(i32*) #1

declare dso_local i32 @list_lru_walk(i32*, i32, i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
