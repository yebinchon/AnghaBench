; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_send_noflush.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_send_noflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i32 }
%struct.rpc_connection = type { i32 }

@rpc_send = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_query* @do_rpc_send_noflush(%struct.rpc_connection* %0, double %1) #0 {
  %3 = alloca %struct.rpc_query*, align 8
  %4 = alloca %struct.rpc_connection*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.rpc_query*, align 8
  store %struct.rpc_connection* %0, %struct.rpc_connection** %4, align 8
  store double %1, double* %5, align 8
  %7 = load i32, i32* @rpc_send, align 4
  %8 = call i32 @ADD_CNT(i32 %7)
  %9 = load i32, i32* @rpc_send, align 4
  %10 = call i32 @START_TIMER(i32 %9)
  %11 = load %struct.rpc_connection*, %struct.rpc_connection** %4, align 8
  %12 = icmp ne %struct.rpc_connection* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.rpc_connection*, %struct.rpc_connection** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_connection, %struct.rpc_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @rpc_send, align 4
  %20 = call i32 @END_TIMER(i32 %19)
  store %struct.rpc_query* null, %struct.rpc_query** %3, align 8
  br label %46

21:                                               ; preds = %13
  %22 = load double, double* %5, align 8
  %23 = call %struct.rpc_query* @rpc_query_alloc(double %22)
  store %struct.rpc_query* %23, %struct.rpc_query** %6, align 8
  %24 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %25 = icmp ne %struct.rpc_query* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @rpc_send, align 4
  %28 = call i32 @END_TIMER(i32 %27)
  store %struct.rpc_query* null, %struct.rpc_query** %3, align 8
  br label %46

29:                                               ; preds = %21
  %30 = load %struct.rpc_connection*, %struct.rpc_connection** %4, align 8
  %31 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %32 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load double, double* %5, align 8
  %35 = call i64 @rpc_write(%struct.rpc_connection* %30, i32 %33, double %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %39 = call i32 @rpc_query_delete(%struct.rpc_query* %38)
  %40 = load i32, i32* @rpc_send, align 4
  %41 = call i32 @END_TIMER(i32 %40)
  store %struct.rpc_query* null, %struct.rpc_query** %3, align 8
  br label %46

42:                                               ; preds = %29
  %43 = load i32, i32* @rpc_send, align 4
  %44 = call i32 @END_TIMER(i32 %43)
  %45 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  store %struct.rpc_query* %45, %struct.rpc_query** %3, align 8
  br label %46

46:                                               ; preds = %42, %37, %26, %18
  %47 = load %struct.rpc_query*, %struct.rpc_query** %3, align 8
  ret %struct.rpc_query* %47
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local %struct.rpc_query* @rpc_query_alloc(double) #1

declare dso_local i64 @rpc_write(%struct.rpc_connection*, i32, double) #1

declare dso_local i32 @rpc_query_delete(%struct.rpc_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
