; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_change_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_change_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.item = type { i32, i32, i32, i32, i32 }
%struct.index_item = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"change_item: text=%s, len = %d, item_id = %016llx, rate = %d, rate2 = %d\0A\00", align 1
@mod_items = common dso_local global i32 0, align 4
@FLAG_DELETED = common dso_local global i32 0, align 4
@ONLY_FIND = common dso_local global i32 0, align 4
@del_items = common dso_local global i32 0, align 4
@ADD_NOT_FOUND_ITEM = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@universal = common dso_local global i32 0, align 4
@Q = common dso_local global %struct.TYPE_4__* null, align 8
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
  %12 = alloca %struct.item*, align 8
  %13 = alloca %struct.index_item*, align 8
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 65536
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %25, %22, %19, %5
  %34 = phi i1 [ false, %22 ], [ false, %19 ], [ false, %5 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @fits(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %156

45:                                               ; preds = %33
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47, i64 %48, i32 %49, i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = call %struct.index_item* @get_idx_item(i64 %52)
  store %struct.index_item* %53, %struct.index_item** %13, align 8
  %54 = load %struct.index_item*, %struct.index_item** %13, align 8
  %55 = icmp ne %struct.index_item* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load i32, i32* @mod_items, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @mod_items, align 4
  %59 = load i32, i32* @FLAG_DELETED, align 4
  %60 = load %struct.index_item*, %struct.index_item** %13, align 8
  %61 = getelementptr inbounds %struct.index_item, %struct.index_item* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %45
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* @ONLY_FIND, align 4
  %67 = call %struct.item* @get_item_f(i64 %65, i32 %66)
  store %struct.item* %67, %struct.item** %12, align 8
  %68 = load %struct.item*, %struct.item** %12, align 8
  %69 = icmp ne %struct.item* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = load %struct.item*, %struct.item** %12, align 8
  %72 = getelementptr inbounds %struct.item, %struct.item* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FLAG_DELETED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* @del_items, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* @del_items, align 4
  %80 = load i32, i32* @FLAG_DELETED, align 4
  %81 = load %struct.item*, %struct.item** %12, align 8
  %82 = getelementptr inbounds %struct.item, %struct.item* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %77, %70
  %86 = load %struct.item*, %struct.item** %12, align 8
  %87 = call i32 @item_clear_wordlist(%struct.item* %86)
  br label %96

88:                                               ; preds = %64
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* @ADD_NOT_FOUND_ITEM, align 4
  %91 = call %struct.item* @get_item_f(i64 %89, i32 %90)
  store %struct.item* %91, %struct.item** %12, align 8
  %92 = load %struct.item*, %struct.item** %12, align 8
  %93 = icmp ne %struct.item* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i32 0, i32* %6, align 4
  br label %156

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %85
  %97 = load %struct.index_item*, %struct.index_item** %13, align 8
  %98 = icmp ne %struct.index_item* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.item*, %struct.item** %12, align 8
  %101 = load %struct.index_item*, %struct.index_item** %13, align 8
  %102 = call i32 @move_item_rates(%struct.item* %100, %struct.index_item* %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %10, align 4
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %11, align 4
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @now, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %108, i32* %109, align 4
  %110 = load %struct.item*, %struct.item** %12, align 8
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %112 = call i32 @set_multiple_rates_item(%struct.item* %110, i32 7, i32* %111)
  %113 = call i32 (...) @clear_cur_wordlist()
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @universal, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Q, align 8
  %118 = load i32, i32* @tag_owner, align 4
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @extract_words(i8* %114, i32 %115, i32 %116, %struct.TYPE_4__* %117, i32 65536, i32 %118, i64 %119)
  store i32 %120, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %140, %103
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %121
  %126 = load %struct.item*, %struct.item** %12, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Q, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Q, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @item_add_word(%struct.item* %126, i32 %132, i32 %138)
  br label %140

140:                                              ; preds = %125
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %121

143:                                              ; preds = %121
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Q, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.item*, %struct.item** %12, align 8
  %147 = getelementptr inbounds %struct.item, %struct.item* %146, i32 0, i32 4
  %148 = load %struct.item*, %struct.item** %12, align 8
  %149 = getelementptr inbounds %struct.item, %struct.item* %148, i32 0, i32 3
  %150 = load %struct.item*, %struct.item** %12, align 8
  %151 = getelementptr inbounds %struct.item, %struct.item* %150, i32 0, i32 2
  %152 = call i32 @evaluate_freq_sqr_sums(%struct.TYPE_4__* %144, i32 %145, i32* %147, i32* %149, i32* %151)
  %153 = load i32, i32* @cur_wordlist_head, align 4
  %154 = load %struct.item*, %struct.item** %12, align 8
  %155 = getelementptr inbounds %struct.item, %struct.item* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 1, i32* %6, align 4
  br label %156

156:                                              ; preds = %143, %94, %44
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fits(i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, i32, i64, i32, i32) #1

declare dso_local %struct.index_item* @get_idx_item(i64) #1

declare dso_local %struct.item* @get_item_f(i64, i32) #1

declare dso_local i32 @item_clear_wordlist(%struct.item*) #1

declare dso_local i32 @move_item_rates(%struct.item*, %struct.index_item*) #1

declare dso_local i32 @set_multiple_rates_item(%struct.item*, i32, i32*) #1

declare dso_local i32 @clear_cur_wordlist(...) #1

declare dso_local i32 @extract_words(i8*, i32, i32, %struct.TYPE_4__*, i32, i32, i64) #1

declare dso_local i32 @item_add_word(%struct.item*, i32, i32) #1

declare dso_local i32 @evaluate_freq_sqr_sums(%struct.TYPE_4__*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
