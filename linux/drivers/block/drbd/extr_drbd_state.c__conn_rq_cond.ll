; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c__conn_rq_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c__conn_rq_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i64, i32 }
%union.drbd_state = type { i32 }

@SS_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@CONN_WD_ST_CHG_OKAY = common dso_local global i32 0, align 4
@SS_CW_SUCCESS = common dso_local global i32 0, align 4
@CONN_WD_ST_CHG_FAIL = common dso_local global i32 0, align 4
@SS_CW_FAILED_BY_PEER = common dso_local global i32 0, align 4
@SS_SUCCESS = common dso_local global i32 0, align 4
@C_WF_REPORT_PARAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, i32, i32)* @_conn_rq_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_conn_rq_cond(%struct.drbd_connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.drbd_state, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %struct.drbd_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  %11 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %7, align 8
  %12 = load i32, i32* @SS_UNKNOWN_ERROR, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @CONN_WD_ST_CHG_OKAY, align 4
  %14 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %15 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %14, i32 0, i32 1
  %16 = call i64 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @SS_CW_SUCCESS, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32, i32* @CONN_WD_ST_CHG_FAIL, align 4
  %22 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %23 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %22, i32 0, i32 1
  %24 = call i64 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @SS_CW_FAILED_BY_PEER, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %30 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @conn_is_valid_transition(%struct.drbd_connection* %29, i32 %31, i32 %33, i32 0)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SS_SUCCESS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %40 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @C_WF_REPORT_PARAMS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %48

46:                                               ; preds = %38, %28
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @conn_is_valid_transition(%struct.drbd_connection*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
