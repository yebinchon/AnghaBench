; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_on_answer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_on_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_query = type { i32, i32, i32 }

@skipped_answers = common dso_local global i32 0, align 4
@CQ = common dso_local global %struct.TYPE_4__* null, align 8
@sent_answers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_on_answer(%struct.rpc_query* %0) #0 {
  %2 = alloca %struct.rpc_query*, align 8
  store %struct.rpc_query* %0, %struct.rpc_query** %2, align 8
  %3 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %7 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %6, i32 0, i32 1
  %8 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @tl_init_store(i32 %5, i32* %7, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @skipped_answers, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @skipped_answers, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @tl_store_header(%struct.TYPE_3__* %19)
  %21 = load i32, i32* @sent_answers, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @sent_answers, align 4
  %23 = call i32 (...) @tl_fetch_unread()
  %24 = call i32 @tl_copy_through(i32 %23, i32 1)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tl_store_end_ext(i32 %29)
  br label %31

31:                                               ; preds = %16, %13
  ret void
}

declare dso_local i64 @tl_init_store(i32, i32*, i32) #1

declare dso_local i32 @tl_store_header(%struct.TYPE_3__*) #1

declare dso_local i32 @tl_copy_through(i32, i32) #1

declare dso_local i32 @tl_fetch_unread(...) #1

declare dso_local i32 @tl_store_end_ext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
