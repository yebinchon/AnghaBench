; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_qsort_i.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_qsort_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i64 }

@Items = common dso_local global %struct.item** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @qsort_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qsort_i(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.item*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %90

13:                                               ; preds = %2
  %14 = load %struct.item**, %struct.item*** @Items, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %15, %16
  %18 = ashr i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.item*, %struct.item** %14, i64 %19
  %21 = load %struct.item*, %struct.item** %20, align 8
  %22 = getelementptr inbounds %struct.item, %struct.item* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %81, %13
  br label %27

27:                                               ; preds = %37, %26
  %28 = load %struct.item**, %struct.item*** @Items, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.item*, %struct.item** %28, i64 %30
  %32 = load %struct.item*, %struct.item** %31, align 8
  %33 = getelementptr inbounds %struct.item, %struct.item* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %51, %40
  %42 = load %struct.item**, %struct.item*** @Items, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.item*, %struct.item** %42, i64 %44
  %46 = load %struct.item*, %struct.item** %45, align 8
  %47 = getelementptr inbounds %struct.item, %struct.item* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  br label %41

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load %struct.item**, %struct.item*** @Items, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.item*, %struct.item** %59, i64 %61
  %63 = load %struct.item*, %struct.item** %62, align 8
  store %struct.item* %63, %struct.item** %8, align 8
  %64 = load %struct.item**, %struct.item*** @Items, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.item*, %struct.item** %64, i64 %66
  %68 = load %struct.item*, %struct.item** %67, align 8
  %69 = load %struct.item**, %struct.item*** @Items, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.item*, %struct.item** %69, i64 %72
  store %struct.item* %68, %struct.item** %73, align 8
  %74 = load %struct.item*, %struct.item** %8, align 8
  %75 = load %struct.item**, %struct.item*** @Items, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %6, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %struct.item*, %struct.item** %75, i64 %78
  store %struct.item* %74, %struct.item** %79, align 8
  br label %80

80:                                               ; preds = %58, %54
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %26, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %6, align 4
  call void @qsort_i(i32 %86, i32 %87)
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  call void @qsort_i(i32 %88, i32 %89)
  br label %90

90:                                               ; preds = %85, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
