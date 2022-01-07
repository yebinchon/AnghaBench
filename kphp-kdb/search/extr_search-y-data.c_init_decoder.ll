; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_init_decoder.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_init_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"init_decoder (N = %d, K = %d)\0A\00", align 1
@word_index_offset = common dso_local global i64 0, align 8
@index_size = common dso_local global i64 0, align 8
@idx_bytes = common dso_local global i64 0, align 8
@IndexData = common dso_local global i64 0, align 8
@Header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@le_interpolative_ext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, i32, i8*, i32)* @init_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_decoder(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %21, -1
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %13, align 8
  br label %55

24:                                               ; preds = %6
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @memcpy(i64* %14, i8* %25, i32 8)
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* @word_index_offset, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @index_size, align 8
  %33 = icmp slt i64 %31, %32
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i1 [ false, %24 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* @word_index_offset, align 8
  %39 = load i64, i64* %14, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @idx_bytes, align 8
  %46 = icmp slt i64 %44, %45
  br label %47

47:                                               ; preds = %43, %34
  %48 = phi i1 [ false, %34 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64, i64* @IndexData, align 8
  %52 = load i64, i64* %14, align 8
  %53 = add nsw i64 %51, %52
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %13, align 8
  br label %55

55:                                               ; preds = %47, %20
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %67 = call i32 @zmalloc_ylist_decoder(i32* %62, i32 %63, i32 %64, i8* %65, i32 0, i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %81

71:                                               ; preds = %55
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* @le_interpolative_ext, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %77 = call i32 @zmalloc_list_decoder_ext(i32 %72, i32 %73, i8* %74, i32 %75, i32 0, i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %61
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zmalloc_ylist_decoder(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @zmalloc_list_decoder_ext(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
