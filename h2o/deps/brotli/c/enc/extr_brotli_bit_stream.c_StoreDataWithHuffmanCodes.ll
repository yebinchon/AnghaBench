; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_StoreDataWithHuffmanCodes.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_StoreDataWithHuffmanCodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64, %struct.TYPE_5__*, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*)* @StoreDataWithHuffmanCodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StoreDataWithHuffmanCodes(i64* %0, i64 %1, i64 %2, %struct.TYPE_5__* %3, i64 %4, i64* %5, i64* %6, i64* %7, i64* %8, i64* %9, i64* %10, i64* %11, i64* %12) #0 {
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_5__, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i64* %0, i64** %14, align 8
  store i64 %1, i64* %15, align 8
  store i64 %2, i64* %16, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %17, align 8
  store i64 %4, i64* %18, align 8
  store i64* %5, i64** %19, align 8
  store i64* %6, i64** %20, align 8
  store i64* %7, i64** %21, align 8
  store i64* %8, i64** %22, align 8
  store i64* %9, i64** %23, align 8
  store i64* %10, i64** %24, align 8
  store i64* %11, i64** %25, align 8
  store i64* %12, i64** %26, align 8
  %36 = load i64, i64* %15, align 8
  store i64 %36, i64* %27, align 8
  store i64 0, i64* %28, align 8
  br label %37

37:                                               ; preds = %129, %13
  %38 = load i64, i64* %28, align 8
  %39 = load i64, i64* %18, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %132

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %43 = load i64, i64* %28, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = bitcast %struct.TYPE_5__* %29 to i8*
  %46 = bitcast %struct.TYPE_5__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 32, i1 false)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %30, align 8
  %49 = load i64*, i64** %21, align 8
  %50 = load i64, i64* %30, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %22, align 8
  %54 = load i64, i64* %30, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %25, align 8
  %58 = load i64*, i64** %26, align 8
  %59 = call i32 @BrotliWriteBits(i64 %52, i64 %56, i64* %57, i64* %58)
  %60 = load i64*, i64** %25, align 8
  %61 = load i64*, i64** %26, align 8
  %62 = call i32 @StoreCommandExtra(%struct.TYPE_5__* %29, i64* %60, i64* %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %31, align 8
  br label %65

65:                                               ; preds = %88, %41
  %66 = load i64, i64* %31, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = load i64*, i64** %14, align 8
  %70 = load i64, i64* %27, align 8
  %71 = load i64, i64* %16, align 8
  %72 = and i64 %70, %71
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %32, align 8
  %75 = load i64*, i64** %19, align 8
  %76 = load i64, i64* %32, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %20, align 8
  %80 = load i64, i64* %32, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %25, align 8
  %84 = load i64*, i64** %26, align 8
  %85 = call i32 @BrotliWriteBits(i64 %78, i64 %82, i64* %83, i64* %84)
  %86 = load i64, i64* %27, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %27, align 8
  br label %88

88:                                               ; preds = %68
  %89 = load i64, i64* %31, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %31, align 8
  br label %65

91:                                               ; preds = %65
  %92 = call i64 @CommandCopyLen(%struct.TYPE_5__* %29)
  %93 = load i64, i64* %27, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %27, align 8
  %95 = call i64 @CommandCopyLen(%struct.TYPE_5__* %29)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %99, 128
  br i1 %100, label %101, label %128

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %33, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, 24
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %34, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 16777215
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %35, align 8
  %112 = load i64*, i64** %23, align 8
  %113 = load i64, i64* %33, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %24, align 8
  %117 = load i64, i64* %33, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %25, align 8
  %121 = load i64*, i64** %26, align 8
  %122 = call i32 @BrotliWriteBits(i64 %115, i64 %119, i64* %120, i64* %121)
  %123 = load i64, i64* %34, align 8
  %124 = load i64, i64* %35, align 8
  %125 = load i64*, i64** %25, align 8
  %126 = load i64*, i64** %26, align 8
  %127 = call i32 @BrotliWriteBits(i64 %123, i64 %124, i64* %125, i64* %126)
  br label %128

128:                                              ; preds = %101, %97, %91
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %28, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %28, align 8
  br label %37

132:                                              ; preds = %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BrotliWriteBits(i64, i64, i64*, i64*) #2

declare dso_local i32 @StoreCommandExtra(%struct.TYPE_5__*, i64*, i64*) #2

declare dso_local i64 @CommandCopyLen(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
