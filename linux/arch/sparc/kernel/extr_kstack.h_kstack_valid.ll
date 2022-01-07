; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_kstack.h_kstack_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_kstack.h_kstack_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i64 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@hardirq_stack = common dso_local global i64* null, align 8
@softirq_stack = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_info*, i64)* @kstack_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kstack_valid(%struct.thread_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %8 = ptrtoint %struct.thread_info* %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %9, 15
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 8
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @THREAD_SIZE, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 4
  %24 = icmp ule i64 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %72

26:                                               ; preds = %18, %13
  %27 = load i64*, i64** @hardirq_stack, align 8
  %28 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %29 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %26
  %35 = load i64*, i64** @hardirq_stack, align 8
  %36 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %37 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @THREAD_SIZE, align 8
  %48 = add i64 %46, %47
  %49 = sub i64 %48, 4
  %50 = icmp ule i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %72

52:                                               ; preds = %44, %34
  %53 = load i64*, i64** @softirq_stack, align 8
  %54 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %55 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @THREAD_SIZE, align 8
  %66 = add i64 %64, %65
  %67 = sub i64 %66, 4
  %68 = icmp ule i64 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %72

70:                                               ; preds = %62, %52
  br label %71

71:                                               ; preds = %70, %26
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %51, %25, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
