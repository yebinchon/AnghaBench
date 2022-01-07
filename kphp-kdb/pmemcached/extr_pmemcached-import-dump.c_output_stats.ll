; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-import-dump.c_output_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-import-dump.c_output_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"read: %lld bytes, %d records read\0Awritten: %lld bytes\0Astored keys: %lld\0A\00", align 1
@rd_bytes = common dso_local global i32 0, align 4
@line_no = common dso_local global i64 0, align 8
@wr_bytes = common dso_local global i32 0, align 4
@total_keys = common dso_local global i32 0, align 4
@total_urls_len = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [93 x i8] c"average url length: %.3lf\0Aaverage url hash length: %.3lf\0Aaverage id in base62 length: %.3lf\0A\00", align 1
@total_urls_hash_len = common dso_local global i64 0, align 8
@total_base62_number_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_stats() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* @rd_bytes, align 4
  %3 = sitofp i32 %2 to double
  %4 = load i64, i64* @line_no, align 8
  %5 = sitofp i64 %4 to double
  %6 = load i32, i32* @wr_bytes, align 4
  %7 = sitofp i32 %6 to double
  %8 = load i32, i32* @total_keys, align 4
  %9 = call i32 (i32, i8*, double, double, double, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), double %3, double %5, double %7, i32 %8)
  %10 = load i64, i64* @total_urls_len, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %0
  %13 = load i64, i64* @line_no, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32, i32* @stderr, align 4
  %17 = load i64, i64* @total_urls_len, align 8
  %18 = sitofp i64 %17 to double
  %19 = load i64, i64* @line_no, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %18, %20
  %22 = load i64, i64* @total_urls_hash_len, align 8
  %23 = sitofp i64 %22 to double
  %24 = load i64, i64* @line_no, align 8
  %25 = sitofp i64 %24 to double
  %26 = fdiv double %23, %25
  %27 = load i64, i64* @total_base62_number_len, align 8
  %28 = sitofp i64 %27 to double
  %29 = load i64, i64* @line_no, align 8
  %30 = sitofp i64 %29 to double
  %31 = fdiv double %28, %30
  %32 = call i32 (i32, i8*, double, double, double, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), double %21, double %26, double %31)
  br label %33

33:                                               ; preds = %15, %12, %0
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, double, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
