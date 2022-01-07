; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_arch_within_kprobe_blacklist.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_arch_within_kprobe_blacklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__kprobes_text_start = common dso_local global i64 0, align 8
@__kprobes_text_end = common dso_local global i64 0, align 8
@_stext = common dso_local global i64 0, align 8
@__head_end = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_within_kprobe_blacklist(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @__kprobes_text_start, align 8
  %5 = icmp uge i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @__kprobes_text_end, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %1
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @_stext, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @__head_end, align 8
  %17 = icmp ult i64 %15, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i1 [ true, %6 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
