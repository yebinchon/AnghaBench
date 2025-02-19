; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_core.c_arch_uprobe_copy_ixol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_core.c_arch_uprobe_copy_ixol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_uprobe_copy_ixol(%struct.page* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i8* @kmap_atomic(%struct.page* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PAGE_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  %18 = getelementptr i8, i8* %13, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = call i32 (...) @preempt_disable()
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @memcpy(i8* %20, i8* %21, i64 %22)
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @flush_uprobe_xol_access(%struct.page* %24, i64 %25, i8* %26, i64 %27)
  %29 = call i32 (...) @preempt_enable()
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @kunmap_atomic(i8* %30)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @flush_uprobe_xol_access(%struct.page*, i64, i8*, i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
