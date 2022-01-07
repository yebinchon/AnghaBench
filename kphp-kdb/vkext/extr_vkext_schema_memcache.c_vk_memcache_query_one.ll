; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_vk_memcache_query_one.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_vk_memcache_query_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i32, i8* }
%struct.rpc_connection = type { i32 }

@tmp = common dso_local global i32 0, align 4
@_extra_dec_ref = common dso_local global i32 0, align 4
@total_tl_working = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_query* @vk_memcache_query_one(%struct.rpc_connection* %0, double %1, i32** %2) #0 {
  %4 = alloca %struct.rpc_query*, align 8
  %5 = alloca %struct.rpc_connection*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rpc_query*, align 8
  store %struct.rpc_connection* %0, %struct.rpc_connection** %5, align 8
  store double %1, double* %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = call i32 (...) @do_rpc_clean()
  %11 = load i32, i32* @tmp, align 4
  %12 = call i32 @START_TIMER(i32 %11)
  %13 = load i32**, i32*** %7, align 8
  %14 = call i8* @store_function(i32** %13)
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* @tmp, align 4
  %16 = call i32 @END_TIMER(i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.rpc_query* null, %struct.rpc_query** %4, align 8
  br label %36

20:                                               ; preds = %3
  %21 = load %struct.rpc_connection*, %struct.rpc_connection** %5, align 8
  %22 = load double, double* %6, align 8
  %23 = call %struct.rpc_query* @do_rpc_send_noflush(%struct.rpc_connection* %21, double %22)
  store %struct.rpc_query* %23, %struct.rpc_query** %9, align 8
  %24 = icmp ne %struct.rpc_query* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store %struct.rpc_query* null, %struct.rpc_query** %4, align 8
  br label %36

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.rpc_query*, %struct.rpc_query** %9, align 8
  %29 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @_extra_dec_ref, align 4
  %31 = load %struct.rpc_query*, %struct.rpc_query** %9, align 8
  %32 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @total_tl_working, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @total_tl_working, align 4
  %35 = load %struct.rpc_query*, %struct.rpc_query** %9, align 8
  store %struct.rpc_query* %35, %struct.rpc_query** %4, align 8
  br label %36

36:                                               ; preds = %26, %25, %19
  %37 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  ret %struct.rpc_query* %37
}

declare dso_local i32 @do_rpc_clean(...) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i8* @store_function(i32**) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local %struct.rpc_query* @do_rpc_send_noflush(%struct.rpc_connection*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
