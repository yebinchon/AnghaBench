; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_tuple_on_answer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_tuple_on_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_tuple_on_answer(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca %struct.gather*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gather* %0, %struct.gather** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gather*, %struct.gather** %3, align 8
  %8 = getelementptr inbounds %struct.gather, %struct.gather* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = call i32 (...) @tl_fetch_int()
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %56

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (...) @tl_fetch_int()
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %21, %16
  %28 = call i32 (...) @tl_fetch_unread()
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 4
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %56

35:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = call i32 (...) @tl_fetch_int()
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %43
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %21
  br label %56

56:                                               ; preds = %15, %34, %55
  ret void
}

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_unread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
