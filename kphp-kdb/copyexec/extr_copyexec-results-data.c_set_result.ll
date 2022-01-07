; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_set_result.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_set_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8*, i8*, i8* }
%struct.lev_copyexec_result_data = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [79 x i8] c"set_result: get_host_by_random_tag (0x%llx) returns NULL. (log_cur_pos: %lld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [113 x i8] c"set_result: H->binlog_pos >= E->binlog_pos, H->binlog_pos = 0x%llx, E->binlog_pos = 0x%llx. (log_cur_pos: %lld)\0A\00", align 1
@now = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.lev_copyexec_result_data*)* @set_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_result(%struct.TYPE_5__* %0, %struct.lev_copyexec_result_data* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.lev_copyexec_result_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.lev_copyexec_result_data* %1, %struct.lev_copyexec_result_data** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %4, align 8
  %9 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.TYPE_5__* @get_host_by_random_tag(i64 %10, i32 0)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %4, align 8
  %16 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (...) @log_cur_pos()
  %19 = sext i32 %18 to i64
  %20 = call i32 (i8*, i64, i64, ...) @kprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %4, align 8
  %28 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %4, align 8
  %37 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %23
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %4, align 8
  %45 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (...) @log_cur_pos()
  %48 = call i32 (i8*, i64, i64, ...) @kprintf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %46, i32 %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %23
  %51 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %4, align 8
  %52 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %50
  %61 = load i8*, i8** @now, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %50
  %65 = load i8*, i8** @now, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i8* %65, i8** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %4, align 8
  %72 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %4, align 8
  %75 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @transaction_set_result(%struct.TYPE_5__* %70, i32 %73, i32 %76)
  ret i32 %77
}

declare dso_local %struct.TYPE_5__* @get_host_by_random_tag(i64, i32) #1

declare dso_local i32 @kprintf(i8*, i64, i64, ...) #1

declare dso_local i32 @log_cur_pos(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @transaction_set_result(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
