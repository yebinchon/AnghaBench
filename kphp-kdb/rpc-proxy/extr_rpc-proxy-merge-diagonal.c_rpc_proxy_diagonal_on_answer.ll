; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-merge-diagonal.c_rpc_proxy_diagonal_on_answer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-merge-diagonal.c_rpc_proxy_diagonal_on_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32* }

@TL_BOOL_STAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_proxy_diagonal_on_answer(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca %struct.gather*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.gather* %0, %struct.gather** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gather*, %struct.gather** %3, align 8
  %7 = getelementptr inbounds %struct.gather, %struct.gather* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = call i64 (...) @tl_fetch_int()
  %10 = load i64, i64* @TL_BOOL_STAT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %47

17:                                               ; preds = %2
  %18 = call i32 (...) @tl_fetch_unread()
  %19 = icmp ne i32 %18, 12
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %47

25:                                               ; preds = %17
  %26 = call i64 (...) @tl_fetch_int()
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = call i64 (...) @tl_fetch_int()
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = call i64 (...) @tl_fetch_int()
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  br label %47

47:                                               ; preds = %25, %20, %12
  ret void
}

declare dso_local i64 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_unread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
