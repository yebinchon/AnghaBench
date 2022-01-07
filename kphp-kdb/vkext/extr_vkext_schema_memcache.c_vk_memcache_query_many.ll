; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_vk_memcache_query_many.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_vk_memcache_query_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_connection = type { i32 }
%struct.rpc_query = type { i32 }

@SUCCESS = common dso_local global i64 0, align 8
@HASH_KEY_IS_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vk_memcache_query_many(%struct.rpc_connection* %0, i32** %1, double %2, i32** %3) #0 {
  %5 = alloca %struct.rpc_connection*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca double, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.rpc_query*, align 8
  store %struct.rpc_connection* %0, %struct.rpc_connection** %5, align 8
  store i32** %1, i32*** %6, align 8
  store double %2, double* %7, align 8
  store i32** %3, i32*** %8, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = call i32 @Z_ARRVAL_PP(i32** %15)
  %17 = call i32 @zend_hash_internal_pointer_reset_ex(i32 %16, i32* %9)
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @array_init(i32* %19)
  br label %21

21:                                               ; preds = %80, %4
  %22 = load i32**, i32*** %6, align 8
  %23 = call i32 @Z_ARRVAL_PP(i32** %22)
  %24 = bitcast i32*** %10 to i8**
  %25 = call i64 @zend_hash_get_current_data_ex(i32 %23, i8** %24, i32* %9)
  %26 = load i64, i64* @SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %21
  %29 = load i32**, i32*** %6, align 8
  %30 = call i32 @Z_ARRVAL_PP(i32** %29)
  %31 = call i64 @zend_hash_get_current_key_ex(i32 %30, i8** %11, i32* %12, i64* %13, i32 1, i32* %9)
  %32 = load i64, i64* @HASH_KEY_IS_STRING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i64 0, i64* %13, align 8
  br label %36

35:                                               ; preds = %28
  store i8* null, i8** %11, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.rpc_connection*, %struct.rpc_connection** %5, align 8
  %38 = load double, double* %7, align 8
  %39 = load i32**, i32*** %10, align 8
  %40 = call %struct.rpc_query* @vk_memcache_query_one(%struct.rpc_connection* %37, double %38, i32** %39)
  store %struct.rpc_query* %40, %struct.rpc_query** %14, align 8
  %41 = load i32**, i32*** %6, align 8
  %42 = call i32 @Z_ARRVAL_PP(i32** %41)
  %43 = call i32 @zend_hash_move_forward_ex(i32 %42, i32* %9)
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load %struct.rpc_query*, %struct.rpc_query** %14, align 8
  %48 = icmp ne %struct.rpc_query* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32**, i32*** %8, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.rpc_query*, %struct.rpc_query** %14, align 8
  %54 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @add_assoc_long(i32* %51, i8* %52, i32 %55)
  br label %62

57:                                               ; preds = %46
  %58 = load i32**, i32*** %8, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @add_assoc_bool(i32* %59, i8* %60, i32 0)
  br label %62

62:                                               ; preds = %57, %49
  br label %80

63:                                               ; preds = %36
  %64 = load %struct.rpc_query*, %struct.rpc_query** %14, align 8
  %65 = icmp ne %struct.rpc_query* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32**, i32*** %8, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.rpc_query*, %struct.rpc_query** %14, align 8
  %71 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @add_index_long(i32* %68, i64 %69, i32 %72)
  br label %79

74:                                               ; preds = %63
  %75 = load i32**, i32*** %8, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @add_index_bool(i32* %76, i64 %77, i32 0)
  br label %79

79:                                               ; preds = %74, %66
  br label %80

80:                                               ; preds = %79, %62
  br label %21

81:                                               ; preds = %21
  ret void
}

declare dso_local i32 @zend_hash_internal_pointer_reset_ex(i32, i32*) #1

declare dso_local i32 @Z_ARRVAL_PP(i32**) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i64 @zend_hash_get_current_data_ex(i32, i8**, i32*) #1

declare dso_local i64 @zend_hash_get_current_key_ex(i32, i8**, i32*, i64*, i32, i32*) #1

declare dso_local %struct.rpc_query* @vk_memcache_query_one(%struct.rpc_connection*, double, i32**) #1

declare dso_local i32 @zend_hash_move_forward_ex(i32, i32*) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @add_assoc_bool(i32*, i8*, i32) #1

declare dso_local i32 @add_index_long(i32*, i64, i32) #1

declare dso_local i32 @add_index_bool(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
