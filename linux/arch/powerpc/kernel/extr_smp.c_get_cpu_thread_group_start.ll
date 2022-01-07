; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_get_cpu_thread_group_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_get_cpu_thread_group_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_groups = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.thread_groups*)* @get_cpu_thread_group_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cpu_thread_group_start(i32 %0, %struct.thread_groups* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_groups*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.thread_groups* %1, %struct.thread_groups** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @get_hard_smp_processor_id(i32 %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %51, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.thread_groups*, %struct.thread_groups** %5, align 8
  %16 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.thread_groups*, %struct.thread_groups** %5, align 8
  %22 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %47, %19
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.thread_groups*, %struct.thread_groups** %5, align 8
  %28 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.thread_groups*, %struct.thread_groups** %5, align 8
  %36 = getelementptr inbounds %struct.thread_groups, %struct.thread_groups* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %55

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %25

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %13

54:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
