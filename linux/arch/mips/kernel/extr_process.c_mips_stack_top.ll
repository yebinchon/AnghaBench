; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_mips_stack_top.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_mips_stack_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@TASK_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_8__* null, align 8
@cpu_has_dc_aliases = common dso_local global i64 0, align 8
@shm_align_mask = common dso_local global i64 0, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@VDSO_RANDOMIZE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mips_stack_top() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @TASK_SIZE, align 8
  %3 = load i64, i64* @PAGE_MASK, align 8
  %4 = and i64 %2, %3
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* @PAGE_SIZE, align 8
  %6 = load i64, i64* %1, align 8
  %7 = sub i64 %6, %5
  store i64 %7, i64* %1, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @PAGE_ALIGN(i32 %15)
  %17 = load i64, i64* %1, align 8
  %18 = sub i64 %17, %16
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = load i64, i64* %1, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %1, align 8
  %22 = call i64 (...) @mips_gic_present()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %0
  %25 = load i64, i64* @PAGE_SIZE, align 8
  br label %27

26:                                               ; preds = %0
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %26 ]
  %29 = load i64, i64* %1, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* @cpu_has_dc_aliases, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i64, i64* @shm_align_mask, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i64, i64* %1, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PF_RANDOMIZE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i64, i64* @VDSO_RANDOMIZE_SIZE, align 8
  %47 = load i64, i64* %1, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %1, align 8
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i64, i64* %1, align 8
  ret i64 %50
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i64 @mips_gic_present(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
