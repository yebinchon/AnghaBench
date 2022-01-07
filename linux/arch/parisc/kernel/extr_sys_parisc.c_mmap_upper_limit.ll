; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_sys_parisc.c_mmap_upper_limit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_sys_parisc.c_mmap_upper_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rlimit = type { i64 }

@RLIMIT_STACK = common dso_local global i32 0, align 4
@STACK_SIZE_MAX = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@STACK_RND_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@STACK_TOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rlimit*)* @mmap_upper_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmap_upper_limit(%struct.rlimit* %0) #0 {
  %2 = alloca %struct.rlimit*, align 8
  %3 = alloca i64, align 8
  store %struct.rlimit* %0, %struct.rlimit** %2, align 8
  %4 = load %struct.rlimit*, %struct.rlimit** %2, align 8
  %5 = icmp ne %struct.rlimit* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.rlimit*, %struct.rlimit** %2, align 8
  %8 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @RLIMIT_STACK, align 4
  %12 = call i64 @rlimit_max(i32 %11)
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i64 [ %9, %6 ], [ %12, %10 ]
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @STACK_SIZE_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, i64* @STACK_SIZE_MAX, align 8
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PF_RANDOMIZE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i64, i64* @STACK_RND_MASK, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = shl i64 %28, %29
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i64, i64* @STACK_TOP, align 8
  %35 = load i64, i64* %3, align 8
  %36 = sub i64 %34, %35
  %37 = call i64 @PAGE_ALIGN(i64 %36)
  ret i64 %37
}

declare dso_local i64 @rlimit_max(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
