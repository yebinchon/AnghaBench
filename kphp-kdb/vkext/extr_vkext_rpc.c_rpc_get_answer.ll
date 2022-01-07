; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_get_answer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_get_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i32, i32 }

@precise_now = common dso_local global double 0.000000e+00, align 8
@timedout_queries = common dso_local global i32 0, align 4
@query_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_query*, double)* @rpc_get_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_get_answer(%struct.rpc_query* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_query*, align 8
  %5 = alloca double, align 8
  store %struct.rpc_query* %0, %struct.rpc_query** %4, align 8
  store double %1, double* %5, align 8
  %6 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %7 = icmp ne %struct.rpc_query* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

9:                                                ; preds = %2
  %10 = call i32 @START_TIMER(i32 (%struct.rpc_query*, double)* @rpc_get_answer)
  %11 = call i32 (...) @update_precise_now()
  br label %12

12:                                               ; preds = %35, %9
  %13 = load double, double* %5, align 8
  %14 = load double, double* @precise_now, align 8
  %15 = fcmp ogt double %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 129
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %28 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 130
  br label %31

31:                                               ; preds = %26, %21, %16
  %32 = phi i1 [ true, %21 ], [ true, %16 ], [ %30, %26 ]
  br label %33

33:                                               ; preds = %31, %12
  %34 = phi i1 [ false, %12 ], [ %32, %31 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load double, double* %5, align 8
  %37 = call i32 @rpc_poll(double %36)
  %38 = call i32 (...) @update_precise_now()
  br label %12

39:                                               ; preds = %33
  %40 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %65 [
    i32 128, label %43
    i32 129, label %43
    i32 130, label %43
    i32 131, label %49
    i32 132, label %56
  ]

43:                                               ; preds = %39, %39, %39
  %44 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %45 = call i32 @rpc_query_delete(%struct.rpc_query* %44)
  %46 = load i32, i32* @timedout_queries, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @timedout_queries, align 4
  %48 = call i32 @END_TIMER(i32 (%struct.rpc_query*, double)* @rpc_get_answer)
  store i32 -1, i32* %3, align 4
  br label %67

49:                                               ; preds = %39
  %50 = load i32, i32* @query_completed, align 4
  %51 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %52 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tree_delete_qid(i32 %50, i32 %53)
  store i32 %54, i32* @query_completed, align 4
  %55 = call i32 @END_TIMER(i32 (%struct.rpc_query*, double)* @rpc_get_answer)
  store i32 1, i32* %3, align 4
  br label %67

56:                                               ; preds = %39
  %57 = load i32, i32* @query_completed, align 4
  %58 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %59 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tree_delete_qid(i32 %57, i32 %60)
  store i32 %61, i32* @query_completed, align 4
  %62 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %63 = call i32 @rpc_query_delete(%struct.rpc_query* %62)
  %64 = call i32 @END_TIMER(i32 (%struct.rpc_query*, double)* @rpc_get_answer)
  store i32 -1, i32* %3, align 4
  br label %67

65:                                               ; preds = %39
  %66 = call i32 @END_TIMER(i32 (%struct.rpc_query*, double)* @rpc_get_answer)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %56, %49, %43, %8
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @START_TIMER(i32 (%struct.rpc_query*, double)*) #1

declare dso_local i32 @update_precise_now(...) #1

declare dso_local i32 @rpc_poll(double) #1

declare dso_local i32 @rpc_query_delete(%struct.rpc_query*) #1

declare dso_local i32 @END_TIMER(i32 (%struct.rpc_query*, double)*) #1

declare dso_local i32 @tree_delete_qid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
