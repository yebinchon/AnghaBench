; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/lib/extr_stacktrace.c_stack_increment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/lib/extr_stacktrace.c_stack_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STK_ALLOC_1M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @stack_increment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stack_increment(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @STK_ALLOC_MATCH(i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %3, align 8
  br label %4

13:                                               ; preds = %4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @STK_ALLOC_1M, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @STK_ALLOC_1M, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = shl i64 %23, 48
  %25 = ashr i64 %24, 48
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %2, align 8
  br label %33

27:                                               ; preds = %13
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 13
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i32 @STK_ALLOC_MATCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
