; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_Mat4Compare.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_Mat4Compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Mat4Compare(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %132, label %12

12:                                               ; preds = %2
  %13 = load i64*, i64** %3, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %132, label %20

20:                                               ; preds = %12
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %132, label %28

28:                                               ; preds = %20
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 12
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 12
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %132, label %36

36:                                               ; preds = %28
  %37 = load i64*, i64** %3, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %132, label %44

44:                                               ; preds = %36
  %45 = load i64*, i64** %3, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 5
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %132, label %52

52:                                               ; preds = %44
  %53 = load i64*, i64** %3, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 9
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %4, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 9
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %132, label %60

60:                                               ; preds = %52
  %61 = load i64*, i64** %3, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 13
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 13
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %132, label %68

68:                                               ; preds = %60
  %69 = load i64*, i64** %3, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %132, label %76

76:                                               ; preds = %68
  %77 = load i64*, i64** %3, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 6
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %132, label %84

84:                                               ; preds = %76
  %85 = load i64*, i64** %3, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 10
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %4, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 10
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %132, label %92

92:                                               ; preds = %84
  %93 = load i64*, i64** %3, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 14
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %4, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 14
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %132, label %100

100:                                              ; preds = %92
  %101 = load i64*, i64** %3, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %4, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %132, label %108

108:                                              ; preds = %100
  %109 = load i64*, i64** %3, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 7
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 7
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %132, label %116

116:                                              ; preds = %108
  %117 = load i64*, i64** %3, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 11
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %4, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 11
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = load i64*, i64** %3, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 15
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %4, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 15
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br label %132

132:                                              ; preds = %124, %116, %108, %100, %92, %84, %76, %68, %60, %52, %44, %36, %28, %20, %12, %2
  %133 = phi i1 [ true, %116 ], [ true, %108 ], [ true, %100 ], [ true, %92 ], [ true, %84 ], [ true, %76 ], [ true, %68 ], [ true, %60 ], [ true, %52 ], [ true, %44 ], [ true, %36 ], [ true, %28 ], [ true, %20 ], [ true, %12 ], [ true, %2 ], [ %131, %124 ]
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
