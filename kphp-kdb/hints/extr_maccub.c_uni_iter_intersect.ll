; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_uni_iter_intersect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_uni_iter_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intersect_buff = common dso_local global i32* null, align 8
@MAX_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @uni_iter_intersect(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** @intersect_buff, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_WORDS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %3
  %22 = load i32*, i32** @intersect_buff, align 8
  store i32* %22, i32** %4, align 8
  br label %152

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32*, i32** @intersect_buff, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32 @uni_iter_val_and_next(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i1 [ false, %27 ], [ %37, %33 ]
  br i1 %39, label %40, label %49

40:                                               ; preds = %38
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** @intersect_buff, align 8
  %43 = load i32*, i32** @intersect_buff, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 %41, i32* %48, align 4
  br label %27

49:                                               ; preds = %38
  br label %143

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %56, %50
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @uni_iter_val_and_next(i32* %53)
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** @intersect_buff, align 8
  %59 = load i32*, i32** @intersect_buff, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32 %57, i32* %64, align 4
  br label %51

65:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %139, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32*, i32** @intersect_buff, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i1 [ false, %66 ], [ %74, %70 ]
  br i1 %76, label %77, label %142

77:                                               ; preds = %75
  %78 = load i32*, i32** @intersect_buff, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** @intersect_buff, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 0, i32* %82, align 4
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %137, %77
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @uni_iter_val_and_next(i32* %87)
  store i32 %88, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %138

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32*, i32** @intersect_buff, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %100, %101
  br label %103

103:                                              ; preds = %95, %91
  %104 = phi i1 [ false, %91 ], [ %102, %95 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %91

108:                                              ; preds = %103
  %109 = load i32*, i32** @intersect_buff, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %108
  %117 = load i32, i32* %11, align 4
  %118 = load i32*, i32** @intersect_buff, align 8
  %119 = load i32*, i32** @intersect_buff, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  store i32 %117, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %116
  %130 = load i32*, i32** @intersect_buff, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %138

136:                                              ; preds = %129, %116
  br label %137

137:                                              ; preds = %136, %108
  br label %83

138:                                              ; preds = %135, %83
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %66

142:                                              ; preds = %75
  br label %143

143:                                              ; preds = %142, %49
  %144 = load i32*, i32** @intersect_buff, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp sle i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32*, i32** @intersect_buff, align 8
  store i32* %151, i32** %4, align 8
  br label %152

152:                                              ; preds = %143, %21
  %153 = load i32*, i32** %4, align 8
  ret i32* %153
}

declare dso_local i32 @uni_iter_val_and_next(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
