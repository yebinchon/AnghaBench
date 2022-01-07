; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_set_connection_timeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_set_connection_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@conn_timer_wakeup_gateway = common dso_local global i32 0, align 4
@C_ALARM = common dso_local global i32 0, align 4
@precise_now = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_connection_timeout(%struct.connection* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca double, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store double %1, double* %5, align 8
  %6 = load i32, i32* @conn_timer_wakeup_gateway, align 4
  %7 = load %struct.connection*, %struct.connection** %4, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %6, i32* %9, align 8
  %10 = load i32, i32* @C_ALARM, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load double, double* %5, align 8
  %17 = fcmp ogt double %16, 0.000000e+00
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i64, i64* @precise_now, align 8
  %20 = sitofp i64 %19 to double
  %21 = load double, double* %5, align 8
  %22 = fadd double %20, %21
  %23 = fptosi double %22 to i64
  %24 = load %struct.connection*, %struct.connection** %4, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.connection*, %struct.connection** %4, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 0
  %29 = call i32 @insert_event_timer(%struct.TYPE_3__* %28)
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.connection*, %struct.connection** %4, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.connection*, %struct.connection** %4, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 0
  %36 = call i32 @remove_event_timer(%struct.TYPE_3__* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @insert_event_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @remove_event_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
