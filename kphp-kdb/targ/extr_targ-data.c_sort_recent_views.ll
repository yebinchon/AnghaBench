; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_sort_recent_views.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_sort_recent_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_recent_views(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %79

12:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = ashr i64 %15, 1
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %66, %12
  br label %20

20:                                               ; preds = %27, %19
  %21 = load i64*, i64** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %20

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i64, i64* %7, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %6, align 8
  br label %31

41:                                               ; preds = %31
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i64*, i64** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64*, i64** %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %5, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %45, %41
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %19, label %70

70:                                               ; preds = %66
  %71 = load i64*, i64** %3, align 8
  %72 = load i64, i64* %6, align 8
  call void @sort_recent_views(i64* %71, i64 %72)
  %73 = load i64*, i64** %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub nsw i64 %76, %77
  call void @sort_recent_views(i64* %75, i64 %78)
  br label %79

79:                                               ; preds = %70, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
