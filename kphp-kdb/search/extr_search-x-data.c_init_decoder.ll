; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_init_decoder.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_init_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.searchx_list_decoder = type { i32, i32, i32 }

@word_index_offset = common dso_local global i64 0, align 8
@index_size = common dso_local global i64 0, align 8
@idx_bytes = common dso_local global i64 0, align 8
@IndexData = common dso_local global i64 0, align 8
@Q_decoders = common dso_local global i32 0, align 4
@MAX_WORDS = common dso_local global i32 0, align 4
@le_golomb = common dso_local global i32 0, align 4
@allocated_list_decoders = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.searchx_list_decoder*, i32, i32, i32, i8*)* @init_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_decoder(%struct.searchx_list_decoder* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.searchx_list_decoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.searchx_list_decoder* %0, %struct.searchx_list_decoder** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp sle i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %11, align 8
  br label %63

17:                                               ; preds = %5
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @memcpy(i64* %12, i8* %18, i32 8)
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @word_index_offset, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @index_size, align 8
  %26 = icmp slt i64 %24, %25
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ false, %17 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i64, i64* @index_size, align 8
  %36 = icmp sle i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* @word_index_offset, align 8
  %40 = load i64, i64* %12, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %27
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @idx_bytes, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i64, i64* @idx_bytes, align 8
  %54 = icmp sle i64 %52, %53
  br label %55

55:                                               ; preds = %48, %44, %27
  %56 = phi i1 [ false, %44 ], [ false, %27 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i64, i64* @IndexData, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %59, %60
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %55, %15
  %64 = load i32, i32* @Q_decoders, align 4
  %65 = load i32, i32* @MAX_WORDS, align 4
  %66 = mul nsw i32 2, %65
  %67 = icmp slt i32 %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* @le_golomb, align 4
  %74 = call i32 @zmalloc_list_decoder(i32 %70, i32 %71, i8* %72, i32 %73, i32 0)
  %75 = load i32*, i32** @allocated_list_decoders, align 8
  %76 = load i32, i32* @Q_decoders, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @Q_decoders, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load %struct.searchx_list_decoder*, %struct.searchx_list_decoder** %6, align 8
  %81 = getelementptr inbounds %struct.searchx_list_decoder, %struct.searchx_list_decoder* %80, i32 0, i32 2
  store i32 %74, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.searchx_list_decoder*, %struct.searchx_list_decoder** %6, align 8
  %84 = getelementptr inbounds %struct.searchx_list_decoder, %struct.searchx_list_decoder* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.searchx_list_decoder*, %struct.searchx_list_decoder** %6, align 8
  %87 = getelementptr inbounds %struct.searchx_list_decoder, %struct.searchx_list_decoder* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zmalloc_list_decoder(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
