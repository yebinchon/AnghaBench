; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_output_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_output_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\0Amessages purged from binlog: %d\0A\00", align 1
@purged_msgs_cnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"messages imported from binlog: %d\0A\00", align 1
@tot_binlog_messages = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"pairs imported from binlog: %lld\0A\00", align 1
@tot_imported_pairs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"pairs dropped from old data: %lld\0A\00", align 1
@tot_dropped_pairs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"total pairs output: %lld\0A\00", align 1
@tot_Dc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"old users dropped: %d\0A\00", align 1
@users_dropped = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"new users added: %d\0A\00", align 1
@users_added = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"maximal pairs used: %d out of %ld (%d%%) for user %d\0A\00", align 1
@max_Dc = common dso_local global i32 0, align 4
@MAX_DATA = common dso_local global i32 0, align 4
@max_Dc_user = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"total hashes output: %lld\0A\00", align 1
@tot_Qc = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"maximal hashes used: %d out of %ld (%d%%) for user %d\0A\00", align 1
@max_Qc = common dso_local global i32 0, align 4
@MAX_HASHES = common dso_local global i32 0, align 4
@max_Qc_user = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"output users: %d out of %ld (%d%%)\0A\00", align 1
@M_cnt = common dso_local global i32 0, align 4
@MAX_METAINDEX_USERS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"binlog size: old %lld, new %lld\0A\00", align 1
@fsize = common dso_local global i64* null, align 8
@log_wpos = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [37 x i8] c"huge index size: old %lld, new %lld\0A\00", align 1
@wpos = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"used time: %ld seconds\0A\0A\00", align 1
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_stats() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* @purged_msgs_cnt, align 4
  %3 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = load i32, i32* @tot_binlog_messages, align 4
  %6 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = load i32, i32* @tot_imported_pairs, align 4
  %9 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = load i32, i32* @tot_dropped_pairs, align 4
  %12 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* @tot_Dc, align 4
  %15 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* @users_dropped, align 4
  %18 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* @users_added, align 4
  %21 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* @max_Dc, align 4
  %24 = load i32, i32* @MAX_DATA, align 4
  %25 = load i32, i32* @max_Dc, align 4
  %26 = load i32, i32* @MAX_DATA, align 4
  %27 = call i32 @percent(i32 %25, i32 %26)
  %28 = load i32, i32* @max_Dc_user, align 4
  %29 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %23, i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* @tot_Qc, align 4
  %32 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* @max_Qc, align 4
  %35 = load i32, i32* @MAX_HASHES, align 4
  %36 = load i32, i32* @max_Qc, align 4
  %37 = load i32, i32* @MAX_HASHES, align 4
  %38 = call i32 @percent(i32 %36, i32 %37)
  %39 = load i32, i32* @max_Qc_user, align 4
  %40 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %34, i32 %35, i32 %38, i32 %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* @M_cnt, align 4
  %43 = load i32, i32* @MAX_METAINDEX_USERS, align 4
  %44 = load i32, i32* @M_cnt, align 4
  %45 = load i32, i32* @MAX_METAINDEX_USERS, align 4
  %46 = call i32 @percent(i32 %44, i32 %45)
  %47 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %42, i32 %43, i32 %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = load i64*, i64** @fsize, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* @log_wpos, align 8
  %54 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %52, i64 %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = load i64*, i64** @fsize, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* @wpos, align 8
  %61 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %59, i64 %60)
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 @time(i32 0)
  %64 = load i32, i32* @start_time, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @percent(i32, i32) #1

declare dso_local i32 @time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
