; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_rpc_proxy_rnews_on_error.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_rpc_proxy_rnews_on_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gather = type { i32 }

@CQ = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_proxy_rnews_on_error(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca %struct.gather*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gather* %0, %struct.gather** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @tl_fetch_lookup_int()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @TL_IS_USER_ERROR(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.gather*, %struct.gather** %3, align 8
  %12 = call i64 @merge_init_response(%struct.gather* %11)
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CQ, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tl_store_header(i32 %17)
  %19 = call i32 (...) @tl_fetch_unread()
  %20 = call i32 @tl_copy_through(i32 %19, i32 1)
  %21 = call i32 (...) @tl_store_end()
  br label %22

22:                                               ; preds = %14, %10
  %23 = load %struct.gather*, %struct.gather** %3, align 8
  %24 = getelementptr inbounds %struct.gather, %struct.gather* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @zfree(i32 %25, i32 4)
  %27 = load %struct.gather*, %struct.gather** %3, align 8
  %28 = call i32 @merge_terminate_gather(%struct.gather* %27)
  br label %29

29:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @tl_fetch_lookup_int(...) #1

declare dso_local i64 @TL_IS_USER_ERROR(i32) #1

declare dso_local i64 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @tl_store_header(i32) #1

declare dso_local i32 @tl_copy_through(i32, i32) #1

declare dso_local i32 @tl_fetch_unread(...) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i32 @zfree(i32, i32) #1

declare dso_local i32 @merge_terminate_gather(%struct.gather*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
