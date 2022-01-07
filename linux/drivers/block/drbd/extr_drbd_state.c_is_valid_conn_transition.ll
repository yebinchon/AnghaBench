; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_is_valid_conn_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_is_valid_conn_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_NOTHING_TO_DO = common dso_local global i32 0, align 4
@C_STANDALONE = common dso_local global i32 0, align 4
@C_DISCONNECTING = common dso_local global i32 0, align 4
@SS_ALREADY_STANDALONE = common dso_local global i32 0, align 4
@C_UNCONNECTED = common dso_local global i32 0, align 4
@SS_NEED_CONNECTION = common dso_local global i32 0, align 4
@C_WF_REPORT_PARAMS = common dso_local global i32 0, align 4
@C_CONNECTED = common dso_local global i32 0, align 4
@C_TIMEOUT = common dso_local global i32 0, align 4
@C_TEAR_DOWN = common dso_local global i32 0, align 4
@SS_IN_TRANSIENT_STATE = common dso_local global i32 0, align 4
@SS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @is_valid_conn_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_conn_transition(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @SS_NOTHING_TO_DO, align 4
  store i32 %10, i32* %3, align 4
  br label %71

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @C_STANDALONE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @C_DISCONNECTING, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @SS_ALREADY_STANDALONE, align 4
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %15, %11
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @C_STANDALONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @C_UNCONNECTED, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @SS_NEED_CONNECTION, align 4
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @C_WF_REPORT_PARAMS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @C_CONNECTED, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @SS_NEED_CONNECTION, align 4
  store i32 %40, i32* %3, align 4
  br label %71

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @C_TIMEOUT, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @C_TEAR_DOWN, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @C_UNCONNECTED, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @C_DISCONNECTING, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @SS_IN_TRANSIENT_STATE, align 4
  store i32 %58, i32* %3, align 4
  br label %71

59:                                               ; preds = %53, %49, %45, %41
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @C_DISCONNECTING, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @C_STANDALONE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @SS_IN_TRANSIENT_STATE, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %63, %59
  %70 = load i32, i32* @SS_SUCCESS, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67, %57, %39, %29, %19, %9
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
