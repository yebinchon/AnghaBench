; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_vk_memcache_query_result_many.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_vk_memcache_query_result_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_queue = type { i32 }
%struct.rpc_query = type { %struct.tl_tree* }
%struct.tl_tree = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vk_memcache_query_result_many(%struct.rpc_queue* %0, double %1, i32** %2) #0 {
  %4 = alloca %struct.rpc_queue*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.rpc_query*, align 8
  %10 = alloca %struct.tl_tree*, align 8
  %11 = alloca i32**, align 8
  store %struct.rpc_queue* %0, %struct.rpc_queue** %4, align 8
  store double %1, double* %5, align 8
  store i32** %2, i32*** %6, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @array_init(i32* %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %59, %39, %3
  %16 = load %struct.rpc_queue*, %struct.rpc_queue** %4, align 8
  %17 = call i32 @do_rpc_queue_empty(%struct.rpc_queue* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %60

20:                                               ; preds = %15
  %21 = load %struct.rpc_queue*, %struct.rpc_queue** %4, align 8
  %22 = load double, double* %5, align 8
  %23 = call i64 @do_rpc_queue_next(%struct.rpc_queue* %21, double %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %60

27:                                               ; preds = %20
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.rpc_query* @rpc_query_get(i64 %28)
  store %struct.rpc_query* %29, %struct.rpc_query** %9, align 8
  %30 = load %struct.rpc_query*, %struct.rpc_query** %9, align 8
  %31 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %30, i32 0, i32 0
  %32 = load %struct.tl_tree*, %struct.tl_tree** %31, align 8
  store %struct.tl_tree* %32, %struct.tl_tree** %10, align 8
  %33 = load %struct.tl_tree*, %struct.tl_tree** %10, align 8
  %34 = call i32 @INC_REF(%struct.tl_tree* %33)
  %35 = load i64, i64* %8, align 8
  %36 = load double, double* %5, align 8
  %37 = call i64 @do_rpc_get_and_parse(i64 %35, double %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %15

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load %struct.tl_tree*, %struct.tl_tree** %10, align 8
  %44 = call i32** @vk_memcache_query_result_one(%struct.tl_tree* %43)
  store i32** %44, i32*** %11, align 8
  %45 = load i32**, i32*** %11, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32**, i32*** %6, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32**, i32*** %11, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @add_index_zval(i32* %49, i64 %50, i32* %52)
  br label %59

54:                                               ; preds = %40
  %55 = load i32**, i32*** %6, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @add_index_bool(i32* %56, i64 %57, i32 0)
  br label %59

59:                                               ; preds = %54, %47
  br label %15

60:                                               ; preds = %26, %15
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @do_rpc_queue_empty(%struct.rpc_queue*) #1

declare dso_local i64 @do_rpc_queue_next(%struct.rpc_queue*, double) #1

declare dso_local %struct.rpc_query* @rpc_query_get(i64) #1

declare dso_local i32 @INC_REF(%struct.tl_tree*) #1

declare dso_local i64 @do_rpc_get_and_parse(i64, double) #1

declare dso_local i32** @vk_memcache_query_result_one(%struct.tl_tree*) #1

declare dso_local i32 @add_index_zval(i32*, i64, i32*) #1

declare dso_local i32 @add_index_bool(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
