; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-double-send.c_default_double_receive_on_answer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-double-send.c_default_double_receive_on_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rpc_query = type { i64, i32, i32 }
%struct.connection = type { i32 }

@tl_type_conn = common dso_local global i64 0, align 8
@CQ = common dso_local global %struct.TYPE_2__* null, align 8
@sent_answers = common dso_local global i32 0, align 4
@skipped_answers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_double_receive_on_answer(%struct.rpc_query* %0) #0 {
  %2 = alloca %struct.rpc_query*, align 8
  %3 = alloca [3 x %struct.connection*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  store %struct.rpc_query* %0, %struct.rpc_query** %2, align 8
  %8 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %8, i32 0, i32 2
  %10 = call i32 @rpc_target_lookup(i32* %9)
  %11 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %11, i32 0, i32 2
  %13 = getelementptr inbounds [3 x %struct.connection*], [3 x %struct.connection*]* %3, i64 0, i64 0
  %14 = call i32 @rpc_target_choose_random_connections(i32 %10, i32* %12, i32 2, %struct.connection** %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %1
  %18 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @tl_type_conn, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = call i32 (...) @tl_fetch_unread()
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %46, %23
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x %struct.connection*], [3 x %struct.connection*]* %3, i64 0, i64 %31
  %33 = load %struct.connection*, %struct.connection** %32, align 8
  store %struct.connection* %33, %struct.connection** %7, align 8
  %34 = load %struct.connection*, %struct.connection** %7, align 8
  %35 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %36 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @tl_store_init(%struct.connection* %34, i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CQ, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tl_store_header(i32 %41)
  %43 = call i32 (...) @tl_fetch_unread()
  %44 = call i32 @tl_copy_through(i32 %43, i32 0)
  %45 = call i32 (...) @tl_store_end()
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load i32, i32* @sent_answers, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @sent_answers, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @tl_fetch_move(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %82

58:                                               ; preds = %17, %1
  %59 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %60 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %63 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %62, i32 0, i32 2
  %64 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %65 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @tl_init_store(i64 %61, i32* %63, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i32, i32* @skipped_answers, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @skipped_answers, align 4
  br label %82

72:                                               ; preds = %58
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CQ, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @tl_store_header(i32 %75)
  %77 = load i32, i32* @sent_answers, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @sent_answers, align 4
  %79 = call i32 (...) @tl_fetch_unread()
  %80 = call i32 @tl_copy_through(i32 %79, i32 1)
  %81 = call i32 (...) @tl_store_end()
  br label %82

82:                                               ; preds = %69, %72, %49
  ret void
}

declare dso_local i32 @rpc_target_choose_random_connections(i32, i32*, i32, %struct.connection**) #1

declare dso_local i32 @rpc_target_lookup(i32*) #1

declare dso_local i32 @tl_fetch_unread(...) #1

declare dso_local i32 @tl_store_init(%struct.connection*, i32) #1

declare dso_local i32 @tl_store_header(i32) #1

declare dso_local i32 @tl_copy_through(i32, i32) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_fetch_move(i32) #1

declare dso_local i64 @tl_init_store(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
