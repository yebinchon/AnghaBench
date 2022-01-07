; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_search_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_search_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32*, i32 }
%struct.connection = type { i32 }
%struct.TYPE_6__ = type { i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"malloc_memory_used\09%lld\0A\00", align 1
@SB_BINLOG = common dso_local global i32 0, align 4
@SB_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"index_items\09%d\0Aindex_words\09%d\0Aindex_hapax_legomena\09%d\0Aindex_items_with_hash\09%d\0Aindex_data_bytes\09%ld\0A\00", align 1
@idx_items = common dso_local global i32 0, align 4
@idx_words = common dso_local global i32 0, align 4
@idx_hapax_legomena = common dso_local global i32 0, align 4
@idx_items_with_hash = common dso_local global i32 0, align 4
@idx_bytes = common dso_local global i32 0, align 4
@Header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"%s\09%lld(%.6lf%%)=%lld(%.6lf%%)+%lld(%.6lf%%)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s\09%lld=%lld+%lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"index_compression_methods\09%s+%s\0Aleft_subtree_size_threshold\09%d\0A\00", align 1
@search_queries = common dso_local global i32 0, align 4
@extended_search_queries = common dso_local global i32 0, align 4
@relevance_search_queries = common dso_local global i32 0, align 4
@delete_queries = common dso_local global i32 0, align 4
@delete_hash_queries = common dso_local global i32 0, align 4
@update_queries = common dso_local global i32 0, align 4
@minor_update_queries = common dso_local global i32 0, align 4
@increment_queries = common dso_local global i32 0, align 4
@delete_items_with_hash_queries = common dso_local global i32 0, align 4
@hashlist_assign_max_queries = common dso_local global i32 0, align 4
@change_many_rates_queries = common dso_local global i32 0, align 4
@add_tags_queries = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [168 x i8] c"items\09%d\0Aitems_marked_as_deleted\09%d\0Aitems_freed\09%d\0Aindex_items_deleted\09%d\0Atree_nodes_allocated\09%d\0Atree_nodes_unused\09%d\0Arebuild_hashmap_calls\09%lld\0Alast_search_query\09%s\0A\00", align 1
@tot_items = common dso_local global i32 0, align 4
@del_items = common dso_local global i32 0, align 4
@tot_freed_deleted_items = common dso_local global i32 0, align 4
@mod_items = common dso_local global i32 0, align 4
@alloc_tree_nodes = common dso_local global i32 0, align 4
@free_tree_nodes = common dso_local global i32 0, align 4
@rebuild_hashmap_calls = common dso_local global i32 0, align 4
@last_search_query = common dso_local global i32 0, align 4
@delete_hash_query_items = common dso_local global i32 0, align 4
@assign_max_set_rate_calls = common dso_local global i32 0, align 4
@change_multiple_rates_set_rate_calls = common dso_local global i32 0, align 4
@worst_delete_items_with_hash_time = common dso_local global i32 0, align 4
@worst_hashlist_assign_max_time = common dso_local global i32 0, align 4
@worst_change_many_rates_time = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i32 0, align 4
@universal = common dso_local global i32 0, align 4
@hashtags_enabled = common dso_local global i32 0, align 4
@wordfreqs_enabled = common dso_local global i32 0, align 4
@import_only_mode = common dso_local global i32 0, align 4
@stemmer_version = common dso_local global i32 0, align 4
@word_split_version = common dso_local global i32 0, align 4
@word_split_utf8 = common dso_local global i32 0, align 4
@tag_owner = common dso_local global i32 0, align 4
@listcomp_version = common dso_local global i32 0, align 4
@creation_date = common dso_local global i32 0, align 4
@delete_many_rates_mask = common dso_local global i32 0, align 4
@return_empty_record_on_error = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"version\09%s\0A\00", align 1
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = load i32, i32* @stats_buff, align 4
  %11 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %12 = call i32 @sb_prepare(%struct.TYPE_6__* %3, %struct.connection* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %14 = call i32 @sb_memory(%struct.TYPE_6__* %3, i32 %13)
  %15 = call i32 (...) @get_malloc_memory_used()
  %16 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SB_BINLOG, align 4
  %18 = load i32, i32* @SB_INDEX, align 4
  %19 = load i32, i32* @idx_items, align 4
  %20 = load i32, i32* @idx_words, align 4
  %21 = load i32, i32* @idx_hapax_legomena, align 4
  %22 = load i32, i32* @idx_items_with_hash, align 4
  %23 = load i32, i32* @idx_bytes, align 4
  %24 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %93, %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %96

35:                                               ; preds = %32
  %36 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 8
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 2, %37
  %39 = add nsw i32 %38, 0
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %36, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %6, align 8
  %43 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 8
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 2, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %43, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %35
  %56 = load i64, i64* %5, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @list_get_compression_method_description(i32 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = sitofp i64 %62 to double
  %64 = fmul double 1.000000e+02, %63
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @safe_div(double %64, i64 %65)
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sitofp i64 %68 to double
  %70 = fmul double 1.000000e+02, %69
  %71 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @safe_div(double %70, i64 %73)
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sitofp i64 %76 to double
  %78 = fmul double 1.000000e+02, %77
  %79 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @safe_div(double %78, i64 %81)
  %83 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %60, i64 %61, i32 %66, i64 %67, i32 %74, i64 %75, i32 %82)
  br label %91

84:                                               ; preds = %55
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @list_get_compression_method_description(i32 %85)
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %86, i64 %87, i64 %88, i64 %89)
  br label %91

91:                                               ; preds = %84, %58
  br label %92

92:                                               ; preds = %91, %35
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %32

96:                                               ; preds = %32
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 1), align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @list_get_compression_method_description(i32 %99)
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 1), align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @list_get_compression_method_description(i32 %103)
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 2), align 8
  %106 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %104, i32 %105)
  %107 = load i32, i32* @search_queries, align 4
  %108 = call i32 @SB_PRINT_QUERIES(i32 %107)
  %109 = load i32, i32* @extended_search_queries, align 4
  %110 = call i32 @SB_PRINT_QUERIES(i32 %109)
  %111 = load i32, i32* @relevance_search_queries, align 4
  %112 = call i32 @SB_PRINT_QUERIES(i32 %111)
  %113 = load i32, i32* @delete_queries, align 4
  %114 = call i32 @SB_PRINT_QUERIES(i32 %113)
  %115 = load i32, i32* @delete_hash_queries, align 4
  %116 = call i32 @SB_PRINT_QUERIES(i32 %115)
  %117 = load i32, i32* @update_queries, align 4
  %118 = call i32 @SB_PRINT_QUERIES(i32 %117)
  %119 = load i32, i32* @minor_update_queries, align 4
  %120 = call i32 @SB_PRINT_QUERIES(i32 %119)
  %121 = load i32, i32* @increment_queries, align 4
  %122 = call i32 @SB_PRINT_QUERIES(i32 %121)
  %123 = load i32, i32* @delete_items_with_hash_queries, align 4
  %124 = call i32 @SB_PRINT_QUERIES(i32 %123)
  %125 = load i32, i32* @hashlist_assign_max_queries, align 4
  %126 = call i32 @SB_PRINT_QUERIES(i32 %125)
  %127 = load i32, i32* @change_many_rates_queries, align 4
  %128 = call i32 @SB_PRINT_QUERIES(i32 %127)
  %129 = load i32, i32* @add_tags_queries, align 4
  %130 = call i32 @SB_PRINT_QUERIES(i32 %129)
  %131 = load i32, i32* @tot_items, align 4
  %132 = load i32, i32* @del_items, align 4
  %133 = load i32, i32* @tot_freed_deleted_items, align 4
  %134 = load i32, i32* @mod_items, align 4
  %135 = load i32, i32* @alloc_tree_nodes, align 4
  %136 = load i32, i32* @free_tree_nodes, align 4
  %137 = load i32, i32* @rebuild_hashmap_calls, align 4
  %138 = load i32, i32* @last_search_query, align 4
  %139 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.5, i64 0, i64 0), i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* @delete_hash_query_items, align 4
  %141 = call i32 @SB_PRINT_I64(i32 %140)
  %142 = load i32, i32* @assign_max_set_rate_calls, align 4
  %143 = call i32 @SB_PRINT_I64(i32 %142)
  %144 = load i32, i32* @change_multiple_rates_set_rate_calls, align 4
  %145 = call i32 @SB_PRINT_I64(i32 %144)
  %146 = load i32, i32* @worst_delete_items_with_hash_time, align 4
  %147 = call i32 @SB_PRINT_TIME(i32 %146)
  %148 = load i32, i32* @worst_hashlist_assign_max_time, align 4
  %149 = call i32 @SB_PRINT_TIME(i32 %148)
  %150 = load i32, i32* @worst_change_many_rates_time, align 4
  %151 = call i32 @SB_PRINT_TIME(i32 %150)
  %152 = load i32, i32* @use_stemmer, align 4
  %153 = call i32 @SB_PRINT_I32(i32 %152)
  %154 = load i32, i32* @universal, align 4
  %155 = call i32 @SB_PRINT_I32(i32 %154)
  %156 = load i32, i32* @hashtags_enabled, align 4
  %157 = call i32 @SB_PRINT_I32(i32 %156)
  %158 = load i32, i32* @wordfreqs_enabled, align 4
  %159 = call i32 @SB_PRINT_I32(i32 %158)
  %160 = load i32, i32* @import_only_mode, align 4
  %161 = call i32 @SB_PRINT_I32(i32 %160)
  %162 = load i32, i32* @stemmer_version, align 4
  %163 = call i32 @SB_PRINT_I32(i32 %162)
  %164 = load i32, i32* @word_split_version, align 4
  %165 = call i32 @SB_PRINT_I32(i32 %164)
  %166 = load i32, i32* @word_split_utf8, align 4
  %167 = call i32 @SB_PRINT_I32(i32 %166)
  %168 = load i32, i32* @tag_owner, align 4
  %169 = call i32 @SB_PRINT_I32(i32 %168)
  %170 = load i32, i32* @listcomp_version, align 4
  %171 = call i32 @SB_PRINT_I32(i32 %170)
  %172 = load i32, i32* @creation_date, align 4
  %173 = call i32 @SB_PRINT_I32(i32 %172)
  %174 = load i32, i32* @delete_many_rates_mask, align 4
  %175 = call i32 @SB_PRINT_I32(i32 %174)
  %176 = load i32, i32* @return_empty_record_on_error, align 4
  %177 = call i32 @SB_PRINT_I32(i32 %176)
  %178 = load i32, i32* @FullVersionStr, align 4
  %179 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  ret i32 %181
}

declare dso_local i32 @sb_prepare(%struct.TYPE_6__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @get_malloc_memory_used(...) #1

declare dso_local i32 @list_get_compression_method_description(i32) #1

declare dso_local i32 @safe_div(double, i64) #1

declare dso_local i32 @SB_PRINT_QUERIES(i32) #1

declare dso_local i32 @SB_PRINT_I64(i32) #1

declare dso_local i32 @SB_PRINT_TIME(i32) #1

declare dso_local i32 @SB_PRINT_I32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
