; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_flush_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_flush_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i64 }

@rpc_flush = common dso_local global i32 0, align 4
@rpc_status_connected = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rpc_flush_server(%struct.rpc_server* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_server*, align 8
  %5 = alloca double, align 8
  store %struct.rpc_server* %0, %struct.rpc_server** %4, align 8
  store double %1, double* %5, align 8
  %6 = load i32, i32* @rpc_flush, align 4
  %7 = call i32 @ADD_CNT(i32 %6)
  %8 = load i32, i32* @rpc_flush, align 4
  %9 = call i32 @START_TIMER(i32 %8)
  %10 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %11 = icmp ne %struct.rpc_server* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @rpc_status_connected, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @rpc_flush, align 4
  %20 = call i32 @END_TIMER(i32 %19)
  store i32 0, i32* %3, align 4
  br label %34

21:                                               ; preds = %12
  %22 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %23 = load double, double* %5, align 8
  %24 = call i64 @rpc_flush_out_force(%struct.rpc_server* %22, double %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %28 = call i32 @rpc_server_failure(%struct.rpc_server* %27)
  %29 = load i32, i32* @rpc_flush, align 4
  %30 = call i32 @END_TIMER(i32 %29)
  store i32 -1, i32* %3, align 4
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @rpc_flush, align 4
  %33 = call i32 @END_TIMER(i32 %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %26, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local i64 @rpc_flush_out_force(%struct.rpc_server*, double) #1

declare dso_local i32 @rpc_server_failure(%struct.rpc_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
