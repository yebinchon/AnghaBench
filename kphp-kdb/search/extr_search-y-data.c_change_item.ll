; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_change_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_change_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.index_item = type { i32 }

@import_only_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"change_item: text=%s, len = %d, item_id = %016llx, rate = %d, rate2 = %d\0A\00", align 1
@mod_items = common dso_local global i32 0, align 4
@FLAG_DELETED = common dso_local global i32 0, align 4
@ONLY_FIND = common dso_local global i32 0, align 4
@del_items = common dso_local global i32 0, align 4
@ADD_NOT_FOUND_ITEM = common dso_local global i32 0, align 4
@creation_date = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@Q = common dso_local global i32 0, align 4
@universal = common dso_local global i32 0, align 4
@tag_owner = common dso_local global i32 0, align 4
@cur_wordlist_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i32, i32)* @change_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_item(i8* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.index_item*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 65536
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %27, %24, %21, %5
  %36 = phi i1 [ false, %24 ], [ false, %21 ], [ false, %5 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = icmp sgt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @fits(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %151

47:                                               ; preds = %35
  %48 = load i64, i64* @import_only_mode, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %151

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53, i64 %54, i32 %55, i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = call %struct.index_item* @get_idx_item(i64 %58)
  store %struct.index_item* %59, %struct.index_item** %13, align 8
  %60 = load %struct.index_item*, %struct.index_item** %13, align 8
  %61 = icmp ne %struct.index_item* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load i32, i32* @mod_items, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @mod_items, align 4
  %65 = load i32, i32* @FLAG_DELETED, align 4
  %66 = load %struct.index_item*, %struct.index_item** %13, align 8
  %67 = getelementptr inbounds %struct.index_item, %struct.index_item* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %62, %51
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @ONLY_FIND, align 4
  %73 = call %struct.TYPE_7__* @get_item_f(i64 %71, i32 %72)
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %12, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %96

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FLAG_DELETED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i32, i32* @del_items, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @del_items, align 4
  %86 = load i32, i32* @FLAG_DELETED, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %83, %76
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = call i32 @item_clear_wordlist(%struct.TYPE_7__* %92, i32* %94)
  br label %104

96:                                               ; preds = %70
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* @ADD_NOT_FOUND_ITEM, align 4
  %99 = call %struct.TYPE_7__* @get_item_f(i64 %97, i32 %98)
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %12, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %101 = icmp ne %struct.TYPE_7__* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %151

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %91
  %105 = load %struct.index_item*, %struct.index_item** %13, align 8
  %106 = icmp ne %struct.index_item* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = load %struct.index_item*, %struct.index_item** %13, align 8
  %110 = call i32 @move_item_rates(%struct.TYPE_7__* %108, %struct.index_item* %109)
  br label %111

111:                                              ; preds = %107, %104
  store i32 3, i32* %15, align 4
  store i32 2, i32* %16, align 4
  %112 = load i32, i32* %10, align 4
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %112, i32* %113, align 16
  %114 = load i32, i32* %11, align 4
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @creation_date, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %118, %111
  %125 = load i32, i32* @log_last_ts, align 4
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 4
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %124, %118
  %133 = call i32 (...) @clear_cur_wordlist()
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @Q, align 4
  %137 = load i32, i32* @universal, align 4
  %138 = load i32, i32* @tag_owner, align 4
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @searchy_extract_words(i8* %134, i32 %135, i32 %136, i32 65536, i32 %137, i32 %138, i64 %139, i32* %17)
  store i32 %140, i32* %18, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @item_add_words(%struct.TYPE_7__* %141, i32 %142)
  %144 = load i32, i32* @cur_wordlist_head, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %148 = load i32, i32* %15, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %150 = call i32 @set_multiple_rates_item(%struct.TYPE_7__* %147, i32 %148, i32* %149)
  store i32 1, i32* %6, align 4
  br label %151

151:                                              ; preds = %132, %102, %50, %46
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fits(i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, i32, i64, i32, i32) #1

declare dso_local %struct.index_item* @get_idx_item(i64) #1

declare dso_local %struct.TYPE_7__* @get_item_f(i64, i32) #1

declare dso_local i32 @item_clear_wordlist(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @move_item_rates(%struct.TYPE_7__*, %struct.index_item*) #1

declare dso_local i32 @clear_cur_wordlist(...) #1

declare dso_local i32 @searchy_extract_words(i8*, i32, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @item_add_words(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @set_multiple_rates_item(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
