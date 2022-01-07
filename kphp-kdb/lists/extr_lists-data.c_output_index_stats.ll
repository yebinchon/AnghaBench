; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_output_index_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_output_index_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%d total lists: %d lists from old index, %d in memory\0A\00", align 1
@NewHeader = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@Header = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@tot_lists = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"%lld total list entries (%.3f average); %d in-memory entries\0A\00", align 1
@new_total_entries = common dso_local global i64 0, align 8
@alloc_large_nodes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"index offsets: list_index=%lld list_data=%lld revlist_data=%lld extra_data=%lld end=%lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"total time: %.04fs = %.04fs + %.04fs + %.04fs (read index + read binlog + generate index)\0A\00", align 1
@idx_end_time = common dso_local global double 0.000000e+00, align 8
@idx_start_time = common dso_local global double 0.000000e+00, align 8
@index_load_time = common dso_local global double 0.000000e+00, align 8
@binlog_load_time = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"used memory: %ld bytes out of %ld\0A\00", align 1
@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_index_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_index_stats() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 0), align 8
  %3 = sext i32 %2 to i64
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Header, i32 0, i32 0), align 4
  %5 = sext i32 %4 to i64
  %6 = load i32, i32* @tot_lists, align 4
  %7 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %3, i64 %5, i32 %6)
  %8 = load i32, i32* @stderr, align 4
  %9 = load i64, i64* @new_total_entries, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 0), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %0
  %13 = load i64, i64* @new_total_entries, align 8
  %14 = sitofp i64 %13 to double
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 0), align 8
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %14, %16
  br label %19

18:                                               ; preds = %0
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi double [ %17, %12 ], [ 0.000000e+00, %18 ]
  %21 = fptosi double %20 to i64
  %22 = load i32, i32* @alloc_large_nodes, align 4
  %23 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %9, i64 %21, i32 %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 1), align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 5), align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 4), align 8
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 3), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 2), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @NewHeader, i32 0, i32 1), align 8
  %35 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i64 %29, i64 %31, i32 %32, i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %26, %19
  %37 = load i32, i32* @stderr, align 4
  %38 = load double, double* @idx_end_time, align 8
  %39 = load double, double* @idx_start_time, align 8
  %40 = fsub double %38, %39
  %41 = load double, double* @index_load_time, align 8
  %42 = fadd double %40, %41
  %43 = load double, double* @binlog_load_time, align 8
  %44 = fadd double %42, %43
  %45 = fptosi double %44 to i64
  %46 = load double, double* @index_load_time, align 8
  %47 = fptosi double %46 to i64
  %48 = load double, double* @binlog_load_time, align 8
  %49 = load double, double* @idx_end_time, align 8
  %50 = load double, double* @idx_start_time, align 8
  %51 = fsub double %49, %50
  %52 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i64 %45, i64 %47, double %48, double %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load i64, i64* @dyn_cur, align 8
  %55 = load i64, i64* @dyn_first, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load i64, i64* @dyn_last, align 8
  %58 = load i64, i64* @dyn_first, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %56, i64 %59)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
