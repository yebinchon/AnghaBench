; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_build_message_search_pairs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_build_message_search_pairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.search_index_pair = type { i32, i32 }

@dyn_top = common dso_local global i64* null, align 8
@dyn_cur = common dso_local global i64* null, align 8
@MAX_TEXT_LEN = common dso_local global i32 0, align 4
@text_shift = common dso_local global i64 0, align 8
@WordCRC = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @build_message_search_pairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_message_search_pairs(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.search_index_pair*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i64*, i64** @dyn_top, align 8
  %8 = load i64*, i64** @dyn_cur, align 8
  %9 = load i32, i32* @MAX_TEXT_LEN, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = icmp uge i64* %7, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64*, i64** @dyn_cur, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @text_shift, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @unpack_message(i64* %15, i64 %20, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MAX_TEXT_LEN, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %1
  %32 = phi i1 [ false, %1 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64*, i64** @dyn_cur, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 0, i64* %38, align 8
  %39 = load i64*, i64** @dyn_cur, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @compute_message_distinct_words(i64* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = load i64*, i64** @dyn_top, align 8
  %46 = sub i64 0, %44
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64* %47, i64** @dyn_top, align 8
  %48 = load i64*, i64** @dyn_cur, align 8
  %49 = load i64*, i64** @dyn_top, align 8
  %50 = icmp ule i64* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64*, i64** @dyn_top, align 8
  %54 = bitcast i64* %53 to %struct.search_index_pair*
  store %struct.search_index_pair* %54, %struct.search_index_pair** %5, align 8
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %72, %31
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load i32*, i32** @WordCRC, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.search_index_pair*, %struct.search_index_pair** %5, align 8
  %66 = getelementptr inbounds %struct.search_index_pair, %struct.search_index_pair* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.search_index_pair*, %struct.search_index_pair** %5, align 8
  %71 = getelementptr inbounds %struct.search_index_pair, %struct.search_index_pair* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = load %struct.search_index_pair*, %struct.search_index_pair** %5, align 8
  %76 = getelementptr inbounds %struct.search_index_pair, %struct.search_index_pair* %75, i32 1
  store %struct.search_index_pair* %76, %struct.search_index_pair** %5, align 8
  br label %55

77:                                               ; preds = %55
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unpack_message(i64*, i64, i32) #1

declare dso_local i32 @compute_message_distinct_words(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
