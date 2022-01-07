; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_cluster_cron.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_cluster_cron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@NODE_ID = common dso_local global i32 0, align 4
@ID_MASK = common dso_local global i32 0, align 4
@LAST_CHILDREN_GET_TIME = common dso_local global i64 0, align 8
@CHILDREN_RENEW_TIME = common dso_local global i64 0, align 8
@precise_now = common dso_local global i64 0, align 8
@JOIN_RENEW_TIME = common dso_local global i64 0, align 8
@main_targ = common dso_local global i32 0, align 4
@LAST_STATS_TIME = common dso_local global i64 0, align 8
@STATS_RENEW_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cluster_cron() #0 {
  %1 = alloca %struct.connection*, align 8
  %2 = alloca %struct.connection*, align 8
  %3 = load i32, i32* @NODE_ID, align 4
  %4 = load i32, i32* @ID_MASK, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i64, i64* @LAST_CHILDREN_GET_TIME, align 8
  %9 = load i64, i64* @CHILDREN_RENEW_TIME, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* @precise_now, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %7, %0
  %14 = load i32, i32* @NODE_ID, align 4
  %15 = load i32, i32* @ID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* @LAST_CHILDREN_GET_TIME, align 8
  %20 = load i64, i64* @JOIN_RENEW_TIME, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* @precise_now, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18, %7
  %25 = load i32, i32* @main_targ, align 4
  %26 = call %struct.connection* @get_target_connection(i32 %25)
  store %struct.connection* %26, %struct.connection** %1, align 8
  %27 = load %struct.connection*, %struct.connection** %1, align 8
  %28 = icmp ne %struct.connection* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i64, i64* @precise_now, align 8
  store i64 %30, i64* @LAST_CHILDREN_GET_TIME, align 8
  %31 = load %struct.connection*, %struct.connection** %1, align 8
  %32 = call i32 @rpc_send_join(%struct.connection* %31)
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %33, %18, %13
  %35 = load i32, i32* @NODE_ID, align 4
  %36 = load i32, i32* @ID_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i64, i64* @LAST_STATS_TIME, align 8
  %41 = load i64, i64* @STATS_RENEW_TIME, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @precise_now, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* @main_targ, align 4
  %47 = call %struct.connection* @get_target_connection(i32 %46)
  store %struct.connection* %47, %struct.connection** %2, align 8
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  %49 = icmp ne %struct.connection* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* @precise_now, align 8
  store i64 %51, i64* @LAST_STATS_TIME, align 8
  %52 = load %struct.connection*, %struct.connection** %2, align 8
  %53 = call i32 @rpc_send_stats(%struct.connection* %52)
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %39, %34
  %56 = call i32 (...) @send_friends_binlog_position()
  %57 = call i32 @binlog_flush(i32 0)
  ret void
}

declare dso_local %struct.connection* @get_target_connection(i32) #1

declare dso_local i32 @rpc_send_join(%struct.connection*) #1

declare dso_local i32 @rpc_send_stats(%struct.connection*) #1

declare dso_local i32 @send_friends_binlog_position(...) #1

declare dso_local i32 @binlog_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
