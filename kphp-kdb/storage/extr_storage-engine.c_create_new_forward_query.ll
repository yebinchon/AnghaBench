; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_create_new_forward_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_create_new_forward_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_forward_query = type { %struct.rpc_forward_query*, %struct.rpc_forward_query*, i64, %struct.rpc_get_file_data* }
%struct.rpc_get_file_data = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"create_new_forward_query (%p)\0A\00", align 1
@connect_timeout = common dso_local global i64 0, align 8
@forward_queries = common dso_local global %struct.rpc_forward_query zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_get_file_data*)* @create_new_forward_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_new_forward_query(%struct.rpc_get_file_data* %0) #0 {
  %2 = alloca %struct.rpc_get_file_data*, align 8
  %3 = alloca %struct.rpc_forward_query*, align 8
  %4 = alloca %struct.rpc_forward_query*, align 8
  %5 = alloca %struct.rpc_forward_query*, align 8
  store %struct.rpc_get_file_data* %0, %struct.rpc_get_file_data** %2, align 8
  %6 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %2, align 8
  %7 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.rpc_get_file_data* %6)
  %8 = call %struct.rpc_forward_query* @zmalloc0(i32 32)
  store %struct.rpc_forward_query* %8, %struct.rpc_forward_query** %3, align 8
  %9 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %2, align 8
  %10 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %10, i32 0, i32 3
  store %struct.rpc_get_file_data* %9, %struct.rpc_get_file_data** %11, align 8
  %12 = call i64 (...) @get_utime_monotonic()
  %13 = load i64, i64* @connect_timeout, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  store %struct.rpc_forward_query* @forward_queries, %struct.rpc_forward_query** %4, align 8
  %17 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** getelementptr inbounds (%struct.rpc_forward_query, %struct.rpc_forward_query* @forward_queries, i32 0, i32 1), align 8
  store %struct.rpc_forward_query* %17, %struct.rpc_forward_query** %5, align 8
  %18 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %19 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %5, align 8
  %20 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %19, i32 0, i32 0
  store %struct.rpc_forward_query* %18, %struct.rpc_forward_query** %20, align 8
  %21 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %5, align 8
  %22 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %22, i32 0, i32 1
  store %struct.rpc_forward_query* %21, %struct.rpc_forward_query** %23, align 8
  %24 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %25 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %25, i32 0, i32 1
  store %struct.rpc_forward_query* %24, %struct.rpc_forward_query** %26, align 8
  %27 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %4, align 8
  %28 = load %struct.rpc_forward_query*, %struct.rpc_forward_query** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_forward_query, %struct.rpc_forward_query* %28, i32 0, i32 0
  store %struct.rpc_forward_query* %27, %struct.rpc_forward_query** %29, align 8
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.rpc_get_file_data*) #1

declare dso_local %struct.rpc_forward_query* @zmalloc0(i32) #1

declare dso_local i64 @get_utime_monotonic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
