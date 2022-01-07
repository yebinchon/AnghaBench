; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_send_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_send_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_connection = type { i32 }
%struct.rpc_query = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_memcache_send_incr(%struct.rpc_connection* %0, i8* %1, i32 %2, i64 %3, i32 %4, double %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.rpc_connection*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.rpc_query*, align 8
  store %struct.rpc_connection* %0, %struct.rpc_connection** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store double %5, double* %13, align 8
  %15 = call i32 (...) @do_rpc_clean()
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @do_rpc_store_int(i32 %16)
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @do_rpc_store_string(i8* %18, i32 %19)
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @do_rpc_store_long(i64 %21)
  %23 = load %struct.rpc_connection*, %struct.rpc_connection** %8, align 8
  %24 = load double, double* %13, align 8
  %25 = call %struct.rpc_query* @do_rpc_send_noflush(%struct.rpc_connection* %23, double %24)
  store %struct.rpc_query* %25, %struct.rpc_query** %14, align 8
  %26 = icmp ne %struct.rpc_query* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i64 -1, i64* %7, align 8
  br label %32

28:                                               ; preds = %6
  %29 = load %struct.rpc_query*, %struct.rpc_query** %14, align 8
  %30 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i64, i64* %7, align 8
  ret i64 %33
}

declare dso_local i32 @do_rpc_clean(...) #1

declare dso_local i32 @do_rpc_store_int(i32) #1

declare dso_local i32 @do_rpc_store_string(i8*, i32) #1

declare dso_local i32 @do_rpc_store_long(i64) #1

declare dso_local %struct.rpc_query* @do_rpc_send_noflush(%struct.rpc_connection*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
