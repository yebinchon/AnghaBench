; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c_insn_jump_into_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c_insn_jump_into_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.TYPE_3__, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*, i64, i32)* @insn_jump_into_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_jump_into_range(%struct.insn* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.insn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.insn* %0, %struct.insn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.insn*, %struct.insn** %5, align 8
  %10 = getelementptr inbounds %struct.insn, %struct.insn* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %27 [
    i32 224, label %15
    i32 225, label %15
    i32 226, label %15
    i32 227, label %15
    i32 233, label %15
    i32 235, label %15
    i32 15, label %16
  ]

15:                                               ; preds = %3, %3, %3, %3, %3, %3
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.insn*, %struct.insn** %5, align 8
  %18 = getelementptr inbounds %struct.insn, %struct.insn* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 240
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %38

26:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.insn*, %struct.insn** %5, align 8
  %29 = getelementptr inbounds %struct.insn, %struct.insn* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 240
  %35 = icmp eq i32 %34, 112
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %60

38:                                               ; preds = %36, %25, %15
  %39 = load %struct.insn*, %struct.insn** %5, align 8
  %40 = getelementptr inbounds %struct.insn, %struct.insn* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.insn*, %struct.insn** %5, align 8
  %43 = getelementptr inbounds %struct.insn, %struct.insn* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %41, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ule i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = icmp ule i64 %51, %55
  br label %57

57:                                               ; preds = %50, %38
  %58 = phi i1 [ false, %38 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %37, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
