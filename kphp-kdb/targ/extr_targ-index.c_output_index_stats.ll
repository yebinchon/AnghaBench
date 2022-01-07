; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_output_index_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_output_index_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.treespace_header = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"binlog loaded in %.3f seconds, binlog position %lld, timestamp %d\0A\00", align 1
@binlog_load_time = common dso_local global double 0.000000e+00, align 8
@log_last_ts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"word directory: %d words, %lld bytes, %d short words\0A\00", align 1
@new_idx_words = common dso_local global i32 0, align 4
@NewHeader = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@new_idx_words_short = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"user data: %d users, max_uid=%d, %lld bytes\0A\00", align 1
@tot_users = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"word data: %d words, %lld bytes, %lld word-user pairs\0A\00", align 1
@word_user_pairs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [92 x i8] c"fresh ads: %d ads, %lld bytes in directory, %lld ad info bytes (%lld of them in userlists)\0A\00", align 1
@new_fresh_ads = common dso_local global i32 0, align 4
@tot_fresh_ads_userlist_bytes = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [92 x i8] c"stale ads: %d ads, %lld bytes in directory, %lld ad info bytes (%lld of them in userlists)\0A\00", align 1
@new_stale_ads = common dso_local global i32 0, align 4
@tot_stale_ads_userlist_bytes = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"loaded %d ancient ads, %lld bytes\0A\00", align 1
@ancient_ads_loaded = common dso_local global i32 0, align 4
@ancient_ads_loaded_bytes = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"total index size %lld bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [114 x i8] c"index generated in %.3f seconds, used %ld dyn_heap bytes, %lld heap bytes for %d userlists, %d+%d treespace ints\0A\00", align 1
@idx_end_time = common dso_local global double 0.000000e+00, align 8
@idx_start_time = common dso_local global double 0.000000e+00, align 8
@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@dyn_top = common dso_local global i64 0, align 8
@tot_userlists_size = common dso_local global i32 0, align 4
@tot_userlists = common dso_local global i32 0, align 4
@AdSpace = common dso_local global i64 0, align 8
@WordSpace = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_index_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_index_stats() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load double, double* @binlog_load_time, align 8
  %3 = call i32 (...) @log_cur_pos()
  %4 = load i32, i32* @log_last_ts, align 4
  %5 = call i32 (i32, i8*, double, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), double %2, i32 %3, i32 %4)
  %6 = load i32, i32* @stderr, align 4
  %7 = load i32, i32* @new_idx_words, align 4
  %8 = sitofp i32 %7 to double
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 6), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 7), align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i32, i32* @new_idx_words_short, align 4
  %13 = call i32 (i32, i8*, double, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), double %8, i64 %11, i32 %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* @tot_users, align 4
  %16 = sitofp i32 %15 to double
  %17 = load i32, i32* @max_uid, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 5), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 6), align 8
  %20 = sub nsw i64 %18, %19
  %21 = call i32 (i32, i8*, double, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), double %16, i32 %17, i64 %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* @new_idx_words, align 4
  %24 = load i32, i32* @new_idx_words_short, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sitofp i32 %25 to double
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 4), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 5), align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i32, i32* @word_user_pairs, align 4
  %31 = call i32 (i32, i8*, double, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), double %26, i64 %29, i32 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* @new_fresh_ads, align 4
  %34 = sitofp i32 %33 to double
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 2), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 4), align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 1), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 3), align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i32, i32* @tot_fresh_ads_userlist_bytes, align 4
  %42 = call i32 (i32, i8*, double, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), double %34, i64 %37, i64 %40, i32 %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* @new_stale_ads, align 4
  %45 = sitofp i32 %44 to double
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 3), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 2), align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 0), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 1), align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i32, i32* @tot_stale_ads_userlist_bytes, align 4
  %53 = call i32 (i32, i8*, double, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0), double %45, i64 %48, i64 %51, i32 %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* @ancient_ads_loaded, align 4
  %56 = sitofp i32 %55 to double
  %57 = load i32, i32* @ancient_ads_loaded_bytes, align 4
  %58 = call i32 (i32, i8*, double, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), double %56, i32 %57)
  %59 = load i32, i32* @stderr, align 4
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NewHeader, i32 0, i32 0), align 8
  %61 = sitofp i64 %60 to double
  %62 = call i32 (i32, i8*, double, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), double %61)
  %63 = load i32, i32* @stderr, align 4
  %64 = load double, double* @idx_end_time, align 8
  %65 = load double, double* @idx_start_time, align 8
  %66 = fsub double %64, %65
  %67 = load i64, i64* @dyn_cur, align 8
  %68 = load i64, i64* @dyn_first, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* @dyn_last, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64, i64* @dyn_top, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i32, i32* @tot_userlists_size, align 4
  %75 = shl i32 %74, 2
  %76 = load i32, i32* @tot_userlists, align 4
  %77 = load i64, i64* @AdSpace, align 8
  %78 = inttoptr i64 %77 to %struct.treespace_header*
  %79 = getelementptr inbounds %struct.treespace_header, %struct.treespace_header* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* @WordSpace, align 8
  %82 = inttoptr i64 %81 to %struct.treespace_header*
  %83 = getelementptr inbounds %struct.treespace_header, %struct.treespace_header* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, double, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.8, i64 0, i64 0), double %66, i64 %73, i32 %75, i32 %76, i32 %80, i32 %84)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, ...) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
