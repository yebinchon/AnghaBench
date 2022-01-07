; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_custom_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_custom_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [314 x i8] c"total_index_entries\09%lld\0Atotal_metafiles\09%d\0Ametafiles_loaded\09%d\0Ametafiles_allocated_bytes\09%lld\0Ametafiles_unloaded_LRU\09%lld\0Ametafiles_load_errors\09%lld\0Ametafiles_load_success\09%lld\0Ametafiles_load_timeout\09%lld\0Ametafiles_total_loaded_bytes\09%lld\0Ametafiles_LRU_fails\09%d\0Ametafiles_cache_miss\09%lld\0Ametafiles_cache_ok\09%lld\0A\00", align 1
@tot_records = common dso_local global i32 0, align 4
@metafile_number = common dso_local global i32 0, align 4
@metafiles_loaded = common dso_local global i32 0, align 4
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@metafiles_unload_LRU = common dso_local global i32 0, align 4
@metafiles_load_errors = common dso_local global i32 0, align 4
@metafiles_load_success = common dso_local global i32 0, align 4
@expired_aio_queries = common dso_local global i32 0, align 4
@tot_aio_loaded_bytes = common dso_local global i32 0, align 4
@use_query_fails = common dso_local global i32 0, align 4
@metafiles_cache_miss = common dso_local global i32 0, align 4
@metafiles_cache_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @custom_prepare_stats(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @tot_records, align 4
  %5 = load i32, i32* @metafile_number, align 4
  %6 = load i32, i32* @metafiles_loaded, align 4
  %7 = load i32, i32* @allocated_metafile_bytes, align 4
  %8 = load i32, i32* @metafiles_unload_LRU, align 4
  %9 = load i32, i32* @metafiles_load_errors, align 4
  %10 = load i32, i32* @metafiles_load_success, align 4
  %11 = load i32, i32* @expired_aio_queries, align 4
  %12 = load i32, i32* @tot_aio_loaded_bytes, align 4
  %13 = load i32, i32* @use_query_fails, align 4
  %14 = load i32, i32* @metafiles_cache_miss, align 4
  %15 = load i32, i32* @metafiles_cache_ok, align 4
  %16 = call i32 @sb_printf(i32* %3, i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @sb_printf(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
