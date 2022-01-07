; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_ds_update_cea.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_ds_update_cea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32)* @ds_update_cea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_update_cea(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @virt_to_phys(i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = call i32 (...) @preempt_disable()
  br label %17

17:                                               ; preds = %26, %4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @cea_set_pte(i8* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr i8, i8* %36, i64 %35
  store i8* %37, i8** %5, align 8
  br label %17

38:                                               ; preds = %17
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @flush_tlb_kernel_range(i64 %39, i64 %42)
  %44 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @virt_to_phys(i8*) #1

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
