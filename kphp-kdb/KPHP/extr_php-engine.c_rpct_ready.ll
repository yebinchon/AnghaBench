; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpct_ready.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpct_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32 }
%struct.connection = type { i32 }

@Targets = common dso_local global %struct.conn_target* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpct_ready(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.conn_target*, align 8
  %5 = alloca %struct.connection*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.conn_target*, %struct.conn_target** @Targets, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %10, i64 %12
  store %struct.conn_target* %13, %struct.conn_target** %4, align 8
  %14 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %15 = call %struct.connection* @get_target_connection(%struct.conn_target* %14, i32 0)
  store %struct.connection* %15, %struct.connection** %5, align 8
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = icmp eq %struct.connection* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 -2, i32* %2, align 4
  br label %22

19:                                               ; preds = %9
  %20 = load %struct.connection*, %struct.connection** %5, align 8
  %21 = call i32 @rpc_send_ready(%struct.connection* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %18, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.connection* @get_target_connection(%struct.conn_target*, i32) #1

declare dso_local i32 @rpc_send_ready(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
