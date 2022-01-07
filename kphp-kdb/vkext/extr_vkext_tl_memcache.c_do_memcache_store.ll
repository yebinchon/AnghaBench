; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_connection = type { i32 }
%struct.memcache_value = type { i32 }

@MEMCACHE_SET = common dso_local global i32 0, align 4
@MEMCACHE_REPLACE = common dso_local global i32 0, align 4
@MEMCACHE_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_memcache_store(%struct.rpc_connection* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, double %8) #0 {
  %10 = alloca %struct.memcache_value, align 4
  %11 = alloca %struct.rpc_connection*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  store %struct.rpc_connection* %0, %struct.rpc_connection** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store double %8, double* %19, align 8
  %21 = load i32, i32* %18, align 4
  %22 = load i32, i32* @MEMCACHE_SET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* @MEMCACHE_REPLACE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* @MEMCACHE_ADD, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24, %9
  %33 = phi i1 [ true, %24 ], [ true, %9 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.rpc_connection*, %struct.rpc_connection** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i8*, i8** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load double, double* %19, align 8
  %45 = call i64 @do_memcache_send_store(%struct.rpc_connection* %36, i8* %37, i32 %38, i8* %39, i32 %40, i32 %41, i32 %42, i32 %43, double %44)
  store i64 %45, i64* %20, align 8
  %46 = load %struct.rpc_connection*, %struct.rpc_connection** %11, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load double, double* %19, align 8
  %49 = call i32 @do_memcache_act(%struct.rpc_connection* %46, i64 %47, i32 1, double %48)
  %50 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @do_memcache_send_store(%struct.rpc_connection*, i8*, i32, i8*, i32, i32, i32, i32, double) #1

declare dso_local i32 @do_memcache_act(%struct.rpc_connection*, i64, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
