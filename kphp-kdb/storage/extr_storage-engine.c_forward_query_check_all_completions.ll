; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_forward_query_check_all_completions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_forward_query_check_all_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_forward_query = type { %struct.rpc_forward_query* }

@forward_queries = common dso_local global %struct.rpc_forward_query zeroinitializer, align 8
@.str = private unnamed_addr constant [48 x i8] c"forward_query_check_all_completion returns %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @forward_query_check_all_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_query_check_all_completions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rpc_forward_query*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.rpc_forward_query*, align 8
  %6 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** getelementptr inbounds (%struct.rpc_forward_query, %struct.rpc_forward_query* @forward_queries, i32 0, i32 0), align 8
  store %struct.rpc_forward_query* %6, %struct.rpc_forward_query** %2, align 8
  %7 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %2, align 8
  %8 = icmp eq %struct.rpc_forward_query* %7, @forward_queries
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

10:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  %11 = call double (...) @get_utime_monotonic()
  store double %11, double* %4, align 8
  br label %12

12:                                               ; preds = %15, %10
  %13 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %2, align 8
  %14 = icmp ne %struct.rpc_forward_query* %13, @forward_queries
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %2, align 8
  %17 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %16, i32 0, i32 0
  %18 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %17, align 8
  store %struct.rpc_forward_query* %18, %struct.rpc_forward_query** %5, align 8
  %19 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %2, align 8
  %20 = load double, double* %4, align 8
  %21 = call i64 @forward_query_check_completion(%struct.rpc_forward_query* %19, double %20)
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %5, align 8
  store %struct.rpc_forward_query* %26, %struct.rpc_forward_query** %2, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %9
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local double @get_utime_monotonic(...) #1

declare dso_local i64 @forward_query_check_completion(%struct.rpc_forward_query*, double) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
