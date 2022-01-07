; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_ping.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i64, i64, double }

@rpc_status_connected = common dso_local global i64 0, align 8
@precise_now = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*)* @rpc_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_ping(%struct.rpc_server* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_server*, align 8
  %4 = alloca double, align 8
  store %struct.rpc_server* %0, %struct.rpc_server** %3, align 8
  %5 = load %struct.rpc_server*, %struct.rpc_server** %3, align 8
  %6 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @rpc_status_connected, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.rpc_server*, %struct.rpc_server** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 -1, i32* %2, align 4
  br label %40

16:                                               ; preds = %10
  %17 = call i32 (...) @update_precise_now()
  %18 = load double, double* @precise_now, align 8
  %19 = load %struct.rpc_server*, %struct.rpc_server** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %19, i32 0, i32 2
  %21 = load double, double* %20, align 8
  %22 = fadd double %18, %21
  store double %22, double* %4, align 8
  %23 = load %struct.rpc_server*, %struct.rpc_server** %3, align 8
  %24 = load double, double* %4, align 8
  %25 = call i32 (...) @lrand48()
  %26 = call i64 @rpc_ping_send(%struct.rpc_server* %23, double %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.rpc_server*, %struct.rpc_server** %3, align 8
  %30 = call i32 @rpc_server_disconnect(%struct.rpc_server* %29)
  store i32 -1, i32* %2, align 4
  br label %40

31:                                               ; preds = %16
  %32 = load %struct.rpc_server*, %struct.rpc_server** %3, align 8
  %33 = load double, double* %4, align 8
  %34 = call i64 @rpc_work(%struct.rpc_server* %32, i32 1, double %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.rpc_server*, %struct.rpc_server** %3, align 8
  %38 = call i32 @rpc_server_disconnect(%struct.rpc_server* %37)
  store i32 -1, i32* %2, align 4
  br label %40

39:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %36, %28, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @update_precise_now(...) #1

declare dso_local i64 @rpc_ping_send(%struct.rpc_server*, double, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @rpc_server_disconnect(%struct.rpc_server*) #1

declare dso_local i64 @rpc_work(%struct.rpc_server*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
