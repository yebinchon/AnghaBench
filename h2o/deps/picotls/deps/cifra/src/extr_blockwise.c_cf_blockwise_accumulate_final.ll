; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_blockwise.c_cf_blockwise_accumulate_final.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_blockwise.c_cf_blockwise_accumulate_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_blockwise_accumulate_final(i32* %0, i64* %1, i64 %2, i8* %3, i64 %4, i32 (i8*, i32*)* %5, i32 (i8*, i32*)* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32 (i8*, i32*)*, align 8
  %15 = alloca i32 (i8*, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 (i8*, i32*)* %5, i32 (i8*, i32*)** %14, align 8
  store i32 (i8*, i32*)* %6, i32 (i8*, i32*)** %15, align 8
  store i8* %7, i8** %16, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %17, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = load i64*, i64** %10, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ult i64 %28, %29
  br label %31

31:                                               ; preds = %26, %8
  %32 = phi i1 [ false, %8 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i1 [ true, %31 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %14, align 8
  %46 = icmp ne i32 (i8*, i32*)* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %16, align 8
  %49 = icmp ne i8* %48, null
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %50
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %57
  %61 = load i64, i64* %11, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %61, %63
  store i64 %64, i64* %18, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @MIN(i64 %65, i64 %66)
  store i64 %67, i64* %19, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32*, i32** %17, align 8
  %73 = load i64, i64* %19, align 8
  %74 = call i32 @memcpy(i32* %71, i32* %72, i64 %73)
  %75 = load i64, i64* %19, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %17, align 8
  %78 = load i64, i64* %19, align 8
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %19, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %81
  store i64 %84, i64* %82, align 8
  %85 = load i64*, i64** %10, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %60
  %90 = load i64, i64* %13, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %15, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 %93(i8* %94, i32* %95)
  br label %102

97:                                               ; preds = %89
  %98 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %14, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 %98(i8* %99, i32* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i64*, i64** %10, align 8
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %102, %60
  br label %105

105:                                              ; preds = %104, %57, %50
  br label %106

106:                                              ; preds = %129, %105
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp uge i64 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = load i64*, i64** %10, align 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %15, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = call i32 %120(i8* %121, i32* %122)
  br label %129

124:                                              ; preds = %110
  %125 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %14, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 %125(i8* %126, i32* %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i64, i64* %11, align 8
  %131 = load i32*, i32** %17, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 %130
  store i32* %132, i32** %17, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %13, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %13, align 8
  br label %106

136:                                              ; preds = %106
  br label %137

137:                                              ; preds = %140, %136
  %138 = load i64, i64* %13, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %171

140:                                              ; preds = %137
  %141 = load i64, i64* %11, align 8
  %142 = load i64*, i64** %10, align 8
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %141, %143
  store i64 %144, i64* %20, align 8
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %13, align 8
  %147 = call i64 @MIN(i64 %145, i64 %146)
  store i64 %147, i64* %21, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32*, i32** %17, align 8
  %153 = load i64, i64* %21, align 8
  %154 = call i32 @memcpy(i32* %151, i32* %152, i64 %153)
  %155 = load i64, i64* %21, align 8
  %156 = load i32*, i32** %17, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 %155
  store i32* %157, i32** %17, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load i64, i64* %13, align 8
  %160 = sub i64 %159, %158
  store i64 %160, i64* %13, align 8
  %161 = load i64, i64* %21, align 8
  %162 = load i64*, i64** %10, align 8
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, %161
  store i64 %164, i64* %162, align 8
  %165 = load i64*, i64** %10, align 8
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %11, align 8
  %168 = icmp ult i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  br label %137

171:                                              ; preds = %137
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
