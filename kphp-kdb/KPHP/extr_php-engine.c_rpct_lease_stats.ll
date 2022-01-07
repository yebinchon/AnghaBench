; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpct_lease_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpct_lease_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32 }
%struct.connection = type { i32 }

@Targets = common dso_local global %struct.conn_target* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpct_lease_stats(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca %struct.connection*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.conn_target*, %struct.conn_target** @Targets, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %9, i64 %11
  store %struct.conn_target* %12, %struct.conn_target** %3, align 8
  %13 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %14 = call %struct.connection* @get_target_connection(%struct.conn_target* %13, i32 0)
  store %struct.connection* %14, %struct.connection** %4, align 8
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = icmp ne %struct.connection* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load %struct.connection*, %struct.connection** %4, align 8
  %19 = call i32 @rpc_send_lease_stats(%struct.connection* %18)
  br label %20

20:                                               ; preds = %7, %17, %8
  ret void
}

declare dso_local %struct.connection* @get_target_connection(%struct.conn_target*, i32) #1

declare dso_local i32 @rpc_send_lease_stats(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
