; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_do_set_result.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_do_set_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.lev_copyexec_result_data = type { i32, i32, i64, i32 }

@COPYEXEC_ERR_DISCONNECT = common dso_local global i32 0, align 4
@COPYEXEC_ERR_OLD_RESULT = common dso_local global i32 0, align 4
@LEV_COPYEXEC_RESULT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_result(%struct.connection* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.lev_copyexec_result_data*, align 8
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.connection*, %struct.connection** %6, align 8
  %13 = call %struct.TYPE_4__* @get_host_by_connection(%struct.connection* %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @COPYEXEC_ERR_DISCONNECT, align 4
  store i32 %17, i32* %5, align 4
  br label %46

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @COPYEXEC_ERR_OLD_RESULT, align 4
  store i32 %25, i32* %5, align 4
  br label %46

26:                                               ; preds = %18
  %27 = load i32, i32* @LEV_COPYEXEC_RESULT_DATA, align 4
  %28 = call %struct.lev_copyexec_result_data* @alloc_log_event(i32 %27, i32 24, i32 0)
  store %struct.lev_copyexec_result_data* %28, %struct.lev_copyexec_result_data** %11, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %11, align 8
  %33 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %11, align 8
  %36 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %11, align 8
  %39 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %11, align 8
  %42 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %11, align 8
  %45 = call i32 @set_result(%struct.TYPE_4__* %43, %struct.lev_copyexec_result_data* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %26, %24, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_4__* @get_host_by_connection(%struct.connection*) #1

declare dso_local %struct.lev_copyexec_result_data* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_result(%struct.TYPE_4__*, %struct.lev_copyexec_result_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
