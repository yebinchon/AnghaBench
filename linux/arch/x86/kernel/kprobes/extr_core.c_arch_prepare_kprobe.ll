; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_arch_prepare_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_arch_prepare_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_prepare_kprobe(%struct.kprobe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  %5 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %6 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %9 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @alternatives_text_reserved(i64 %7, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %18 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @can_probe(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EILSEQ, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %16
  %26 = call i32* (...) @get_insn_slot()
  %27 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %28 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* %26, i32** %29, align 8
  %30 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %31 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %25
  %39 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %40 = call i32 @arch_copy_kprobe(%struct.kprobe* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %45 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @free_insn_slot(i32* %47, i32 0)
  %49 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %50 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %43, %38
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %35, %22, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @alternatives_text_reserved(i64, i64) #1

declare dso_local i32 @can_probe(i64) #1

declare dso_local i32* @get_insn_slot(...) #1

declare dso_local i32 @arch_copy_kprobe(%struct.kprobe*) #1

declare dso_local i32 @free_insn_slot(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
