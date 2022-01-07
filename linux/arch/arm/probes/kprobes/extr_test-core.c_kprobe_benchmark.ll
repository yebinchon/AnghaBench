; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_kprobe_benchmark.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_kprobe_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32, i32* }

@benchmark_pre_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"FAIL: register_kprobe failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void ()*, i32)* @kprobe_benchmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kprobe_benchmark(void ()* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kprobe, align 8
  %7 = alloca i32, align 4
  store void ()* %0, void ()** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %6, i32 0, i32 0
  %9 = load i32, i32* @benchmark_pre_handler, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %6, i32 0, i32 1
  %11 = load void ()*, void ()** %4, align 8
  %12 = ptrtoint void ()* %11 to i64
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = call i32 @register_kprobe(%struct.kprobe* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load void ()*, void ()** %4, align 8
  %26 = bitcast void ()* %25 to void (...)*
  %27 = call i32 @benchmark(void (...)* %26)
  store i32 %27, i32* %7, align 4
  %28 = call i32 @unregister_kprobe(%struct.kprobe* %6)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @register_kprobe(%struct.kprobe*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @benchmark(void (...)*) #1

declare dso_local i32 @unregister_kprobe(%struct.kprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
