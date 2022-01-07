; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_alloc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_alloc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_alloc = type { i32 }
%struct.binder_buffer = type { i32 }

@BUFFER_NUM = common dso_local global i32 0, align 4
@binder_alloc_lru = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"lru list should be empty but is not\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_alloc*, i64*, i32*, i64)* @binder_selftest_alloc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_selftest_alloc_free(%struct.binder_alloc* %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.binder_alloc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.binder_alloc* %0, %struct.binder_alloc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @BUFFER_NUM, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca %struct.binder_buffer*, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load %struct.binder_alloc*, %struct.binder_alloc** %5, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @binder_selftest_alloc_buf(%struct.binder_alloc* %15, %struct.binder_buffer** %14, i64* %16, i32* %17)
  %19 = load %struct.binder_alloc*, %struct.binder_alloc** %5, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @binder_selftest_free_buf(%struct.binder_alloc* %19, %struct.binder_buffer** %14, i64* %20, i32* %21, i64 %22)
  %24 = load %struct.binder_alloc*, %struct.binder_alloc** %5, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @binder_selftest_alloc_buf(%struct.binder_alloc* %24, %struct.binder_buffer** %14, i64* %25, i32* %26)
  %28 = call i64 @list_lru_count(i32* @binder_alloc_lru)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %4
  %33 = load %struct.binder_alloc*, %struct.binder_alloc** %5, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @binder_selftest_free_buf(%struct.binder_alloc* %33, %struct.binder_buffer** %14, i64* %34, i32* %35, i64 %36)
  %38 = load %struct.binder_alloc*, %struct.binder_alloc** %5, align 8
  %39 = call i32 @binder_selftest_free_page(%struct.binder_alloc* %38)
  %40 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %40)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @binder_selftest_alloc_buf(%struct.binder_alloc*, %struct.binder_buffer**, i64*, i32*) #2

declare dso_local i32 @binder_selftest_free_buf(%struct.binder_alloc*, %struct.binder_buffer**, i64*, i32*, i64) #2

declare dso_local i64 @list_lru_count(i32*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @binder_selftest_free_page(%struct.binder_alloc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
