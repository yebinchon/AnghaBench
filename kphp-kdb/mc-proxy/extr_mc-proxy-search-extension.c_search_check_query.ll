; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_search_check_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_search_check_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mct_get = common dso_local global i32 0, align 4
@SEARCH_EXTENSION = common dso_local global i64 0, align 8
@SEARCHX_EXTENSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"search(\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"prices\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ad_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_check_query(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @mct_get, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @eat_at(i8* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i64, i64* @SEARCH_EXTENSION, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %13
  %27 = load i64, i64* @SEARCHX_EXTENSION, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26, %13
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 6
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @memcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %74

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 7
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 6
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %55, 6
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strncmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %62, 3
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strncmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ]
  br label %71

71:                                               ; preds = %69, %57, %50, %43
  %72 = phi i1 [ true, %57 ], [ true, %50 ], [ true, %43 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %37, %12
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @eat_at(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
