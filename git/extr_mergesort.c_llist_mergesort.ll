; ModuleID = '/home/carl/AnghaBench/git/extr_mergesort.c_llist_mergesort.c'
source_filename = "/home/carl/AnghaBench/git/extr_mergesort.c_llist_mergesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mergesort_sublist = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @llist_mergesort(i8* %0, i8* (i8*)* %1, void (i8*, i8*)* %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8* (i8*)*, align 8
  %8 = alloca void (i8*, i8*)*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mergesort_sublist, align 8
  %13 = alloca %struct.mergesort_sublist, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* (i8*)* %1, i8* (i8*)** %7, align 8
  store void (i8*, i8*)* %2, void (i8*, i8*)** %8, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %129

18:                                               ; preds = %4
  store i64 1, i64* %10, align 8
  br label %19

19:                                               ; preds = %124, %18
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %26 = call i8* @get_nth_next(i8* %23, i64 %24, i8* (i8*)* %25)
  %27 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %127

32:                                               ; preds = %19
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %37 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 %36(i8* %38, i8* %40)
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %45 = call i8* @pop_item(%struct.mergesort_sublist* %13, i8* (i8*)* %44)
  store i8* %45, i8** %11, align 8
  store i8* %45, i8** %6, align 8
  br label %49

46:                                               ; preds = %32
  %47 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %48 = call i8* @pop_item(%struct.mergesort_sublist* %12, i8* (i8*)* %47)
  store i8* %48, i8** %11, align 8
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %118, %49
  %51 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %121

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %96, %54
  %56 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ true, %55 ], [ %62, %59 ]
  br i1 %64, label %65, label %100

65:                                               ; preds = %63
  %66 = load i8*, i8** %11, align 8
  store i8* %66, i8** %14, align 8
  %67 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %72 = call i8* @pop_item(%struct.mergesort_sublist* %13, i8* (i8*)* %71)
  store i8* %72, i8** %11, align 8
  br label %96

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %79 = call i8* @pop_item(%struct.mergesort_sublist* %12, i8* (i8*)* %78)
  store i8* %79, i8** %11, align 8
  br label %95

80:                                               ; preds = %73
  %81 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %82 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 %81(i8* %83, i8* %85)
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %90 = call i8* @pop_item(%struct.mergesort_sublist* %13, i8* (i8*)* %89)
  store i8* %90, i8** %11, align 8
  br label %94

91:                                               ; preds = %80
  %92 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %93 = call i8* @pop_item(%struct.mergesort_sublist* %12, i8* (i8*)* %92)
  store i8* %93, i8** %11, align 8
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %77
  br label %96

96:                                               ; preds = %95, %70
  %97 = load void (i8*, i8*)*, void (i8*, i8*)** %8, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** %11, align 8
  call void %97(i8* %98, i8* %99)
  br label %55

100:                                              ; preds = %63
  %101 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  %106 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %12, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %110 = call i8* @get_nth_next(i8* %107, i64 %108, i8* (i8*)* %109)
  %111 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = load i64, i64* %10, align 8
  br label %118

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i64 [ %116, %115 ], [ 0, %117 ]
  %120 = getelementptr inbounds %struct.mergesort_sublist, %struct.mergesort_sublist* %13, i32 0, i32 1
  store i64 %119, i64* %120, align 8
  br label %50

121:                                              ; preds = %50
  %122 = load void (i8*, i8*)*, void (i8*, i8*)** %8, align 8
  %123 = load i8*, i8** %11, align 8
  call void %122(i8* %123, i8* null)
  br label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %10, align 8
  %126 = mul i64 %125, 2
  store i64 %126, i64* %10, align 8
  br label %19

127:                                              ; preds = %31
  %128 = load i8*, i8** %6, align 8
  store i8* %128, i8** %5, align 8
  br label %129

129:                                              ; preds = %127, %17
  %130 = load i8*, i8** %5, align 8
  ret i8* %130
}

declare dso_local i8* @get_nth_next(i8*, i64, i8* (i8*)*) #1

declare dso_local i8* @pop_item(%struct.mergesort_sublist*, i8* (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
