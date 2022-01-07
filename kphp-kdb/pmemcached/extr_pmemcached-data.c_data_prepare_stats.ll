; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_data_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_data_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [240 x i8] c"limit_entries_memory\09%lld\0Alimit_cache_memory\09%lld\0Alimit_metafiles_memory\09%lld\0Acache_number\09%d\0Acache_free\09%d\0Acache_size\09%lld\0Acache_ok\09%lld\0Acache_updates\09%lld\0Acache_miss\09%lld\0Acache_deletes\09%lld\0Aentry_number\09%d\0Aentry_size\09%lld\0Ainit_size\09%lld\0A\00", align 1
@memory_for_entries = common dso_local global i32 0, align 4
@memory_for_cache = common dso_local global i32 0, align 4
@memory_for_metafiles = common dso_local global i32 0, align 4
@HASH_TABLE_SIZE = common dso_local global i64 0, align 8
@cache_free = common dso_local global i64 0, align 8
@cache_size = common dso_local global i32 0, align 4
@cache_ok = common dso_local global i32 0, align 4
@cache_update = common dso_local global i32 0, align 4
@cache_miss = common dso_local global i32 0, align 4
@cache_deletes = common dso_local global i32 0, align 4
@entry_memory = common dso_local global i32 0, align 4
@init_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @data_prepare_stats(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @memory_for_entries, align 4
  %5 = load i32, i32* @memory_for_cache, align 4
  %6 = load i32, i32* @memory_for_metafiles, align 4
  %7 = load i64, i64* @HASH_TABLE_SIZE, align 8
  %8 = load i64, i64* @cache_free, align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i64, i64* @cache_free, align 8
  %11 = load i32, i32* @cache_size, align 4
  %12 = load i32, i32* @cache_ok, align 4
  %13 = load i32, i32* @cache_update, align 4
  %14 = load i32, i32* @cache_miss, align 4
  %15 = load i32, i32* @cache_deletes, align 4
  %16 = call i32 (...) @get_entry_cnt()
  %17 = load i32, i32* @entry_memory, align 4
  %18 = load i32, i32* @init_memory, align 4
  %19 = call i32 @sb_printf(i32* %3, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i64 %9, i64 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @sb_printf(i32*, i8*, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_entry_cnt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
