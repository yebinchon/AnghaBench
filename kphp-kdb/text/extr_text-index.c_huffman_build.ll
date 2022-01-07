; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_huffman_build.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_huffman_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huffman_build(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load i64*, i64** %4, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64* %16, i64** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 1, %17
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %72, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %19
  %23 = load i64*, i64** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %53, %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i64*, i64** %4, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %64

53:                                               ; preds = %35
  %54 = load i64*, i64** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %7, align 4
  br label %32

64:                                               ; preds = %52, %32
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %22
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %19

75:                                               ; preds = %19
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i64*, i64** %4, align 8
  %83 = load i64*, i64** %4, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 1, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %198

89:                                               ; preds = %75
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %94, %89
  %92 = load i32, i32* %9, align 4
  %93 = icmp sge i32 %92, 2
  br i1 %93, label %94, label %140

94:                                               ; preds = %91
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %10, align 8
  %98 = load i64*, i64** %4, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %11, align 8
  %104 = load i64*, i64** %4, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @heap_sift(i64* %104, i32 %105, i32 %107)
  %109 = load i64*, i64** %4, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %11, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %4, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %115, %119
  %121 = load i64*, i64** %4, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  store i64 %120, i64* %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = load i64*, i64** %4, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  store i64 %128, i64* %131, align 8
  %132 = load i64*, i64** %4, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  store i64 %128, i64* %134, align 8
  %135 = load i64*, i64** %4, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  %139 = call i32 @heap_sift(i64* %135, i32 %136, i32 %138)
  br label %91

140:                                              ; preds = %91
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %9, align 4
  %142 = load i64*, i64** %4, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 2
  store i64 0, i64* %143, align 8
  store i32 3, i32* %6, align 4
  br label %144

144:                                              ; preds = %162, %140
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = load i64*, i64** %4, align 8
  %150 = load i64*, i64** %4, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i64, i64* %149, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  %158 = load i64*, i64** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 %157, i64* %161, align 8
  br label %162

162:                                              ; preds = %148
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %144

165:                                              ; preds = %144
  %166 = load i32, i32* %5, align 4
  %167 = sub nsw i32 1, %166
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %193, %165
  %169 = load i32, i32* %6, align 4
  %170 = icmp sle i32 %169, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %168
  %172 = load i64*, i64** %4, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %171
  %179 = load i64*, i64** %4, align 8
  %180 = load i64*, i64** %4, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i64, i64* %179, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 1
  %188 = load i64*, i64** %4, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  store i64 %187, i64* %191, align 8
  br label %192

192:                                              ; preds = %178, %171
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  br label %168

196:                                              ; preds = %168
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %87
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @heap_sift(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
