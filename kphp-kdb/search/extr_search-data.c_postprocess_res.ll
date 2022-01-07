; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_postprocess_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_postprocess_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_hash_group_mode = common dso_local global i64 0, align 8
@Q_type = common dso_local global i64 0, align 8
@MAX_RATES = common dso_local global i64 0, align 8
@Q_order = common dso_local global i32 0, align 4
@FLAG_ENTRY_SORT_SEARCH = common dso_local global i32 0, align 4
@FLAG_PRIORITY_SORT_SEARCH = common dso_local global i32 0, align 4
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
  %4 = load i64, i64* @Q_hash_group_mode, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @postprocess_res_group_mode()
  br label %113

8:                                                ; preds = %0
  %9 = load i64, i64* @Q_type, align 8
  %10 = load i64, i64* @MAX_RATES, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %107

12:                                               ; preds = %8
  %13 = load i32, i32* @Q_order, align 4
  %14 = load i32, i32* @FLAG_ENTRY_SORT_SEARCH, align 4
  %15 = load i32, i32* @FLAG_PRIORITY_SORT_SEARCH, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %107, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @Q_order, align 4
  %21 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %106

24:                                               ; preds = %19
  %25 = load i32, i32* @R_cnt, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %57, %24
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %1, align 4
  %31 = sub nsw i32 %29, %30
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load i32**, i32*** @R, align 8
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %34, i64 %38
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %3, align 8
  %41 = load i32**, i32*** @R, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32**, i32*** @R, align 8
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %1, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %46, i64 %50
  store i32* %45, i32** %51, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load i32**, i32*** @R, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* %52, i32** %56, align 8
  br label %57

57:                                               ; preds = %33
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %27

60:                                               ; preds = %27
  %61 = load i32, i32* @R_tot, align 4
  %62 = load i32, i32* @Q_limit, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %60
  %65 = load i32, i32* @R_cnt, align 4
  %66 = load i32, i32* @Q_limit, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* @R_cnt, align 4
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %100, %64
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %1, align 4
  %74 = sub nsw i32 %72, %73
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load i32**, i32*** @R, align 8
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* %1, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %77, i64 %81
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %3, align 8
  %84 = load i32**, i32*** @R, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32**, i32*** @R, align 8
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %1, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %89, i64 %93
  store i32* %88, i32** %94, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = load i32**, i32*** @R, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  store i32* %95, i32** %99, align 8
  br label %100

100:                                              ; preds = %76
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %1, align 4
  br label %70

103:                                              ; preds = %70
  %104 = load i32, i32* @Q_limit, align 4
  store i32 %104, i32* @R_cnt, align 4
  br label %105

105:                                              ; preds = %103, %60
  br label %106

106:                                              ; preds = %105, %19
  br label %113

107:                                              ; preds = %12, %8
  %108 = load i32, i32* @R_cnt, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %113

111:                                              ; preds = %107
  %112 = call i32 (...) @heap_sort_res()
  br label %113

113:                                              ; preds = %111, %110, %106, %6
  ret void
}

declare dso_local i32 @postprocess_res_group_mode(...) #1

declare dso_local i32 @heap_sort_res(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
