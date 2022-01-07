; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_connection = type { i32 }
%struct.memcache_value = type { i32 }

@MEMCACHE_INCR = common dso_local global i32 0, align 4
@MEMCACHE_DECR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_memcache_incr(%struct.rpc_connection* %0, i8* %1, i32 %2, i64 %3, i32 %4, double %5) #0 {
  %7 = alloca %struct.memcache_value, align 4
  %8 = alloca %struct.rpc_connection*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  store %struct.rpc_connection* %0, %struct.rpc_connection** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store double %5, double* %13, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @MEMCACHE_INCR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @MEMCACHE_DECR, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %6
  %23 = phi i1 [ true, %6 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.rpc_connection*, %struct.rpc_connection** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load double, double* %13, align 8
  %32 = call i64 @do_memcache_send_incr(%struct.rpc_connection* %26, i8* %27, i32 %28, i64 %29, i32 %30, double %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.rpc_connection*, %struct.rpc_connection** %8, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load double, double* %13, align 8
  %36 = call i32 @do_memcache_act(%struct.rpc_connection* %33, i64 %34, i32 1, double %35)
  %37 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @do_memcache_send_incr(%struct.rpc_connection*, i8*, i32, i64, i32, double) #1

declare dso_local i32 @do_memcache_act(%struct.rpc_connection*, i64, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
