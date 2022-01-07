; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_on_rinit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_on_rinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i64, i64, i32, i32 }

@global_generation = common dso_local global i32 0, align 4
@error_verbosity = common dso_local global i64 0, align 8
@inbuf = common dso_local global i64 0, align 8
@outbuf = common dso_local global i64 0, align 8
@last_qid = common dso_local global i32 0, align 4
@first_qid = common dso_local global i32 0, align 4
@max_query_id = common dso_local global i64 0, align 8
@last_server_fd = common dso_local global i32 0, align 4
@servers = common dso_local global %struct.rpc_server** null, align 8
@parse_status_reading_query = common dso_local global i64 0, align 8
@last_connection_fd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_on_rinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_server*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @global_generation, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @global_generation, align 4
  store i64 0, i64* @error_verbosity, align 8
  %7 = load i64, i64* @inbuf, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* @inbuf, align 8
  %11 = call i64 @buffer_delete(i64 %10)
  store i64 %11, i64* @inbuf, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i64, i64* @outbuf, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @outbuf, align 8
  %17 = call i64 @buffer_delete(i64 %16)
  store i64 %17, i64* @outbuf, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = call i64 @buffer_create(i32 0)
  store i64 %19, i64* @outbuf, align 8
  %20 = load i32, i32* @last_qid, align 4
  store i32 %20, i32* @first_qid, align 4
  store i64 0, i64* @max_query_id, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %50, %18
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @last_server_fd, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load %struct.rpc_server**, %struct.rpc_server*** @servers, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rpc_server*, %struct.rpc_server** %26, i64 %28
  %30 = load %struct.rpc_server*, %struct.rpc_server** %29, align 8
  store %struct.rpc_server* %30, %struct.rpc_server** %4, align 8
  %31 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %32 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %25
  %36 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %37 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @parse_status_reading_query, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %43 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @zzemalloc(i32 %44)
  %46 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %47 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48, %25
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %21

53:                                               ; preds = %21
  store i64 0, i64* @last_connection_fd, align 8
  %54 = call i32 (...) @tl_parse_on_rinit()
  ret void
}

declare dso_local i64 @buffer_delete(i64) #1

declare dso_local i64 @buffer_create(i32) #1

declare dso_local i32 @zzemalloc(i32) #1

declare dso_local i32 @tl_parse_on_rinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
