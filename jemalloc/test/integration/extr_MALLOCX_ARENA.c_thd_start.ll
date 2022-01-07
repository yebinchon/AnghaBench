; ModuleID = '/home/carl/AnghaBench/jemalloc/test/integration/extr_MALLOCX_ARENA.c_thd_start.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/integration/extr_MALLOCX_ARENA.c_thd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"arenas.create\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Error in arenas.create\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@__const.thd_start.dss_precs = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)], align 16
@have_dss = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"arena.0.dss\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Error in mallctlnametomib()\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Error in mallctlbymib()\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Unexpected mallocx() error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thd_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca [3 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  store i64 4, i64* %6, align 8
  %16 = bitcast i32* %4 to i8*
  %17 = call i32 @mallctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %16, i64* %6, i32* null, i32 0)
  %18 = call i32 @assert_d_eq(i32 %17, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = urem i32 %19, 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %54

22:                                               ; preds = %1
  store i64 3, i64* %8, align 8
  %23 = bitcast [3 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([3 x i8*]* @__const.thd_start.dss_precs to i8*), i64 24, i1 false)
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = urem i64 %25, 3
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  %32 = load i64, i64* @have_dss, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %22
  br label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EFAULT, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  store i32 %41, i32* %12, align 4
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %43 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64* %42, i64* %8)
  %44 = call i32 @assert_d_eq(i32 %43, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %49 = load i64, i64* %8, align 8
  %50 = bitcast i8** %11 to i8*
  %51 = call i32 @mallctlbymib(i64* %48, i64 %49, i32* null, i32* null, i8* %50, i32 8)
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @assert_d_eq(i32 %51, i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %54

54:                                               ; preds = %40, %1
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @MALLOCX_ARENA(i32 %55)
  %57 = call i8* @mallocx(i32 1, i32 %56)
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @assert_ptr_not_null(i8* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @dallocx(i8* %60, i32 0)
  ret i8* null
}

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i32*, i32*, i8*, i32) #1

declare dso_local i8* @mallocx(i32, i32) #1

declare dso_local i32 @MALLOCX_ARENA(i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i32 @dallocx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
