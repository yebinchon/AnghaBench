; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Alloc.c_SzAlignedAlloc.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Alloc.c_SzAlignedAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALLOC_ALIGN_SIZE = common dso_local global i32 0, align 4
@ADJUST_ALLOC_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c" size=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" a_size=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" ptr=\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" a_ptr=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64)* @SzAlignedAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SzAlignedAlloc(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @UNUSED_VAR(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @ALLOC_ALIGN_SIZE, align 4
  %13 = mul nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = add i64 %11, %14
  %16 = load i64, i64* @ADJUST_ALLOC_SIZE, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %50

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  %24 = call i8* @MyAlloc(i64 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %50

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @ALLOC_ALIGN_SIZE, align 4
  %31 = call i8* @MY_ALIGN_PTR_UP_PLUS(i8* %29, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = call i32 @Print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @PrintHex(i64 %33, i32 8)
  %35 = call i32 @Print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @PrintHex(i64 %36, i32 8)
  %38 = call i32 @Print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @PrintAddr(i8* %39)
  %41 = call i32 @Print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @PrintAddr(i8* %42)
  %44 = call i32 (...) @PrintLn()
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i8* %46 to i8**
  %48 = getelementptr inbounds i8*, i8** %47, i64 -1
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %28, %27, %21
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i32 @UNUSED_VAR(i32) #1

declare dso_local i8* @MyAlloc(i64) #1

declare dso_local i8* @MY_ALIGN_PTR_UP_PLUS(i8*, i32) #1

declare dso_local i32 @Print(i8*) #1

declare dso_local i32 @PrintHex(i64, i32) #1

declare dso_local i32 @PrintAddr(i8*) #1

declare dso_local i32 @PrintLn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
