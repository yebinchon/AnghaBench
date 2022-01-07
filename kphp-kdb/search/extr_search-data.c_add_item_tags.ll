; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_item_tags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_item_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.index_item = type { i32 }

@import_only_mode = common dso_local global i64 0, align 8
@ONLY_FIND = common dso_local global i32 0, align 4
@cur_wordlist_head = common dso_local global i32* null, align 8
@Q = common dso_local global %struct.TYPE_7__* null, align 8
@tag_owner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64)* @add_item_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_item_tags(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.index_item*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store %struct.index_item* null, %struct.index_item** %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %21, %18, %15, %3
  %30 = phi i1 [ false, %18 ], [ false, %15 ], [ false, %3 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp sgt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @fits(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %99

41:                                               ; preds = %29
  %42 = load i64, i64* @import_only_mode, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %99

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = call %struct.index_item* @get_idx_item(i64 %46)
  store %struct.index_item* %47, %struct.index_item** %9, align 8
  %48 = load %struct.index_item*, %struct.index_item** %9, align 8
  %49 = icmp ne %struct.index_item* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.index_item*, %struct.index_item** %9, align 8
  %52 = call i32** @get_index_item_words_ptr(%struct.index_item* %51, i32 1)
  store i32** %52, i32*** %10, align 8
  %53 = load %struct.index_item*, %struct.index_item** %9, align 8
  %54 = bitcast %struct.index_item* %53 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %8, align 8
  br label %65

55:                                               ; preds = %45
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @ONLY_FIND, align 4
  %58 = call %struct.TYPE_6__* @get_item_f(i64 %56, i32 %57)
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %8, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = icmp eq %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %99

62:                                               ; preds = %55
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32** %64, i32*** %10, align 8
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i32**, i32*** %10, align 8
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** @cur_wordlist_head, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q, align 8
  %71 = load i32, i32* @tag_owner, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @extract_words(i8* %68, i32 %69, i32 0, %struct.TYPE_7__* %70, i32 65536, i32 %71, i64 %72)
  store i32 %73, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %93, %65
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @item_add_word(%struct.TYPE_6__* %79, i32 %85, i32 %91)
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %74

96:                                               ; preds = %74
  %97 = load i32*, i32** @cur_wordlist_head, align 8
  %98 = load i32**, i32*** %10, align 8
  store i32* %97, i32** %98, align 8
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %61, %44, %40
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fits(i64) #1

declare dso_local %struct.index_item* @get_idx_item(i64) #1

declare dso_local i32** @get_index_item_words_ptr(%struct.index_item*, i32) #1

declare dso_local %struct.TYPE_6__* @get_item_f(i64, i32) #1

declare dso_local i32 @extract_words(i8*, i32, i32, %struct.TYPE_7__*, i32, i32, i64) #1

declare dso_local i32 @item_add_word(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
