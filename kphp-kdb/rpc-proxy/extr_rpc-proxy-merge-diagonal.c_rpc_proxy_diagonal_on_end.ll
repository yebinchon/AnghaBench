; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-merge-diagonal.c_rpc_proxy_diagonal_on_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-merge-diagonal.c_rpc_proxy_diagonal_on_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32*, i64, i64 }

@TL_BOOL_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_proxy_diagonal_on_end(%struct.gather* %0) #0 {
  %2 = alloca %struct.gather*, align 8
  %3 = alloca i32*, align 8
  store %struct.gather* %0, %struct.gather** %2, align 8
  %4 = load %struct.gather*, %struct.gather** %2, align 8
  %5 = getelementptr inbounds %struct.gather, %struct.gather* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load %struct.gather*, %struct.gather** %2, align 8
  %8 = call i64 @merge_init_response(%struct.gather* %7)
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.gather*, %struct.gather** %2, align 8
  %12 = getelementptr inbounds %struct.gather, %struct.gather* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.gather*, %struct.gather** %2, align 8
  %15 = getelementptr inbounds %struct.gather, %struct.gather* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* @TL_BOOL_STAT, align 4
  %25 = call i32 @tl_store_int(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tl_store_int(i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tl_store_int(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tl_store_int(i32 %36)
  %38 = call i32 (...) @tl_store_end()
  br label %39

39:                                               ; preds = %10, %1
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load %struct.gather*, %struct.gather** %2, align 8
  %43 = call i32 @merge_delete(%struct.gather* %42)
  ret void
}

declare dso_local i64 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @merge_delete(%struct.gather*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
