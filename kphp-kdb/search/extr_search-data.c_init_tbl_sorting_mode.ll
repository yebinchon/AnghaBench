; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_init_tbl_sorting_mode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_init_tbl_sorting_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rate_first_characters = common dso_local global i8* null, align 8
@tbl_sorting_mode = common dso_local global i32* null, align 8
@MAX_RATES = common dso_local global i32 0, align 4
@FLAG_REVERSE_SEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_tbl_sorting_mode() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @rate_first_characters, align 8
  store i8* %3, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %12, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i32*, i32** @tbl_sorting_mode, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 -1, i32* %11, align 4
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %4

15:                                               ; preds = %4
  %16 = load i8*, i8** @rate_first_characters, align 8
  %17 = call i64 @strchr(i8* %16, i8 signext 105)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @MAX_RATES, align 4
  %22 = load i32*, i32** @tbl_sorting_mode, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 105
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MAX_RATES, align 4
  %25 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** @tbl_sorting_mode, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 73
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %43, %15
  %30 = load i8*, i8** %1, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load i8*, i8** %1, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 97, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %1, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 122
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = load i32*, i32** @tbl_sorting_mode, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** @tbl_sorting_mode, align 8
  %58 = load i8*, i8** %1, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  %66 = load i8*, i8** %1, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %1, align 8
  br label %29

68:                                               ; preds = %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
