; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_get_best_v.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_get_best_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i64 0, align 8
@MAX_BEST = common dso_local global i32 0, align 4
@MAX_BUFF = common dso_local global i32 0, align 4
@bestn = common dso_local global i32 0, align 4
@names_buff = common dso_local global i64 0, align 8
@names = common dso_local global i64* null, align 8
@best = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_best_v(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @buff, align 8
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 0, i32* %9, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @MAX_BEST, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @MAX_BEST, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = load i32, i32* @MAX_BUFF, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %73, %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @bestn, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i1 [ false, %31 ], [ %37, %35 ]
  br i1 %39, label %40, label %76

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @names_buff, align 8
  %45 = load i64*, i64** @names, align 8
  %46 = load i64*, i64** @best, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %45, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %44, %52
  %54 = call i32 @black_list_check(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %43, %40
  %57 = load i64*, i64** @best, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %3, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %56, %43
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %31

76:                                               ; preds = %38
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @black_list_check(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
