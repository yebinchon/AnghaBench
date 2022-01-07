; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_picohash.h__picohash_sha256_do_final.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_picohash.h__picohash_sha256_do_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i64)* @_picohash_sha256_do_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_picohash_sha256_do_final(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8 -128, i8* %26, align 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 56
  br i1 %30, label %31, label %55

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %37, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 64
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 0, i8* %46, align 1
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @_picohash_sha256_compress(%struct.TYPE_4__* %48, i8* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %3
  br label %56

56:                                               ; preds = %61, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 56
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  store i8 0, i8* %70, align 1
  br label %56

71:                                               ; preds = %56
  store i64 0, i64* %8, align 8
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 8
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = mul i64 8, %79
  %81 = sub i64 56, %80
  %82 = trunc i64 %81 to i32
  %83 = ashr i32 %78, %82
  %84 = trunc i32 %83 to i8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 56, %88
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %84, i8* %90, align 1
  br label %91

91:                                               ; preds = %75
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %72

94:                                               ; preds = %72
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @_picohash_sha256_compress(%struct.TYPE_4__* %95, i8* %98)
  store i64 0, i64* %8, align 8
  br label %100

100:                                              ; preds = %156, %94
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %6, align 8
  %103 = udiv i64 %102, 4
  %104 = icmp ne i64 %101, %103
  br i1 %104, label %105, label %159

105:                                              ; preds = %100
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 24
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = mul i64 %115, 4
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 %113, i8* %117, align 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 16
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = mul i64 %127, 4
  %129 = add i64 %128, 1
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  store i8 %125, i8* %130, align 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 8
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = mul i64 %140, 4
  %142 = add i64 %141, 2
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 %138, i8* %143, align 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %7, align 8
  %152 = load i64, i64* %8, align 8
  %153 = mul i64 %152, 4
  %154 = add i64 %153, 3
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  store i8 %150, i8* %155, align 1
  br label %156

156:                                              ; preds = %105
  %157 = load i64, i64* %8, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %8, align 8
  br label %100

159:                                              ; preds = %100
  ret void
}

declare dso_local i32 @_picohash_sha256_compress(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
