; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_postprocess_recent_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_postprocess_recent_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_cnt = common dso_local global i64 0, align 8
@Q_limit = common dso_local global i64 0, align 8
@R = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @postprocess_recent_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* @R_cnt, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @Q_limit, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %95

12:                                               ; preds = %8
  %13 = load i64, i64* @Q_limit, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %12
  %18 = load i32*, i32** @R, align 8
  %19 = bitcast i32* %18 to i64*
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = call i32 @sort_recent_views(i64* %19, i64 %22)
  store i64 0, i64* %5, align 8
  %24 = load i32*, i32** @R, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 1, i32* %25, align 4
  store i64 1, i64* %4, align 8
  br label %26

26:                                               ; preds = %69, %17
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = load i32*, i32** @R, align 8
  %33 = load i64, i64* %4, align 8
  %34 = mul nsw i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @R, align 8
  %38 = load i64, i64* %5, align 8
  %39 = mul nsw i64 %38, 2
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load i32*, i32** @R, align 8
  %45 = load i64, i64* %5, align 8
  %46 = mul nsw i64 %45, 2
  %47 = add nsw i64 %46, 1
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %68

51:                                               ; preds = %31
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  %54 = load i32*, i32** @R, align 8
  %55 = load i64, i64* %4, align 8
  %56 = mul nsw i64 %55, 2
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @R, align 8
  %60 = load i64, i64* %5, align 8
  %61 = mul nsw i64 %60, 2
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32*, i32** @R, align 8
  %64 = load i64, i64* %5, align 8
  %65 = mul nsw i64 %64, 2
  %66 = add nsw i64 %65, 1
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %51, %43
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %26

72:                                               ; preds = %26
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %5, align 8
  %75 = load i32*, i32** @R, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @do_llswap(i32* %75, i64 %76)
  %78 = load i32*, i32** @R, align 8
  %79 = bitcast i32* %78 to i64*
  %80 = load i64, i64* %5, align 8
  %81 = sub nsw i64 %80, 1
  %82 = call i32 @sort_recent_views(i64* %79, i64 %81)
  %83 = load i32*, i32** @R, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @do_llswap(i32* %83, i64 %84)
  %86 = load i64, i64* @Q_limit, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %72
  %90 = load i64, i64* %5, align 8
  store i64 %90, i64* @Q_limit, align 8
  br label %91

91:                                               ; preds = %89, %72
  %92 = load i64, i64* @Q_limit, align 8
  %93 = mul nsw i64 %92, 2
  store i64 %93, i64* @R_cnt, align 8
  %94 = load i32, i32* %3, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %15, %11
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @sort_recent_views(i64*, i64) #1

declare dso_local i32 @do_llswap(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
