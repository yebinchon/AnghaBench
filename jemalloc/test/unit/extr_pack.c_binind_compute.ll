; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_pack.c_binind_compute.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_pack.c_binind_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"arenas.nbins\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unexpected mallctl failure\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"arenas.bin.0.size\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unexpected mallctlnametomb failure\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unexpected mallctlbymib failure\00", align 1
@SZ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to compute nregs_per_run\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @binind_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binind_compute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 4, i64* %2, align 8
  %8 = bitcast i32* %3 to i8*
  %9 = call i32 @mallctl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %8, i64* %2, i32* null, i32 0)
  %10 = call i32 @assert_d_eq(i32 %9, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %33, %0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  store i64 4, i64* %6, align 8
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %17 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64* %16, i64* %6)
  %18 = call i32 @assert_d_eq(i32 %17, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  store i64 %20, i64* %21, align 16
  store i64 8, i64* %2, align 8
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %23 = load i64, i64* %6, align 8
  %24 = bitcast i64* %7 to i8*
  %25 = call i32 @mallctlbymib(i64* %22, i64 %23, i8* %24, i64* %2, i32* null, i32 0)
  %26 = call i32 @assert_d_eq(i32 %25, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @SZ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %1, align 4
  br label %38

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %11

36:                                               ; preds = %11
  %37 = call i32 @test_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i8*, i64*, i32*, i32) #1

declare dso_local i32 @test_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
