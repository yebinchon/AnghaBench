; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-engine.c_searchy_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-engine.c_searchy_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.connection = type { i32 }
%struct.TYPE_6__ = type { i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"malloc_memory_used\09%lld\0A\00", align 1
@SB_BINLOG = common dso_local global i32 0, align 4
@SB_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"index_items\09%d\0Aindex_words\09%d\0Aindex_data_bytes\09%lld\0A\00", align 1
@idx_items = common dso_local global i32 0, align 4
@idx_words = common dso_local global i32 0, align 4
@idx_bytes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"left_subtree_size_threshold\09%d\0A\00", align 1
@Header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@search_queries = common dso_local global i32 0, align 4
@increment_queries = common dso_local global i32 0, align 4
@set_rate_queries = common dso_local global i32 0, align 4
@delete_item_queries = common dso_local global i32 0, align 4
@set_item_queries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [120 x i8] c"items\09%d\0Aitems_marked_as_deleted\09%d\0Aitems_freed\09%d\0Aindex_items_deleted\09%d\0Atree_nodes_allocated\09%d\0Atree_nodes_unused\09%d\0A\00", align 1
@tot_items = common dso_local global i32 0, align 4
@del_items = common dso_local global i32 0, align 4
@tot_freed_deleted_items = common dso_local global i32 0, align 4
@mod_items = common dso_local global i32 0, align 4
@alloc_tree_nodes = common dso_local global i32 0, align 4
@free_tree_nodes = common dso_local global i32 0, align 4
@tree_positions_bytes = common dso_local global i32 0, align 4
@decoder_positions_max_capacity = common dso_local global i32 0, align 4
@max_search_query_memory = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i32 0, align 4
@universal = common dso_local global i32 0, align 4
@hashtags_enabled = common dso_local global i32 0, align 4
@wordfreqs_enabled = common dso_local global i32 0, align 4
@stemmer_version = common dso_local global i32 0, align 4
@word_split_version = common dso_local global i32 0, align 4
@word_split_utf8 = common dso_local global i32 0, align 4
@tag_owner = common dso_local global i32 0, align 4
@listcomp_version = common dso_local global i32 0, align 4
@creation_date = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"version\09%s\0A\00", align 1
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @searchy_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = load i32, i32* @stats_buff, align 4
  %6 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %7 = call i32 @sb_prepare(%struct.TYPE_6__* %3, %struct.connection* %4, i32 %5, i32 %6)
  %8 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %9 = call i32 @sb_memory(%struct.TYPE_6__* %3, i32 %8)
  %10 = call i32 (...) @get_malloc_memory_used()
  %11 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @SB_BINLOG, align 4
  %13 = load i32, i32* @SB_INDEX, align 4
  %14 = load i32, i32* @idx_items, align 4
  %15 = load i32, i32* @idx_words, align 4
  %16 = load i32, i32* @idx_bytes, align 4
  %17 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %19 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @search_queries, align 4
  %21 = call i32 @SB_PRINT_QUERIES(i32 %20)
  %22 = load i32, i32* @increment_queries, align 4
  %23 = call i32 @SB_PRINT_QUERIES(i32 %22)
  %24 = load i32, i32* @set_rate_queries, align 4
  %25 = call i32 @SB_PRINT_QUERIES(i32 %24)
  %26 = load i32, i32* @delete_item_queries, align 4
  %27 = call i32 @SB_PRINT_QUERIES(i32 %26)
  %28 = load i32, i32* @set_item_queries, align 4
  %29 = call i32 @SB_PRINT_QUERIES(i32 %28)
  %30 = load i32, i32* @tot_items, align 4
  %31 = load i32, i32* @del_items, align 4
  %32 = load i32, i32* @tot_freed_deleted_items, align 4
  %33 = load i32, i32* @mod_items, align 4
  %34 = load i32, i32* @alloc_tree_nodes, align 4
  %35 = load i32, i32* @free_tree_nodes, align 4
  %36 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @tree_positions_bytes, align 4
  %38 = call i32 @SB_PRINT_I64(i32 %37)
  %39 = load i32, i32* @decoder_positions_max_capacity, align 4
  %40 = call i32 @SB_PRINT_I32(i32 %39)
  %41 = load i32, i32* @max_search_query_memory, align 4
  %42 = call i32 @SB_PRINT_I32(i32 %41)
  %43 = load i32, i32* @use_stemmer, align 4
  %44 = call i32 @SB_PRINT_I32(i32 %43)
  %45 = load i32, i32* @universal, align 4
  %46 = call i32 @SB_PRINT_I32(i32 %45)
  %47 = load i32, i32* @hashtags_enabled, align 4
  %48 = call i32 @SB_PRINT_I32(i32 %47)
  %49 = load i32, i32* @wordfreqs_enabled, align 4
  %50 = call i32 @SB_PRINT_I32(i32 %49)
  %51 = load i32, i32* @stemmer_version, align 4
  %52 = call i32 @SB_PRINT_I32(i32 %51)
  %53 = load i32, i32* @word_split_version, align 4
  %54 = call i32 @SB_PRINT_I32(i32 %53)
  %55 = load i32, i32* @word_split_utf8, align 4
  %56 = call i32 @SB_PRINT_I32(i32 %55)
  %57 = load i32, i32* @tag_owner, align 4
  %58 = call i32 @SB_PRINT_I32(i32 %57)
  %59 = load i32, i32* @listcomp_version, align 4
  %60 = call i32 @SB_PRINT_I32(i32 %59)
  %61 = load i32, i32* @creation_date, align 4
  %62 = call i32 @SB_PRINT_I32(i32 %61)
  %63 = load i32, i32* @FullVersionStr, align 4
  %64 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @sb_printf(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  ret i32 %66
}

declare dso_local i32 @sb_prepare(%struct.TYPE_6__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @get_malloc_memory_used(...) #1

declare dso_local i32 @SB_PRINT_QUERIES(i32) #1

declare dso_local i32 @SB_PRINT_I64(i32) #1

declare dso_local i32 @SB_PRINT_I32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
