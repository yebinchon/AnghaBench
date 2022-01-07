; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_prefetch_search_lists.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_prefetch_search_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_user = common dso_local global i32 0, align 4
@Qw = common dso_local global i32 0, align 4
@Qc = common dso_local global i32* null, align 8
@Q = common dso_local global i32* null, align 8
@Ql = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prefetch_search_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefetch_search_lists() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @cur_user, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %19, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @Qw, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32*, i32** @Qc, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %10

22:                                               ; preds = %10
  %23 = load i32, i32* @Qw, align 4
  store i32 %23, i32* %1, align 4
  br label %106

24:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %101, %24
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @Qw, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %104

29:                                               ; preds = %25
  %30 = load i32*, i32** @Q, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @lookup_list(i32 %35, i32** %6)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %52, %29
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32*, i32** @Qc, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %47, %48
  br label %50

50:                                               ; preds = %41, %38
  %51 = phi i1 [ false, %38 ], [ %49, %41 ]
  br i1 %51, label %52, label %85

52:                                               ; preds = %50
  %53 = load i32*, i32** @Q, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @Q, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32*, i32** @Qc, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @Qc, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32**, i32*** @Ql, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %73, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i32**, i32*** @Ql, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  store i32* %78, i32** %82, align 8
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %3, align 4
  br label %38

85:                                               ; preds = %50
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** @Q, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32*, i32** @Qc, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32**, i32*** @Ql, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  store i32* %96, i32** %100, align 8
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %25

104:                                              ; preds = %25
  %105 = load i32, i32* @Qw, align 4
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %104, %22
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare dso_local i32 @lookup_list(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
