; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_get_hashtable_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_get_hashtable_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_hashtable_size.p = internal constant [63 x i32] [i32 1103, i32 1217, i32 1361, i32 1499, i32 1657, i32 1823, i32 2011, i32 2213, i32 2437, i32 2683, i32 2953, i32 3251, i32 3581, i32 3943, i32 4339, i32 4783, i32 5273, i32 5801, i32 6389, i32 7039, i32 7753, i32 8537, i32 9391, i32 10331, i32 11369, i32 12511, i32 13763, i32 15149, i32 16673, i32 18341, i32 20177, i32 22229, i32 24469, i32 26921, i32 29629, i32 32603, i32 35869, i32 39461, i32 43411, i32 47777, i32 52561, i32 57829, i32 63617, i32 69991, i32 76991, i32 84691, i32 93169, i32 102497, i32 112757, i32 124067, i32 136481, i32 150131, i32 165161, i32 181693, i32 199873, i32 219871, i32 241861, i32 266051, i32 292661, i32 321947, i32 354143, i32 389561, i32 428531], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashtable_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 63, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i32 63, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 1
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, %8
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %31, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %17, %18
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [63 x i32], [63 x i32]* @get_hashtable_size.p, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 62
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [63 x i32], [63 x i32]* @get_hashtable_size.p, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
