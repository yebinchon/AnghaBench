; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_utf8_util.c_BrotliParseAsUTF8.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_utf8_util.c_BrotliParseAsUTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64)* @BrotliParseAsUTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @BrotliParseAsUTF8(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i64 1, i64* %4, align 8
  br label %165

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 224
  %31 = icmp eq i32 %30, 192
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 192
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 31
  %43 = shl i32 %42, 6
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 63
  %48 = or i32 %43, %47
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 127
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i64 2, i64* %4, align 8
  br label %165

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %32, %26, %23
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %56, 2
  br i1 %57, label %58, label %99

58:                                               ; preds = %55
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 240
  %63 = icmp eq i32 %62, 224
  br i1 %63, label %64, label %99

64:                                               ; preds = %58
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 192
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %99

70:                                               ; preds = %64
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 192
  %75 = icmp eq i32 %74, 128
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  %81 = shl i32 %80, 12
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 63
  %86 = shl i32 %85, 6
  %87 = or i32 %81, %86
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 63
  %92 = or i32 %87, %91
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 2047
  br i1 %96, label %97, label %98

97:                                               ; preds = %76
  store i64 3, i64* %4, align 8
  br label %165

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98, %70, %64, %58, %55
  %100 = load i64, i64* %7, align 8
  %101 = icmp ugt i64 %100, 3
  br i1 %101, label %102, label %159

102:                                              ; preds = %99
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 248
  %107 = icmp eq i32 %106, 240
  br i1 %107, label %108, label %159

108:                                              ; preds = %102
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 192
  %113 = icmp eq i32 %112, 128
  br i1 %113, label %114, label %159

114:                                              ; preds = %108
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 192
  %119 = icmp eq i32 %118, 128
  br i1 %119, label %120, label %159

120:                                              ; preds = %114
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 192
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %159

126:                                              ; preds = %120
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 7
  %131 = shl i32 %130, 18
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 63
  %136 = shl i32 %135, 12
  %137 = or i32 %131, %136
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 63
  %142 = shl i32 %141, 6
  %143 = or i32 %137, %142
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 63
  %148 = or i32 %143, %147
  %149 = load i32*, i32** %5, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %151, 65535
  br i1 %152, label %153, label %158

153:                                              ; preds = %126
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp sle i32 %155, 1114111
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i64 4, i64* %4, align 8
  br label %165

158:                                              ; preds = %153, %126
  br label %159

159:                                              ; preds = %158, %120, %114, %108, %102, %99
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 1114112, %162
  %164 = load i32*, i32** %5, align 8
  store i32 %163, i32* %164, align 4
  store i64 1, i64* %4, align 8
  br label %165

165:                                              ; preds = %159, %157, %97, %53, %21
  %166 = load i64, i64* %4, align 8
  ret i64 %166
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
