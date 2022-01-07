; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_arr_aho.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_arr_aho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32 }

@maxq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trie_arr_aho(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [100000 x i64], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [100000 x i64], [100000 x i64]* %3, i64 0, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %138, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %139

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [100000 x i64], [100000 x i64]* %3, i64 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.TYPE_6__* @TSHIFT(%struct.TYPE_6__* %31, i32 %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %135, %24
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %138

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 2, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_6__* @TSHIFT(%struct.TYPE_6__* %50, i32 %58)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %10, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %11, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [100000 x i64], [100000 x i64]* %3, i64 0, i64 %74
  store i64 %71, i64* %75, align 8
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %98, %40
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_6__* @TSHIFT(%struct.TYPE_6__* %82, i32 %85)
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %11, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @trie_arr_getc(%struct.TYPE_6__* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %92, %87
  %99 = phi i1 [ false, %87 ], [ %97, %92 ]
  br i1 %99, label %76, label %100

100:                                              ; preds = %98
  store i32 0, i32* %13, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = icmp ne %struct.TYPE_6__* %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @trie_arr_getc(%struct.TYPE_6__* %105, i32 %106)
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = mul nsw i32 2, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 0, %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.TYPE_6__* @TSHIFT(%struct.TYPE_6__* %124, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %108
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %34

138:                                              ; preds = %34
  br label %20

139:                                              ; preds = %20
  ret void
}

declare dso_local %struct.TYPE_6__* @TSHIFT(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @trie_arr_getc(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
