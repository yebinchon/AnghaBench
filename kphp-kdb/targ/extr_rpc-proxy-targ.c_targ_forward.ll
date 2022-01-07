; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_targ_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_targ_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_userlist = common dso_local global i64 0, align 8
@diagonal_gather_methods = common dso_local global i32 0, align 4
@sum_one_gather_methods = common dso_local global i32 0, align 4
@sum_tuple_gather_methods = common dso_local global i32 0, align 4
@sum_vector_gather_methods = common dso_local global i32 0, align 4
@sum_search_gather_methods = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @targ_forward() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i64 0, i64* @Q_userlist, align 8
  %3 = call i32 (...) @tl_fetch_lookup_int()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @assert(i32 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %21 [
    i32 154, label %7
    i32 153, label %7
    i32 155, label %7
    i32 145, label %7
    i32 140, label %7
    i32 144, label %7
    i32 147, label %7
    i32 151, label %7
    i32 136, label %7
    i32 139, label %7
    i32 142, label %7
    i32 143, label %7
    i32 146, label %7
    i32 141, label %7
    i32 134, label %7
    i32 158, label %9
    i32 150, label %9
    i32 137, label %9
    i32 148, label %9
    i32 129, label %9
    i32 157, label %11
    i32 138, label %11
    i32 156, label %11
    i32 131, label %13
    i32 132, label %13
    i32 130, label %15
    i32 152, label %17
    i32 133, label %19
    i32 149, label %19
    i32 128, label %19
    i32 135, label %19
  ]

7:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %8 = call i32 @merge_forward(i32* @diagonal_gather_methods)
  store i32 0, i32* %1, align 4
  br label %23

9:                                                ; preds = %0, %0, %0, %0, %0
  %10 = call i32 @merge_forward(i32* @sum_one_gather_methods)
  store i32 0, i32* %1, align 4
  br label %23

11:                                               ; preds = %0, %0, %0
  %12 = call i32 @merge_forward(i32* @sum_tuple_gather_methods)
  store i32 0, i32* %1, align 4
  br label %23

13:                                               ; preds = %0, %0
  %14 = call i32 @merge_forward(i32* @sum_vector_gather_methods)
  store i32 0, i32* %1, align 4
  br label %23

15:                                               ; preds = %0
  %16 = call i32 @merge_forward(i32* @sum_search_gather_methods)
  store i32 0, i32* %1, align 4
  br label %23

17:                                               ; preds = %0
  %18 = call i32 (...) @default_random_forward()
  store i32 %18, i32* %1, align 4
  br label %23

19:                                               ; preds = %0, %0, %0, %0
  %20 = call i32 @merge_forward(i32* @sum_tuple_gather_methods)
  store i32 0, i32* %1, align 4
  br label %23

21:                                               ; preds = %0
  %22 = call i32 (...) @default_firstint_forward()
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @tl_fetch_lookup_int(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @merge_forward(i32*) #1

declare dso_local i32 @default_random_forward(...) #1

declare dso_local i32 @default_firstint_forward(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
