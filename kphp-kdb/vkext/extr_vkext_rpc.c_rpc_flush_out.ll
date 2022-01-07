; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_flush_out.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_flush_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, double)* @rpc_flush_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_flush_out(%struct.rpc_server* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_server*, align 8
  %5 = alloca double, align 8
  store %struct.rpc_server* %0, %struct.rpc_server** %4, align 8
  store double %1, double* %5, align 8
  %6 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %12 = load double, double* %5, align 8
  %13 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @rpc_sock_write(%struct.rpc_server* %11, double %12, i32 0, i32 0, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %24

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %22 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @rpc_sock_write(%struct.rpc_server*, double, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
