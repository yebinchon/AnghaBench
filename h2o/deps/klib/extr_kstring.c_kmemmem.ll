; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kstring.c_kmemmem.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kstring.c_kmemmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmemmem(i8* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* null, i32** %14, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %17, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %18, align 8
  %24 = load i32**, i32*** %11, align 8
  %25 = icmp eq i32** %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load i32**, i32*** %11, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %5
  %31 = load i64*, i64** %18, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32* @ksBM_prep(i64* %31, i32 %32)
  br label %37

34:                                               ; preds = %26
  %35 = load i32**, i32*** %11, align 8
  %36 = load i32*, i32** %35, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i32* [ %33, %30 ], [ %36, %34 ]
  store i32* %38, i32** %14, align 8
  %39 = load i32**, i32*** %11, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32**, i32*** %11, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %14, align 8
  %47 = load i32**, i32*** %11, align 8
  store i32* %46, i32** %47, align 8
  br label %48

48:                                               ; preds = %45, %41, %37
  %49 = load i32*, i32** %14, align 8
  store i32* %49, i32** %15, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %16, align 8
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %128, %48
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %129

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %83, %60
  %64 = load i32, i32* %12, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i64*, i64** %18, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %17, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %71, %78
  br label %80

80:                                               ; preds = %66, %63
  %81 = phi i1 [ false, %63 ], [ %79, %66 ]
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %12, align 4
  br label %63

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %86
  %90 = load i32*, i32** %16, align 8
  %91 = load i64*, i64** %17, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %91, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %90, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %99, %100
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %89
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %112, %89
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %13, align 4
  br label %128

122:                                              ; preds = %86
  %123 = load i64*, i64** %17, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = bitcast i64* %126 to i8*
  store i8* %127, i8** %6, align 8
  br label %136

128:                                              ; preds = %118
  br label %54

129:                                              ; preds = %54
  %130 = load i32**, i32*** %11, align 8
  %131 = icmp eq i32** %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @free(i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  store i8* null, i8** %6, align 8
  br label %136

136:                                              ; preds = %135, %122
  %137 = load i8*, i8** %6, align 8
  ret i8* %137
}

declare dso_local i32* @ksBM_prep(i64*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
