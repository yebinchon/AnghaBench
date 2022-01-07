; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_init_ilist_decoder.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_init_ilist_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.list_encoder = type { i32, i32 (%struct.list_encoder*, i32)* }

@idx_words = common dso_local global i32 0, align 4
@IndexWords = common dso_local global %struct.TYPE_6__* null, align 8
@idx_hapax_legomena = common dso_local global i32 0, align 4
@IndexHapaxLegomena = common dso_local global %struct.TYPE_7__* null, align 8
@idx_items = common dso_local global i32 0, align 4
@le_golomb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_ilist_decoder(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.list_encoder, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  store i32 -1, i32* %6, align 4
  %18 = load i32, i32* @idx_words, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IndexWords, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %6, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %19

42:                                               ; preds = %19
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IndexWords, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %128

54:                                               ; preds = %45, %42
  store i32 -1, i32* %6, align 4
  %55 = load i32, i32* @idx_hapax_legomena, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %78, %54
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %62, %63
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @IndexHapaxLegomena, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %6, align 4
  br label %78

76:                                               ; preds = %61
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %56

79:                                               ; preds = %56
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @IndexHapaxLegomena, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %82
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @IndexHapaxLegomena, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 2147483647
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, -2147483648
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 2, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %105

104:                                              ; preds = %91
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = bitcast i32* %107 to i8*
  store i8* %108, i8** %13, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr i8, i8* %109, i64 8
  store i8* %110, i8** %14, align 8
  %111 = load i32, i32* @idx_items, align 4
  %112 = load i8*, i8** %13, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i32, i32* @le_golomb, align 4
  %115 = call i32 @list_encoder_init(%struct.list_encoder* %15, i32 %111, i32 1, i8* %112, i8* %113, i32 %114, i32 0)
  %116 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %15, i32 0, i32 1
  %117 = load i32 (%struct.list_encoder*, i32)*, i32 (%struct.list_encoder*, i32)** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 %117(%struct.list_encoder* %15, i32 %118)
  %120 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %15, i32 0, i32 0
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @bwrite_gamma_code(i32* %120, i32 %121)
  %123 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %15, i32 0, i32 0
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @bwrite_gamma_code(i32* %123, i32 %124)
  %126 = call i32 @list_encoder_finish(%struct.list_encoder* %15)
  store i32 1, i32* %3, align 4
  br label %153

127:                                              ; preds = %82, %79
  store i32 0, i32* %3, align 4
  br label %153

128:                                              ; preds = %45
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IndexWords, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store %struct.TYPE_6__* %132, %struct.TYPE_6__** %134, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* @idx_items, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = call i32 @init_decoder(i32* %136, i32 %137, i32 %142, i32 %147, i32* %151)
  store i32 1, i32* %3, align 4
  br label %153

153:                                              ; preds = %128, %127, %105
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @list_encoder_init(%struct.list_encoder*, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @bwrite_gamma_code(i32*, i32) #1

declare dso_local i32 @list_encoder_finish(%struct.list_encoder*) #1

declare dso_local i32 @init_decoder(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
