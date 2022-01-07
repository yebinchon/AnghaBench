; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_memcache_rpcs_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_memcache_rpcs_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.tl_query_header = type { i32, i64, i32 }

@RPC_INVOKE_REQ = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Memcached only support actor_id = 0\00", align 1
@mct_set = common dso_local global i32 0, align 4
@mct_add = common dso_local global i32 0, align 4
@mct_replace = common dso_local global i32 0, align 4
@TL_ERROR_UNKNOWN_FUNCTION_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown function id 0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown error occured\00", align 1
@TL_ERROR_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_rpcs_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tl_query_header, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @RPC_INVOKE_REQ, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %15, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load %struct.connection*, %struct.connection** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 4
  %20 = call i32 @tl_fetch_init(%struct.connection* %17, i32 %19)
  %21 = call i32 @tl_fetch_query_header(%struct.tl_query_header* %8)
  %22 = load %struct.connection*, %struct.connection** %5, align 8
  %23 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %8, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @tl_store_init_keep_error(%struct.connection* %22, i32 %24)
  %26 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = call i64 (...) @tl_fetch_error()
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %16
  %34 = phi i1 [ true, %16 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %42

42:                                               ; preds = %40, %33
  %43 = call i32 (...) @tl_fetch_int()
  store i32 %43, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %62 [
    i32 128, label %45
    i32 134, label %48
    i32 129, label %51
    i32 130, label %54
    i32 133, label %56
    i32 132, label %58
    i32 131, label %60
  ]

45:                                               ; preds = %42
  %46 = load i32, i32* @mct_set, align 4
  %47 = call i32 @tl_memcache_store(i32 %46)
  store i32 %47, i32* %10, align 4
  br label %66

48:                                               ; preds = %42
  %49 = load i32, i32* @mct_add, align 4
  %50 = call i32 @tl_memcache_store(i32 %49)
  store i32 %50, i32* %10, align 4
  br label %66

51:                                               ; preds = %42
  %52 = load i32, i32* @mct_replace, align 4
  %53 = call i32 @tl_memcache_store(i32 %52)
  store i32 %53, i32* %10, align 4
  br label %66

54:                                               ; preds = %42
  %55 = call i32 @tl_memcache_incr(i32 0)
  store i32 %55, i32* %10, align 4
  br label %66

56:                                               ; preds = %42
  %57 = call i32 @tl_memcache_incr(i32 1)
  store i32 %57, i32* %10, align 4
  br label %66

58:                                               ; preds = %42
  %59 = call i32 (...) @tl_memcache_delete()
  store i32 %59, i32* %10, align 4
  br label %66

60:                                               ; preds = %42
  %61 = call i32 (...) @tl_memcache_get()
  store i32 %61, i32* %10, align 4
  br label %66

62:                                               ; preds = %42
  %63 = load i32, i32* @TL_ERROR_UNKNOWN_FUNCTION_ID, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @tl_fetch_set_error_format(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %60, %58, %56, %54, %51, %48, %45
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @TL_ERROR_UNKNOWN, align 4
  %71 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = call i32 (...) @tl_store_end()
  %74 = load %struct.connection*, %struct.connection** %5, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 0
  %76 = call i64 (...) @tl_fetch_unread()
  %77 = add nsw i64 4, %76
  %78 = call i64 @advance_skip_read_ptr(i32* %75, i64 %77)
  %79 = call i64 (...) @tl_fetch_unread()
  %80 = add nsw i64 4, %79
  %81 = icmp eq i64 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %72, %14
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @tl_fetch_init(%struct.connection*, i32) #1

declare dso_local i32 @tl_fetch_query_header(%struct.tl_query_header*) #1

declare dso_local i32 @tl_store_init_keep_error(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_memcache_store(i32) #1

declare dso_local i32 @tl_memcache_incr(i32) #1

declare dso_local i32 @tl_memcache_delete(...) #1

declare dso_local i32 @tl_memcache_get(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i64 @advance_skip_read_ptr(i32*, i64) #1

declare dso_local i64 @tl_fetch_unread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
