; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_char_dictionary.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_char_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.char_dictionary = type { i32, i32*, i32, i64*, i32**, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.char_dictionary* @load_char_dictionary(%struct.char_dictionary* %0, i64 %1) #0 {
  %3 = alloca %struct.char_dictionary*, align 8
  %4 = alloca %struct.char_dictionary*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.char_dictionary* %0, %struct.char_dictionary** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.char_dictionary* @load_index_part(%struct.char_dictionary* %10, i64 %11, i32 260, i32 0)
  store %struct.char_dictionary* %12, %struct.char_dictionary** %4, align 8
  %13 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %14 = icmp ne %struct.char_dictionary* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.char_dictionary* null, %struct.char_dictionary** %3, align 8
  br label %145

16:                                               ; preds = %2
  %17 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %18 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 256
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i64 0, i64* %9, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %37, %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %28 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ule i32 %33, 32
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %42 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %119, %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 32
  br i1 %45, label %46, label %122

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = icmp ult i64 %47, 4294967296
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %52 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %56 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 %54, i64* %61, align 8
  %62 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %63 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 32, %69
  %71 = zext i32 %70 to i64
  %72 = lshr i64 %68, %71
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  %75 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %76 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %75, i32 0, i32 4
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  store i32* %74, i32** %81, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %115, %53
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 256
  br i1 %84, label %85, label %118

85:                                               ; preds = %82
  %86 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %87 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %85
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %98 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %96, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 32, %104
  %106 = shl i32 1, %105
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ule i64 %110, 4294967296
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  br label %114

114:                                              ; preds = %95, %85
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %82

118:                                              ; preds = %82
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %43

122:                                              ; preds = %43
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %125 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp eq i64 %126, 4294967296
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* %8, align 4
  %130 = icmp sle i32 %129, 256
  br i1 %130, label %140, label %131

131:                                              ; preds = %128, %122
  %132 = load i64, i64* %9, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i1 [ false, %131 ], [ %137, %134 ]
  br label %140

140:                                              ; preds = %138, %128
  %141 = phi i1 [ true, %128 ], [ %139, %138 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  store %struct.char_dictionary* %144, %struct.char_dictionary** %3, align 8
  br label %145

145:                                              ; preds = %140, %15
  %146 = load %struct.char_dictionary*, %struct.char_dictionary** %3, align 8
  ret %struct.char_dictionary* %146
}

declare dso_local %struct.char_dictionary* @load_index_part(%struct.char_dictionary*, i64, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
