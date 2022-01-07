; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c_arch_check_optimized_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c_arch_check_optimized_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimized_kprobe = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.kprobe = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_check_optimized_kprobe(%struct.optimized_kprobe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.optimized_kprobe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kprobe*, align 8
  store %struct.optimized_kprobe* %0, %struct.optimized_kprobe** %3, align 8
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %9 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %6
  %14 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %3, align 8
  %15 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call %struct.kprobe* @get_kprobe(i64 %20)
  store %struct.kprobe* %21, %struct.kprobe** %5, align 8
  %22 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %23 = icmp ne %struct.kprobe* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %26 = call i32 @kprobe_disabled(%struct.kprobe* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EEXIST, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %24, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.kprobe* @get_kprobe(i64) #1

declare dso_local i32 @kprobe_disabled(%struct.kprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
