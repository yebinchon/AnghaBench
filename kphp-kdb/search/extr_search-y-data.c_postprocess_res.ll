; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_postprocess_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_postprocess_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_type = common dso_local global i64 0, align 8
@MAX_RATES = common dso_local global i64 0, align 8
@Q_order = common dso_local global i32 0, align 4
@FLAG_REVERSE_SEARCH = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global i32** null, align 8
@R_tot = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @postprocess_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postprocess_res() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i64, i64* @Q_type, align 8
  %5 = load i64, i64* @MAX_RATES, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %95

7:                                                ; preds = %0
  %8 = load i32, i32* @Q_order, align 4
  %9 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %94

12:                                               ; preds = %7
  %13 = load i32, i32* @R_cnt, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %45, %12
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = sub nsw i32 %17, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load i32**, i32*** @R, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %1, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %22, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %3, align 8
  %29 = load i32**, i32*** @R, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** @R, align 8
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %34, i64 %38
  store i32* %33, i32** %39, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32**, i32*** @R, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* %40, i32** %44, align 8
  br label %45

45:                                               ; preds = %21
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load i32, i32* @R_tot, align 4
  %50 = load i32, i32* @Q_limit, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load i32, i32* @R_cnt, align 4
  %54 = load i32, i32* @Q_limit, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* @R_cnt, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %88, %52
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* %1, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = load i32**, i32*** @R, align 8
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %1, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %65, i64 %69
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %3, align 8
  %72 = load i32**, i32*** @R, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32**, i32*** @R, align 8
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* %1, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %77, i64 %81
  store i32* %76, i32** %82, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = load i32**, i32*** @R, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  store i32* %83, i32** %87, align 8
  br label %88

88:                                               ; preds = %64
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %1, align 4
  br label %58

91:                                               ; preds = %58
  %92 = load i32, i32* @Q_limit, align 4
  store i32 %92, i32* @R_cnt, align 4
  br label %93

93:                                               ; preds = %91, %48
  br label %94

94:                                               ; preds = %93, %7
  br label %101

95:                                               ; preds = %0
  %96 = load i32, i32* @R_cnt, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %101

99:                                               ; preds = %95
  %100 = call i32 (...) @heap_sort_res()
  br label %101

101:                                              ; preds = %99, %98, %94
  ret void
}

declare dso_local i32 @heap_sort_res(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
