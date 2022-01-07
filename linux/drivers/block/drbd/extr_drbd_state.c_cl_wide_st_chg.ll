; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_cl_wide_st_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_cl_wide_st_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%union.drbd_state = type { i64 }

@C_CONNECTED = common dso_local global i64 0, align 8
@R_PRIMARY = common dso_local global i64 0, align 8
@C_STARTING_SYNC_T = common dso_local global i64 0, align 8
@C_STARTING_SYNC_S = common dso_local global i64 0, align 8
@D_FAILED = common dso_local global i64 0, align 8
@C_DISCONNECTING = common dso_local global i64 0, align 8
@C_VERIFY_S = common dso_local global i64 0, align 8
@C_WF_REPORT_PARAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, i64, i64)* @cl_wide_st_chg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_wide_st_chg(%struct.drbd_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %union.drbd_state, align 8
  %5 = alloca %union.drbd_state, align 8
  %6 = alloca %struct.drbd_device*, align 8
  %7 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i64 %2, i64* %8, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %6, align 8
  %9 = bitcast %union.drbd_state* %4 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @C_CONNECTED, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %3
  %14 = bitcast %union.drbd_state* %5 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @C_CONNECTED, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %13
  %19 = bitcast %union.drbd_state* %4 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @R_PRIMARY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = bitcast %union.drbd_state* %5 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @R_PRIMARY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %90, label %28

28:                                               ; preds = %23, %18
  %29 = bitcast %union.drbd_state* %4 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @C_STARTING_SYNC_T, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = bitcast %union.drbd_state* %5 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @C_STARTING_SYNC_T, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %90, label %38

38:                                               ; preds = %33, %28
  %39 = bitcast %union.drbd_state* %4 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @C_STARTING_SYNC_S, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = bitcast %union.drbd_state* %5 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @C_STARTING_SYNC_S, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %90, label %48

48:                                               ; preds = %43, %38
  %49 = bitcast %union.drbd_state* %4 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @D_FAILED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = bitcast %union.drbd_state* %5 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @D_FAILED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %90, label %58

58:                                               ; preds = %53, %48, %13, %3
  %59 = bitcast %union.drbd_state* %4 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @C_CONNECTED, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = bitcast %union.drbd_state* %5 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @C_DISCONNECTING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %90, label %68

68:                                               ; preds = %63, %58
  %69 = bitcast %union.drbd_state* %4 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @C_CONNECTED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = bitcast %union.drbd_state* %5 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @C_VERIFY_S, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %73, %68
  %79 = bitcast %union.drbd_state* %4 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @C_CONNECTED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = bitcast %union.drbd_state* %5 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @C_WF_REPORT_PARAMS, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ false, %78 ], [ %87, %83 ]
  br label %90

90:                                               ; preds = %88, %73, %63, %53, %43, %33, %23
  %91 = phi i1 [ true, %73 ], [ true, %63 ], [ true, %53 ], [ true, %43 ], [ true, %33 ], [ true, %23 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
