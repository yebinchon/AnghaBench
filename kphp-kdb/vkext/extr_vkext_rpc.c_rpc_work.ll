; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_work.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, i32, double)* @rpc_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_work(%struct.rpc_server* %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_server* %0, %struct.rpc_server** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %9 = call i32 @ADD_CNT(i32 (%struct.rpc_server*, i32, double)* @rpc_work)
  %10 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load double, double* %7, align 8
  %13 = call i32 @rpc_read(%struct.rpc_server* %10, i32 %11, double %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %18 = call i32 @rpc_server_failure(%struct.rpc_server* %17)
  store i32 -1, i32* %4, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %24

23:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %22, %16
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @ADD_CNT(i32 (%struct.rpc_server*, i32, double)*) #1

declare dso_local i32 @rpc_read(%struct.rpc_server*, i32, double) #1

declare dso_local i32 @rpc_server_failure(%struct.rpc_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
