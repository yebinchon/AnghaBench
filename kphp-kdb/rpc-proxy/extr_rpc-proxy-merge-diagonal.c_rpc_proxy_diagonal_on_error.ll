; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-merge-diagonal.c_rpc_proxy_diagonal_on_error.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-merge-diagonal.c_rpc_proxy_diagonal_on_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gather = type { i32* }

@CQ = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_proxy_diagonal_on_error(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca %struct.gather*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.gather* %0, %struct.gather** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @tl_fetch_lookup_int()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @TL_IS_USER_ERROR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.gather*, %struct.gather** %3, align 8
  %13 = call i64 @merge_init_response(%struct.gather* %12)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CQ, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tl_store_header(i32 %18)
  %20 = call i32 (...) @tl_fetch_unread()
  %21 = call i32 @tl_copy_through(i32 %20, i32 1)
  %22 = call i32 (...) @tl_store_end()
  br label %23

23:                                               ; preds = %15, %11
  %24 = load %struct.gather*, %struct.gather** %3, align 8
  %25 = getelementptr inbounds %struct.gather, %struct.gather* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @free(i32* %26)
  %28 = load %struct.gather*, %struct.gather** %3, align 8
  %29 = call i32 @merge_terminate_gather(%struct.gather* %28)
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.gather*, %struct.gather** %3, align 8
  %32 = getelementptr inbounds %struct.gather, %struct.gather* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %23
  ret void
}

declare dso_local i32 @tl_fetch_lookup_int(...) #1

declare dso_local i64 @TL_IS_USER_ERROR(i32) #1

declare dso_local i64 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @tl_store_header(i32) #1

declare dso_local i32 @tl_copy_through(i32, i32) #1

declare dso_local i32 @tl_fetch_unread(...) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @merge_terminate_gather(%struct.gather*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
