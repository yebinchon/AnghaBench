; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_diff-patch.c_get_hashtable_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_diff-patch.c_get_hashtable_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_hashtable_size.p = internal constant [145 x i32] [i32 1103, i32 1217, i32 1361, i32 1499, i32 1657, i32 1823, i32 2011, i32 2213, i32 2437, i32 2683, i32 2953, i32 3251, i32 3581, i32 3943, i32 4339, i32 4783, i32 5273, i32 5801, i32 6389, i32 7039, i32 7753, i32 8537, i32 9391, i32 10331, i32 11369, i32 12511, i32 13763, i32 15149, i32 16673, i32 18341, i32 20177, i32 22229, i32 24469, i32 26921, i32 29629, i32 32603, i32 35869, i32 39461, i32 43411, i32 47777, i32 52561, i32 57829, i32 63617, i32 69991, i32 76991, i32 84691, i32 93169, i32 102497, i32 112757, i32 124067, i32 136481, i32 150131, i32 165161, i32 181693, i32 199873, i32 219871, i32 241861, i32 266051, i32 292661, i32 321947, i32 354143, i32 389561, i32 428531, i32 471389, i32 518533, i32 570389, i32 627433, i32 690187, i32 759223, i32 835207, i32 918733, i32 1010617, i32 1111687, i32 1222889, i32 1345207, i32 1479733, i32 1627723, i32 1790501, i32 1969567, i32 2166529, i32 2383219, i32 2621551, i32 2883733, i32 3172123, i32 3489347, i32 3838283, i32 4222117, i32 4644329, i32 5108767, i32 5619667, i32 6181639, i32 6799811, i32 7479803, i32 8227787, i32 9050599, i32 9955697, i32 10951273, i32 12046403, i32 13251047, i32 14576161, i32 16033799, i32 17637203, i32 19400929, i32 21341053, i32 23475161, i32 25822679, i32 28404989, i32 31245491, i32 34370053, i32 37807061, i32 41587807, i32 45746593, i32 50321261, i32 55353391, i32 60888739, i32 66977621, i32 73675391, i32 81042947, i32 89147249, i32 98061979, i32 107868203, i32 118655027, i32 130520531, i32 143572609, i32 157929907, i32 173722907, i32 191095213, i32 210204763, i32 231225257, i32 254347801, i32 279782593, i32 307760897, i32 338536987, i32 372390691, i32 409629809, i32 450592801, i32 495652109, i32 545217341, i32 599739083, i32 659713007, i32 725684317, i32 798252779, i32 878078057, i32 965885863, i32 1062474559], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_hashtable_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hashtable_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 145, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i32 145, i32* %5, align 4
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
  %23 = getelementptr inbounds [145 x i32], [145 x i32]* @get_hashtable_size.p, i64 0, i64 %22
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
  %40 = icmp slt i32 %39, 144
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [145 x i32], [145 x i32]* @get_hashtable_size.p, i64 0, i64 %44
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
