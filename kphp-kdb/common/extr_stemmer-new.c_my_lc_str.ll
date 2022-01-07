; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_stemmer-new.c_my_lc_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_stemmer-new.c_my_lc_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_stemmer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @my_lc_str(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @use_stemmer, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @lc_str(i8* %14, i8* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %4, align 4
  br label %90

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @get_str_class(i8* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 12
  %25 = icmp eq i32 %24, 12
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @stem_rus_win1251(i8* %27, i32 %28, i8* %29, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @lc_str(i8* %31, i8* %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %90

36:                                               ; preds = %19
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sge i32 %51, 0
  br label %53

53:                                               ; preds = %45, %41
  %54 = phi i1 [ false, %41 ], [ %52, %45 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %41

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @stem_eng(i8* %64, i32 %65, i8* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp sle i32 %71, %72
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i1 [ false, %63 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @lc_str(i8* %78, i8* %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %90

83:                                               ; preds = %59
  br label %84

84:                                               ; preds = %83, %36
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @lc_str(i8* %85, i8* %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %74, %26, %13
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @lc_str(i8*, i8*, i32) #1

declare dso_local i32 @get_str_class(i8*, i32) #1

declare dso_local i32 @stem_rus_win1251(i8*, i32, i8*, i32) #1

declare dso_local i32 @stem_eng(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
