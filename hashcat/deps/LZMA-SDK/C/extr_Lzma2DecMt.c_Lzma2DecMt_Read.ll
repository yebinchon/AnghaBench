; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2DecMt_Read.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2DecMt_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@LZMA_FINISH_ANY = common dso_local global i32 0, align 4
@LZMA_FINISH_END = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Lzma2DecMt_Read(i64 %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %10, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64*, i64** %8, align 8
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %9, align 8
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @LZMA_FINISH_ANY, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load i64, i64* %14, align 8
  store i64 %42, i64* %13, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @LZMA_FINISH_END, align 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %47, %41
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i64, i64* @SZ_OK, align 8
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %147, %51
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %53
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @SZ_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = call i64 @ISeqInStream_Read(i32 %76, i64 %79, i64* %81)
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %65, %61, %53
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  store i64 %90, i64* %15, align 8
  %91 = load i64, i64* %13, align 8
  store i64 %91, i64* %16, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %97, %100
  %102 = load i32, i32* %11, align 4
  %103 = call i64 @Lzma2Dec_DecodeToBuf(i32* %93, i32* %94, i64* %16, i64 %101, i64* %15, i32 %102, i32* %17)
  store i64 %103, i64* %18, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, %116
  store i64 %119, i64* %117, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, %120
  store i64 %124, i64* %122, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, %125
  store i64 %128, i64* %126, align 8
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %13, align 8
  %131 = sub i64 %130, %129
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %16, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 %132
  store i32* %134, i32** %7, align 8
  %135 = load i64, i64* %18, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %83
  %138 = load i64, i64* %18, align 8
  store i64 %138, i64* %5, align 8
  br label %148

139:                                              ; preds = %83
  %140 = load i64, i64* %15, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i64, i64* %16, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i64, i64* %12, align 8
  store i64 %146, i64* %5, align 8
  br label %148

147:                                              ; preds = %142, %139
  br label %53

148:                                              ; preds = %145, %137
  %149 = load i64, i64* %5, align 8
  ret i64 %149
}

declare dso_local i64 @ISeqInStream_Read(i32, i64, i64*) #1

declare dso_local i64 @Lzma2Dec_DecodeToBuf(i32*, i32*, i64*, i64, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
