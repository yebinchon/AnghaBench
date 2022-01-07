; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_change_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_change_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.index_item = type { i32 }

@import_only_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"change_item: text=%s, len = %d, item_id = %016llx, rate = %d, rate2 = %d\0A\00", align 1
@mod_items = common dso_local global i32 0, align 4
@FLAG_DELETED = common dso_local global i32 0, align 4
@ONLY_FIND = common dso_local global i32 0, align 4
@del_items = common dso_local global i32 0, align 4
@ADD_NOT_FOUND_ITEM = common dso_local global i32 0, align 4
@creation_date = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@universal = common dso_local global i32 0, align 4
@Q = common dso_local global %struct.TYPE_11__* null, align 8
@tag_owner = common dso_local global i32 0, align 4
@cur_wordlist_head = common dso_local global i32 0, align 4
@wordfreqs_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i32, i32)* @change_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_item(i8* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
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
  br label %189

47:                                               ; preds = %35
  %48 = load i64, i64* @import_only_mode, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %189

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
  br i1 %61, label %62, label %75

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
  %70 = load %struct.index_item*, %struct.index_item** %13, align 8
  %71 = bitcast %struct.index_item* %70 to %struct.TYPE_10__*
  %72 = load %struct.index_item*, %struct.index_item** %13, align 8
  %73 = call i32* @get_index_item_words_ptr(%struct.index_item* %72, i32 0)
  %74 = call i32 @item_clear_wordlist(%struct.TYPE_10__* %71, i32* %73)
  br label %75

75:                                               ; preds = %62, %51
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @ONLY_FIND, align 4
  %78 = call %struct.TYPE_10__* @get_item_f(i64 %76, i32 %77)
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %12, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FLAG_DELETED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load i32, i32* @del_items, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* @del_items, align 4
  %91 = load i32, i32* @FLAG_DELETED, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %81
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = call i32 @item_clear_wordlist(%struct.TYPE_10__* %97, i32* %99)
  br label %109

101:                                              ; preds = %75
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* @ADD_NOT_FOUND_ITEM, align 4
  %104 = call %struct.TYPE_10__* @get_item_f(i64 %102, i32 %103)
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %12, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %189

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %96
  %110 = load %struct.index_item*, %struct.index_item** %13, align 8
  %111 = icmp ne %struct.index_item* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %114 = load %struct.index_item*, %struct.index_item** %13, align 8
  %115 = call i32 @move_item_rates(%struct.TYPE_10__* %113, %struct.index_item* %114)
  br label %116

116:                                              ; preds = %112, %109
  store i32 3, i32* %15, align 4
  store i32 2, i32* %16, align 4
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %117, i32* %118, align 16
  %119 = load i32, i32* %11, align 4
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @creation_date, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %123, %116
  %130 = load i32, i32* @now, align 4
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %133
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 4
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %129, %123
  %138 = call i32 (...) @clear_cur_wordlist()
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @universal, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Q, align 8
  %143 = load i32, i32* @tag_owner, align 4
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @extract_words(i8* %139, i32 %140, i32 %141, %struct.TYPE_11__* %142, i32 65536, i32 %143, i64 %144)
  store i32 %145, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %146

146:                                              ; preds = %165, %137
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %18, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %146
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Q, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Q, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @item_add_word(%struct.TYPE_10__* %151, i32 %157, i32 %163)
  br label %165

165:                                              ; preds = %150
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %146

168:                                              ; preds = %146
  %169 = load i32, i32* @cur_wordlist_head, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load i64, i64* @wordfreqs_enabled, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %168
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Q, align 8
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @evaluate_uniq_words_count(%struct.TYPE_11__* %175, i32 %176)
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %180
  store i32 %177, i32* %181, align 4
  %182 = load i32, i32* %15, align 4
  %183 = or i32 %182, 8192
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %174, %168
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %186 = load i32, i32* %15, align 4
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %188 = call i32 @set_multiple_rates_item(%struct.TYPE_10__* %185, i32 %186, i32* %187)
  store i32 1, i32* %6, align 4
  br label %189

189:                                              ; preds = %184, %107, %50, %46
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fits(i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, i32, i64, i32, i32) #1

declare dso_local %struct.index_item* @get_idx_item(i64) #1

declare dso_local i32 @item_clear_wordlist(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @get_index_item_words_ptr(%struct.index_item*, i32) #1

declare dso_local %struct.TYPE_10__* @get_item_f(i64, i32) #1

declare dso_local i32 @move_item_rates(%struct.TYPE_10__*, %struct.index_item*) #1

declare dso_local i32 @clear_cur_wordlist(...) #1

declare dso_local i32 @extract_words(i8*, i32, i32, %struct.TYPE_11__*, i32, i32, i64) #1

declare dso_local i32 @item_add_word(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @evaluate_uniq_words_count(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @set_multiple_rates_item(%struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
