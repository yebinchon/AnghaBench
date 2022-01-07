; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_send_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_send_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_connection = type { i32 }
%struct.rpc_query = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_memcache_send_store(%struct.rpc_connection* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, double %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.rpc_connection*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca %struct.rpc_query*, align 8
  store %struct.rpc_connection* %0, %struct.rpc_connection** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store double %8, double* %19, align 8
  %21 = call i32 (...) @do_rpc_clean()
  %22 = load i32, i32* %18, align 4
  %23 = call i32 @do_rpc_store_int(i32 %22)
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @do_rpc_store_string(i8* %24, i32 %25)
  %27 = load i32, i32* %16, align 4
  %28 = call i32 @do_rpc_store_int(i32 %27)
  %29 = load i32, i32* %17, align 4
  %30 = call i32 @do_rpc_store_int(i32 %29)
  %31 = load i8*, i8** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @do_rpc_store_string(i8* %31, i32 %32)
  %34 = load %struct.rpc_connection*, %struct.rpc_connection** %11, align 8
  %35 = load double, double* %19, align 8
  %36 = call %struct.rpc_query* @do_rpc_send_noflush(%struct.rpc_connection* %34, double %35)
  store %struct.rpc_query* %36, %struct.rpc_query** %20, align 8
  %37 = icmp ne %struct.rpc_query* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %9
  store i64 -1, i64* %10, align 8
  br label %43

39:                                               ; preds = %9
  %40 = load %struct.rpc_query*, %struct.rpc_query** %20, align 8
  %41 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i64, i64* %10, align 8
  ret i64 %44
}

declare dso_local i32 @do_rpc_clean(...) #1

declare dso_local i32 @do_rpc_store_int(i32) #1

declare dso_local i32 @do_rpc_store_string(i8*, i32) #1

declare dso_local %struct.rpc_query* @do_rpc_send_noflush(%struct.rpc_connection*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
