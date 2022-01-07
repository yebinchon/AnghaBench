; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_rpc-proxy-text.c_text_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_rpc-proxy-text.c_text_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_TEXT_SET_EXTRA_MASK = common dso_local global i32 0, align 4
@TL_TEXT_ONLINE = common dso_local global i32 0, align 4
@TL_TEXT_OFFLINE = common dso_local global i32 0, align 4
@text_online_gather_methods = common dso_local global i32 0, align 4
@TL_TEXT_SUBLIST_TYPES = common dso_local global i32 0, align 4
@TL_TEXT_PEERMSG_TYPE = common dso_local global i32 0, align 4
@TL_TEXT_GET_EXTRA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @text_forward() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @tl_fetch_lookup_int()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TL_TEXT_SET_EXTRA_MASK, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @default_query_diagonal_forward()
  store i32 %8, i32* %1, align 4
  br label %35

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @TL_TEXT_ONLINE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @TL_TEXT_OFFLINE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9
  %18 = call i32 @merge_forward(i32* @text_online_gather_methods)
  store i32 0, i32* %1, align 4
  br label %35

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @TL_TEXT_SUBLIST_TYPES, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @TL_TEXT_PEERMSG_TYPE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @TL_TEXT_GET_EXTRA_MASK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23, %19
  %32 = call i32 (...) @default_random_forward()
  store i32 %32, i32* %1, align 4
  br label %35

33:                                               ; preds = %27
  %34 = call i32 (...) @default_firstint_forward()
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %31, %17, %7
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @tl_fetch_lookup_int(...) #1

declare dso_local i32 @default_query_diagonal_forward(...) #1

declare dso_local i32 @merge_forward(i32*) #1

declare dso_local i32 @default_random_forward(...) #1

declare dso_local i32 @default_firstint_forward(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
