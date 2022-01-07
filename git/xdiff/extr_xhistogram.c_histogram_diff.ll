; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xhistogram.c_histogram_diff.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xhistogram.c_histogram_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.region = type { i32, i32, i32, i32 }

@MAX_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32, i32, i32, i32)* @histogram_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histogram_diff(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.region, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  br label %17

17:                                               ; preds = %147, %6
  store i32 -1, i32* %16, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %13, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %171

24:                                               ; preds = %20, %17
  %25 = call i64 @LINE_END(i32 1)
  %26 = load i64, i64* @MAX_PTR, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %171

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %13, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = sub nsw i32 %42, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32 1, i32* %46, align 4
  br label %33

47:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %171

48:                                               ; preds = %29
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = sub nsw i32 %61, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32 1, i32* %65, align 4
  br label %52

66:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %171

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67
  %69 = call i32 @memset(%struct.region* %14, i32 0, i32 16)
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @find_lcs(i32* %70, %struct.TYPE_9__* %71, %struct.region* %14, i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %169

80:                                               ; preds = %68
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @fall_back_to_classic_diff(i32* %84, %struct.TYPE_9__* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %16, align 4
  br label %167

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.region, %struct.region* %14, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.region, %struct.region* %14, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %11, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = sub nsw i32 %109, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  store i32 1, i32* %113, align 4
  br label %100

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %13, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  %126 = sub nsw i32 %124, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  store i32 1, i32* %128, align 4
  br label %115

129:                                              ; preds = %115
  store i32 0, i32* %16, align 4
  br label %166

130:                                              ; preds = %95, %91
  %131 = load i32*, i32** %8, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = getelementptr inbounds %struct.region, %struct.region* %14, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %12, align 4
  %139 = getelementptr inbounds %struct.region, %struct.region* %14, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %12, align 4
  %142 = sub nsw i32 %140, %141
  %143 = call i32 @histogram_diff(i32* %131, %struct.TYPE_9__* %132, i32 %133, i32 %137, i32 %138, i32 %142)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  br label %169

147:                                              ; preds = %130
  %148 = call i64 @LINE_END(i32 1)
  %149 = getelementptr inbounds %struct.region, %struct.region* %14, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %148, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %11, align 4
  %154 = getelementptr inbounds %struct.region, %struct.region* %14, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  %157 = call i64 @LINE_END(i32 2)
  %158 = getelementptr inbounds %struct.region, %struct.region* %14, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %157, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %13, align 4
  %163 = getelementptr inbounds %struct.region, %struct.region* %14, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %17

166:                                              ; preds = %129
  br label %167

167:                                              ; preds = %166, %83
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168, %146, %79
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %169, %66, %47, %28, %23
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i64 @LINE_END(i32) #1

declare dso_local i32 @memset(%struct.region*, i32, i32) #1

declare dso_local i32 @find_lcs(i32*, %struct.TYPE_9__*, %struct.region*, i32, i32, i32, i32) #1

declare dso_local i32 @fall_back_to_classic_diff(i32*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
