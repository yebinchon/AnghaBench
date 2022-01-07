; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuModuleLoadDataExLog.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuModuleLoadDataExLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CU_JIT_TARGET_FROM_CUCONTEXT = common dso_local global i32 0, align 4
@CU_JIT_LOG_VERBOSE = common dso_local global i32 0, align 4
@CU_JIT_INFO_LOG_BUFFER = common dso_local global i32 0, align 4
@CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES = common dso_local global i32 0, align 4
@CU_JIT_ERROR_LOG_BUFFER = common dso_local global i32 0, align 4
@CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cuModuleLoadDataEx() Info Log (%d):\0A%s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"cuModuleLoadDataEx() Error Log (%d):\0A%s\0A\0A\00", align 1
@LOG_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_cuModuleLoadDataExLog(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca [6 x i8*], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = call i64 @hcmalloc(i64 8192)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = call i64 @hcmalloc(i64 8192)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* @CU_JIT_TARGET_FROM_CUCONTEXT, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 0
  store i8* null, i8** %18, align 16
  %19 = load i32, i32* @CU_JIT_LOG_VERBOSE, align 4
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 1
  store i8* inttoptr (i64 1 to i8*), i8** %21, align 8
  %22 = load i32, i32* @CU_JIT_INFO_LOG_BUFFER, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 2
  store i8* %24, i8** %25, align 16
  %26 = load i32, i32* @CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 3
  store i8* inttoptr (i64 8192 to i8*), i8** %28, align 8
  %29 = load i32, i32* @CU_JIT_ERROR_LOG_BUFFER, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  store i32 %29, i32* %30, align 16
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 4
  store i8* %31, i8** %32, align 16
  %33 = load i32, i32* @CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES, align 4
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 5
  store i8* inttoptr (i64 8192 to i8*), i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %40 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 0
  %41 = call i32 @hc_cuModuleLoadDataEx(i32* %36, i32* %37, i8* %38, i32 6, i32* %39, i8** %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %55

44:                                               ; preds = %3
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = trunc i64 %46 to i32
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %48)
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = trunc i64 %51 to i32
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %44, %3
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @hcfree(i8* %56)
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @hcfree(i8* %58)
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i32 @hc_cuModuleLoadDataEx(i32*, i32*, i8*, i32, i32*, i8**) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
