; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_init_decoder.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_init_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.search_list_decoder = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"init_decoder (N = %d, K = %d)\0A\00", align 1
@le_raw_int32 = common dso_local global i32 0, align 4
@word_index_offset = common dso_local global i64 0, align 8
@index_size = common dso_local global i64 0, align 8
@idx_bytes = common dso_local global i64 0, align 8
@IndexData = common dso_local global i64 0, align 8
@Q_decoders = common dso_local global i32 0, align 4
@MAX_WORDS = common dso_local global i32 0, align 4
@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@allocated_list_decoders = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.search_list_decoder*, i32, i32, i32, i8*, i32)* @init_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_decoder(%struct.search_list_decoder* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.search_list_decoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.search_list_decoder* %0, %struct.search_list_decoder** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i8*, i8** %11, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i32, i32* @le_raw_int32, align 4
  store i32 %22, i32* %12, align 4
  br label %75

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** %11, align 8
  store i8* %27, i8** %13, align 8
  br label %74

28:                                               ; preds = %23
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @memcpy(i64* %14, i8* %29, i32 8)
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @word_index_offset, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @index_size, align 8
  %37 = icmp slt i64 %35, %36
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i1 [ false, %28 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* %14, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i64, i64* @index_size, align 8
  %47 = icmp sle i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* @word_index_offset, align 8
  %51 = load i64, i64* %14, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %38
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @idx_bytes, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i64, i64* @idx_bytes, align 8
  %65 = icmp sle i64 %63, %64
  br label %66

66:                                               ; preds = %59, %55, %38
  %67 = phi i1 [ false, %55 ], [ false, %38 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i64, i64* @IndexData, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add nsw i64 %70, %71
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %13, align 8
  br label %74

74:                                               ; preds = %66, %26
  br label %75

75:                                               ; preds = %74, %20
  %76 = load i32, i32* @Q_decoders, align 4
  %77 = load i32, i32* @MAX_WORDS, align 4
  %78 = mul nsw i32 2, %77
  %79 = icmp slt i32 %76, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 4
  %87 = call i32 @zmalloc_list_decoder_ext(i32 %82, i32 %83, i8* %84, i32 %85, i32 0, i32 %86)
  %88 = load i32*, i32** @allocated_list_decoders, align 8
  %89 = load i32, i32* @Q_decoders, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @Q_decoders, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load %struct.search_list_decoder*, %struct.search_list_decoder** %7, align 8
  %94 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %93, i32 0, i32 2
  store i32 %87, i32* %94, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.search_list_decoder*, %struct.search_list_decoder** %7, align 8
  %97 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.search_list_decoder*, %struct.search_list_decoder** %7, align 8
  %100 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zmalloc_list_decoder_ext(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
