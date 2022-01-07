; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_arch_within_optimized_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_arch_within_optimized_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimized_kprobe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RELATIVEJUMP_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_within_optimized_kprobe(%struct.optimized_kprobe* %0, i64 %1) #0 {
  %3 = alloca %struct.optimized_kprobe*, align 8
  %4 = alloca i64, align 8
  store %struct.optimized_kprobe* %0, %struct.optimized_kprobe** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %6 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %13 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RELATIVEJUMP_SIZE, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* %4, align 8
  %19 = icmp ugt i64 %17, %18
  br label %20

20:                                               ; preds = %11, %2
  %21 = phi i1 [ false, %2 ], [ %19, %11 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
