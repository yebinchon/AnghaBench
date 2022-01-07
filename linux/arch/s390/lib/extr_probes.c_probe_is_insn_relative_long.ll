; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_probes.c_probe_is_insn_relative_long.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_probes.c_probe_is_insn_relative_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @probe_is_insn_relative_long(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = ashr i32 %6, 8
  switch i32 %7, label %30 [
    i32 192, label %8
    i32 196, label %16
    i32 198, label %23
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %31

15:                                               ; preds = %8
  br label %30

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 15
  switch i32 %20, label %22 [
    i32 2, label %21
    i32 4, label %21
    i32 5, label %21
    i32 6, label %21
    i32 7, label %21
    i32 8, label %21
    i32 11, label %21
    i32 12, label %21
    i32 13, label %21
    i32 14, label %21
    i32 15, label %21
  ]

21:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  store i32 1, i32* %2, align 4
  br label %31

22:                                               ; preds = %16
  br label %30

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 15
  switch i32 %27, label %29 [
    i32 2, label %28
    i32 4, label %28
    i32 5, label %28
    i32 6, label %28
    i32 7, label %28
    i32 8, label %28
    i32 10, label %28
    i32 12, label %28
    i32 13, label %28
    i32 14, label %28
    i32 15, label %28
  ]

28:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %1, %29, %22, %15
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28, %21, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
