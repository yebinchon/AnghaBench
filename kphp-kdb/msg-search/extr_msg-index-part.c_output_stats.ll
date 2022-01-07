; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_output_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_output_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%d messages read, %d analyzed belonging to %d users\0A\00", align 1
@msgs_read = common dso_local global i32 0, align 4
@msgs_analyzed = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"date adjusted %d times\0A\00", align 1
@date_adj = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"username data bytes: %d used out of %ld (%d%%)\0A\00", align 1
@ui_bytes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"messages with unknown correspondents: %lld out of %lld (%d%%)\0A\00", align 1
@tot_bad_senders = common dso_local global i32 0, align 4
@tot_known_senders = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"imported username hashes: %lld out of %lld (%d%%)\0A\00", align 1
@tot_sender_hashes = common dso_local global i32 0, align 4
@tot_Pc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"messages buffer memory bytes: total %ld, used %ld (%d%%)\0A\00", align 1
@HEAP_SIZE = common dso_local global i32 0, align 4
@heap_a = common dso_local global i32 0, align 4
@Heap = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"pairs:\09total %lld, maximal usage %d of %ld (%d%%) for user %d\0A\00", align 1
@max_Pc = common dso_local global i32 0, align 4
@MAX_PAIRS = common dso_local global i32 0, align 4
@max_Pc_user = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [64 x i8] c"hashes:\09total %lld, maximal usage %d of %ld (%d%%) for user %d\0A\00", align 1
@tot_Ps = common dso_local global i32 0, align 4
@max_Ps = common dso_local global i32 0, align 4
@max_Ps_user = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"data:\09total %lld, maximal usage %d of %ld (%d%%) for user %d\0A\00", align 1
@tot_Dc = common dso_local global i32 0, align 4
@max_Dc = common dso_local global i32 0, align 4
@MAX_DATA = common dso_local global i32 0, align 4
@max_Dc_user = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_stats() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* @msgs_read, align 4
  %3 = load i32, i32* @msgs_analyzed, align 4
  %4 = load i32, i32* @tot_users, align 4
  %5 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @stderr, align 4
  %7 = load i32, i32* @date_adj, align 4
  %8 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @ui_bytes, align 4
  %11 = load i32, i32* @ui_bytes, align 4
  %12 = call i32 @percent(i32 %11, i32 4)
  %13 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %10, i64 4, i32 %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* @tot_bad_senders, align 4
  %16 = load i32, i32* @tot_bad_senders, align 4
  %17 = load i32, i32* @tot_known_senders, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @tot_bad_senders, align 4
  %20 = load i32, i32* @tot_bad_senders, align 4
  %21 = load i32, i32* @tot_known_senders, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @percent(i32 %19, i32 %22)
  %24 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %15, i32 %18, i32 %23)
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* @tot_sender_hashes, align 4
  %27 = load i32, i32* @tot_Pc, align 4
  %28 = load i32, i32* @tot_sender_hashes, align 4
  %29 = load i32, i32* @tot_Pc, align 4
  %30 = call i32 @percent(i32 %28, i32 %29)
  %31 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* @HEAP_SIZE, align 4
  %34 = load i32, i32* @heap_a, align 4
  %35 = load i32, i32* @Heap, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* @heap_a, align 4
  %39 = load i32, i32* @Heap, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* @HEAP_SIZE, align 4
  %42 = call i32 @percent(i32 %40, i32 %41)
  %43 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %33, i64 %37, i32 %42)
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* @tot_Pc, align 4
  %46 = load i32, i32* @max_Pc, align 4
  %47 = load i32, i32* @MAX_PAIRS, align 4
  %48 = load i32, i32* @max_Pc, align 4
  %49 = load i32, i32* @MAX_PAIRS, align 4
  %50 = call i32 @percent(i32 %48, i32 %49)
  %51 = load i32, i32* @max_Pc_user, align 4
  %52 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32 %50, i32 %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* @tot_Ps, align 4
  %55 = load i32, i32* @max_Ps, align 4
  %56 = load i32, i32* @MAX_PAIRS, align 4
  %57 = load i32, i32* @max_Ps, align 4
  %58 = load i32, i32* @MAX_PAIRS, align 4
  %59 = call i32 @percent(i32 %57, i32 %58)
  %60 = load i32, i32* @max_Ps_user, align 4
  %61 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %54, i32 %55, i32 %56, i32 %59, i32 %60)
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* @tot_Dc, align 4
  %64 = load i32, i32* @max_Dc, align 4
  %65 = load i32, i32* @MAX_DATA, align 4
  %66 = load i32, i32* @max_Dc, align 4
  %67 = load i32, i32* @MAX_DATA, align 4
  %68 = call i32 @percent(i32 %66, i32 %67)
  %69 = load i32, i32* @max_Dc_user, align 4
  %70 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %63, i32 %64, i32 %65, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @percent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
