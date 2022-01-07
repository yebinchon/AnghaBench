; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-client.c_copyexec_results_client_set_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-client.c_copyexec_results_client_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_main_transaction_status = type { i32, i32, i64 }
%struct.results_queue_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Results queue full. Stop binlog replaying.\0A\00", align 1
@LEV_COPYEXEC_MAIN_TRANSACTION_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyexec_results_client_set_status(%struct.lev_copyexec_main_transaction_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_copyexec_main_transaction_status*, align 8
  %4 = alloca %struct.results_queue_entry*, align 8
  store %struct.lev_copyexec_main_transaction_status* %0, %struct.lev_copyexec_main_transaction_status** %3, align 8
  %5 = call %struct.results_queue_entry* (...) @results_queue_push()
  store %struct.results_queue_entry* %5, %struct.results_queue_entry** %4, align 8
  %6 = load %struct.results_queue_entry*, %struct.results_queue_entry** %4, align 8
  %7 = icmp eq %struct.results_queue_entry* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = call i32 (...) @log_cur_pos()
  %12 = load %struct.results_queue_entry*, %struct.results_queue_entry** %4, align 8
  %13 = getelementptr inbounds %struct.results_queue_entry, %struct.results_queue_entry* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %3, align 8
  %15 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LEV_COPYEXEC_MAIN_TRANSACTION_STATUS, align 8
  %18 = sub nsw i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 28
  %21 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %3, align 8
  %22 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 268435455
  %25 = or i32 %20, %24
  %26 = load %struct.results_queue_entry*, %struct.results_queue_entry** %4, align 8
  %27 = getelementptr inbounds %struct.results_queue_entry, %struct.results_queue_entry* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %3, align 8
  %29 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.results_queue_entry*, %struct.results_queue_entry** %4, align 8
  %32 = getelementptr inbounds %struct.results_queue_entry, %struct.results_queue_entry* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %10, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.results_queue_entry* @results_queue_push(...) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
