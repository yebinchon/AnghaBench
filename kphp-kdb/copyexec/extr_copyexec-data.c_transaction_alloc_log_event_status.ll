; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_alloc_log_event_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_alloc_log_event_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_main_transaction_status = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@LEV_COPYEXEC_MAIN_TRANSACTION_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lev_copyexec_main_transaction_status* (%struct.TYPE_3__*)* @transaction_alloc_log_event_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lev_copyexec_main_transaction_status* @transaction_alloc_log_event_status(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_copyexec_main_transaction_status*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 4, i32* %3, align 4
  %6 = load i64, i64* @LEV_COPYEXEC_MAIN_TRANSACTION_STATUS, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.lev_copyexec_main_transaction_status* @alloc_log_event(i64 %10, i32 4, i32 %13)
  store %struct.lev_copyexec_main_transaction_status* %14, %struct.lev_copyexec_main_transaction_status** %4, align 8
  %15 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %4, align 8
  %16 = bitcast %struct.lev_copyexec_main_transaction_status* %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = call i32 @memset(i8* %18, i32 0, i32 -4)
  %20 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %4, align 8
  ret %struct.lev_copyexec_main_transaction_status* %20
}

declare dso_local %struct.lev_copyexec_main_transaction_status* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
