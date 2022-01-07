; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_am-hash.c_am_choose_hash_prime.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_am-hash.c_am_choose_hash_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@am_choose_hash_prime.p = internal constant [145 x i32] [i32 1103, i32 1217, i32 1361, i32 1499, i32 1657, i32 1823, i32 2011, i32 2213, i32 2437, i32 2683, i32 2953, i32 3251, i32 3581, i32 3943, i32 4339, i32 4783, i32 5273, i32 5801, i32 6389, i32 7039, i32 7753, i32 8537, i32 9391, i32 10331, i32 11369, i32 12511, i32 13763, i32 15149, i32 16673, i32 18341, i32 20177, i32 22229, i32 24469, i32 26921, i32 29629, i32 32603, i32 35869, i32 39461, i32 43411, i32 47777, i32 52561, i32 57829, i32 63617, i32 69991, i32 76991, i32 84691, i32 93169, i32 102497, i32 112757, i32 124067, i32 136481, i32 150131, i32 165161, i32 181693, i32 199873, i32 219871, i32 241861, i32 266051, i32 292661, i32 321947, i32 354143, i32 389561, i32 428531, i32 471389, i32 518533, i32 570389, i32 627433, i32 690187, i32 759223, i32 835207, i32 918733, i32 1010617, i32 1111687, i32 1222889, i32 1345207, i32 1479733, i32 1627723, i32 1790501, i32 1969567, i32 2166529, i32 2383219, i32 2621551, i32 2883733, i32 3172123, i32 3489347, i32 3838283, i32 4222117, i32 4644329, i32 5108767, i32 5619667, i32 6181639, i32 6799811, i32 7479803, i32 8227787, i32 9050599, i32 9955697, i32 10951273, i32 12046403, i32 13251047, i32 14576161, i32 16033799, i32 17637203, i32 19400929, i32 21341053, i32 23475161, i32 25822679, i32 28404989, i32 31245491, i32 34370053, i32 37807061, i32 41587807, i32 45746593, i32 50321261, i32 55353391, i32 60888739, i32 66977621, i32 73675391, i32 81042947, i32 89147249, i32 98061979, i32 107868203, i32 118655027, i32 130520531, i32 143572609, i32 157929907, i32 173722907, i32 191095213, i32 210204763, i32 231225257, i32 254347801, i32 279782593, i32 307760897, i32 338536987, i32 372390691, i32 409629809, i32 450592801, i32 495652109, i32 545217341, i32 599739083, i32 659713007, i32 725684317, i32 798252779, i32 878078057, i32 965885863, i32 1062474559], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @am_choose_hash_prime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 145, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i32 145, i32* %5, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %8, %9
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %13, %14
  %16 = ashr i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [145 x i32], [145 x i32]* @am_choose_hash_prime.p, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 145
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [145 x i32], [145 x i32]* @am_choose_hash_prime.p, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %42, %43
  br label %45

45:                                               ; preds = %38, %35
  %46 = phi i1 [ false, %35 ], [ %44, %38 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %35

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 144
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [145 x i32], [145 x i32]* @am_choose_hash_prime.p, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [145 x i32], [145 x i32]* @am_choose_hash_prime.p, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
