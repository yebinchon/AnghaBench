; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_searchx_check_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_searchx_check_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mct_get = common dso_local global i32 0, align 4
@SEARCHX_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"searchx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"searchu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @searchx_check_query(i32 %0, i8* %1, i32 %2) #0 {
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
  br label %48

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
  %24 = load i32, i32* @SEARCHX_EXTENSION, align 4
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 7
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28, %13
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 7
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @search_check_query(i32 %40, i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %35, %28
  %46 = phi i1 [ true, %35 ], [ true, %28 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %12
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @eat_at(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @search_check_query(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
