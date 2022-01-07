; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_measure_cycles_lat_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_measure_cycles_lat_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseudo_lock_region = type { i64, i32, i32, i32 }

@MSR_MISC_FEATURE_CONTROL = common dso_local global i32 0, align 4
@prefetch_disable_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @measure_cycles_lat_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @measure_cycles_lat_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pseudo_lock_region*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pseudo_lock_region*
  store %struct.pseudo_lock_region* %9, %struct.pseudo_lock_region** %3, align 8
  %10 = call i32 (...) @local_irq_disable()
  %11 = load i32, i32* @MSR_MISC_FEATURE_CONTROL, align 4
  %12 = load i32, i32* @prefetch_disable_bits, align 4
  %13 = call i32 @wrmsr(i32 %11, i32 %12, i32 0)
  %14 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %15 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @READ_ONCE(i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = call i64 (...) @rdtsc_ordered()
  store i64 %18, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %35, %1
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %22 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = call i64 (...) @rdtsc_ordered()
  store i64 %26, i64* %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %4, align 8
  call void asm sideeffect "mov ($0,$1,1), %eax\0A\09", "r,r,~{eax},~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %27, i64 %28) #2, !srcloc !2
  %29 = call i64 (...) @rdtsc_ordered()
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = sub nsw i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @trace_pseudo_lock_mem_latency(i32 %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 32
  store i64 %37, i64* %4, align 8
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* @MSR_MISC_FEATURE_CONTROL, align 4
  %40 = call i32 @wrmsr(i32 %39, i32 0, i32 0)
  %41 = call i32 (...) @local_irq_enable()
  %42 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %43 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %3, align 8
  %45 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %44, i32 0, i32 2
  %46 = call i32 @wake_up_interruptible(i32* %45)
  ret i32 0
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i64 @rdtsc_ordered(...) #1

declare dso_local i32 @trace_pseudo_lock_mem_latency(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 953, i32 976}
