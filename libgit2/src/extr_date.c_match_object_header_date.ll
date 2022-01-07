; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_match_object_header_date.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_match_object_header_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32*)* @match_object_header_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_object_header_date(i8* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp slt i32 %13, 48
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 57, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store i32 -1, i32* %4, align 4
  br label %85

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strtoul(i8* %22, i8** %8, i32 10)
  store i64 %23, i64* %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 32
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @ULONG_MAX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 43
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 45
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %28, %21
  store i32 -1, i32* %4, align 4
  br label %85

45:                                               ; preds = %38, %32
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strtol(i8* %48, i8** %8, i32 10)
  store i32 %49, i32* %10, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %64, label %59

59:                                               ; preds = %54, %45
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  %63 = icmp ne i8* %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  store i32 -1, i32* %4, align 4
  br label %85

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 %66, 100
  %68 = mul nsw i32 %67, 60
  %69 = load i32, i32* %10, align 4
  %70 = srem i32 %69, 100
  %71 = add nsw i32 %68, %70
  store i32 %71, i32* %10, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 45
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %77, %65
  %81 = load i64, i64* %9, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %64, %44, %20
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
