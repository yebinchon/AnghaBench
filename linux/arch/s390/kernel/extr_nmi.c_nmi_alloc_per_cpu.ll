; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_nmi.c_nmi_alloc_per_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_nmi.c_nmi_alloc_per_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowcore = type { i64 }

@mcesa_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcesa_origin_lc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nmi_alloc_per_cpu(%struct.lowcore* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lowcore*, align 8
  %4 = alloca i64, align 8
  store %struct.lowcore* %0, %struct.lowcore** %3, align 8
  %5 = call i32 (...) @nmi_needs_mcesa()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @mcesa_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @kmem_cache_alloc(i32 %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %8
  %18 = load i64, i64* %4, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @kmemleak_not_leak(i8* %19)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @mcesa_origin_lc, align 8
  %23 = or i64 %21, %22
  %24 = load %struct.lowcore*, %struct.lowcore** %3, align 8
  %25 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %14, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @nmi_needs_mcesa(...) #1

declare dso_local i64 @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kmemleak_not_leak(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
