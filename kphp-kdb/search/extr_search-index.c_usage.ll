; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FullVersionStr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1107 x i8] c"usage: %s [-v] [-t] [-A] [-u<username>] [-a<binlog-name>] [-l<log-name>] [-f] <huge-index-file>\0A\09Builds a search index from given binlog file.\0A\09-t\09enable tags (*word @word #word are considered words)\0A\09-A\09enable universal tag\0A\09-S\09use stemmer\0A\09-U\09enable UTF-8 mode\0A\09-W\09enable storing words frequencies in item\0A\09-D\09store in item's date modification time (default: first creation time)\0A\09-H<heap-size>\09sets maximal heap size, e.g. 4g\0A\09-B<heap-size>\09sets maximal binlog size, e.g. 4g\0A\09-P<max_pairs>\09sets maximal number of pairs\0A\09-v\09output statistical and debug information into stderr\0A\09-f\09allow to load snapshots without crc32\0A\09-O\09enable tag owner mode\0A\09-Q\09output hash stats\0A\09-0\09use only Golomb coding (faster decompression)\0A\09-1\09use Interpolative coding (slower decompression)\0A\09\09\09if it consumes less than %.6lf%% memory used by Golomb coding\0A\09-2\09use Interpolative coding if it consumes less memory than Golomb coding\0A\09-x<left subtree size threshold>\09use Redundant Interpolative coding.\0A\09 by default -x%d compression is used.\0A\09-I<filename>\09output to the given text file all item_ids and exit without saving index\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@interpolative_percent = common dso_local global i32 0, align 4
@lss_threshold = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i8*, i8** @FullVersionStr, align 8
  %2 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = load i8*, i8** @progname, align 8
  %4 = load i32, i32* @interpolative_percent, align 4
  %5 = load i32, i32* @lss_threshold, align 4
  %6 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([1107 x i8], [1107 x i8]* @.str.1, i64 0, i64 0), i8* %3, i32 %4, i32 %5)
  %7 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
