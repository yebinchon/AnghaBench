; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_golomb_decode_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_golomb_decode_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_bit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @golomb_decode_list(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %27, %4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = shl i32 %37, 24
  %39 = add nsw i32 %38, 8388608
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %51, %33
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i64, i64* @cur_bit, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = call i32 (...) @load_bit()
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  br label %40

55:                                               ; preds = %40
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 0
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i1 [ false, %55 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @compute_golomb_parameter(i32 %69, i32 %70)
  store i32 %71, i32* %16, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %76, %63
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %72

81:                                               ; preds = %72
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %134, %81
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %14, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %147

89:                                               ; preds = %85
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %93, %89
  %91 = load i64, i64* @cur_bit, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %15, align 4
  %97 = call i32 (...) @load_bit()
  br label %90

98:                                               ; preds = %90
  %99 = call i32 (...) @load_bit()
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %114, %98
  %102 = load i32, i32* %18, align 4
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32, i32* %17, align 4
  %106 = shl i32 %105, 1
  store i32 %106, i32* %17, align 4
  %107 = load i64, i64* @cur_bit, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = call i32 (...) @load_bit()
  br label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %18, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i32, i32* %17, align 4
  %123 = shl i32 %122, 1
  store i32 %123, i32* %17, align 4
  %124 = load i64, i64* @cur_bit, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = call i32 (...) @load_bit()
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %17, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %129, %117
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %15, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %139, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %8, align 8
  br label %85

147:                                              ; preds = %85
  %148 = load i32, i32* %12, align 4
  %149 = and i32 %148, 8388608
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 -1
  store i8* %153, i8** %5, align 8
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i8*, i8** %5, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = icmp eq i8* %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  ret i32 %161
}

declare dso_local i32 @load_bit(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_golomb_parameter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
