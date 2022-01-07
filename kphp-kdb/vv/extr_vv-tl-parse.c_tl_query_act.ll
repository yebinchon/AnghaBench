; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_query_act.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_query_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.tl_query_header = type { i32, i32 }

@RPC_INVOKE_REQ = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_query_act(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tl_query_header*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RPC_INVOKE_REQ, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = call i32 (...) @WaitAioArrClear()
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 4
  %19 = call i32 @tl_fetch_init(%struct.connection* %16, i32 %18)
  %20 = call %struct.tl_query_header* @zmalloc(i32 8)
  store %struct.tl_query_header* %20, %struct.tl_query_header** %8, align 8
  %21 = load %struct.tl_query_header*, %struct.tl_query_header** %8, align 8
  %22 = call i32 @tl_fetch_query_header(%struct.tl_query_header* %21)
  %23 = load %struct.connection*, %struct.connection** %5, align 8
  %24 = load %struct.tl_query_header*, %struct.tl_query_header** %8, align 8
  %25 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @tl_store_init_keep_error(%struct.connection* %23, i32 %26)
  %28 = load %struct.tl_query_header*, %struct.tl_query_header** %8, align 8
  %29 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %14
  %34 = call i64 (...) @tl_fetch_error()
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %33, %14
  %37 = phi i1 [ true, %14 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.tl_query_header*, %struct.tl_query_header** %8, align 8
  %41 = call i32 @__tl_query_act(%struct.tl_query_header* %40)
  %42 = load %struct.connection*, %struct.connection** %5, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 0
  %44 = call i64 (...) @tl_fetch_unread()
  %45 = add nsw i64 4, %44
  %46 = call i64 @advance_skip_read_ptr(i32* %43, i64 %45)
  %47 = call i64 (...) @tl_fetch_unread()
  %48 = add nsw i64 4, %47
  %49 = icmp eq i64 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %36, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @WaitAioArrClear(...) #1

declare dso_local i32 @tl_fetch_init(%struct.connection*, i32) #1

declare dso_local %struct.tl_query_header* @zmalloc(i32) #1

declare dso_local i32 @tl_fetch_query_header(%struct.tl_query_header*) #1

declare dso_local i32 @tl_store_init_keep_error(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @__tl_query_act(%struct.tl_query_header*) #1

declare dso_local i64 @advance_skip_read_ptr(i32*, i64) #1

declare dso_local i64 @tl_fetch_unread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
