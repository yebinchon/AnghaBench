; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_tuple_on_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_tuple_on_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_tuple_on_end(%struct.gather* %0) #0 {
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
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tl_store_int(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tl_store_int(i32 %22)
  br label %24

24:                                               ; preds = %19, %10
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = call i32 @tl_store_raw_data(i32* %26, i32 %30)
  %32 = call i32 (...) @tl_store_end()
  br label %33

33:                                               ; preds = %24, %1
  %34 = load i32*, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 4, %37
  %39 = add nsw i32 %38, 12
  %40 = call i32 @zfree(i32* %34, i32 %39)
  %41 = load %struct.gather*, %struct.gather** %2, align 8
  %42 = call i32 @merge_delete(%struct.gather* %41)
  ret void
}

declare dso_local i64 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_raw_data(i32*, i32) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i32 @zfree(i32*, i32) #1

declare dso_local i32 @merge_delete(%struct.gather*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
