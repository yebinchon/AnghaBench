; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_ds_clear_cea.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_ds_clear_cea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_NONE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ds_clear_cea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_clear_cea(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = call i32 (...) @preempt_disable()
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @PAGE_NONE, align 4
  %17 = call i32 @cea_set_pte(i8* %15, i32 0, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr i8, i8* %23, i64 %22
  store i8* %24, i8** %3, align 8
  br label %10

25:                                               ; preds = %10
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @flush_tlb_kernel_range(i64 %26, i64 %29)
  %31 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cea_set_pte(i8*, i32, i32) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
