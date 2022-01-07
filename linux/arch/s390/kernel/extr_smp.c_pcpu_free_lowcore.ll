; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_free_lowcore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_free_lowcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@STACK_INIT_OFFSET = common dso_local global i64 0, align 8
@SIGP_SET_PREFIX = common dso_local global i32 0, align 4
@lowcore_ptr = common dso_local global i32** null, align 8
@pcpu_devices = common dso_local global %struct.pcpu* null, align 8
@THREAD_SIZE_ORDER = common dso_local global i32 0, align 4
@LC_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcpu*)* @pcpu_free_lowcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpu_free_lowcore(%struct.pcpu* %0) #0 {
  %2 = alloca %struct.pcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pcpu* %0, %struct.pcpu** %2, align 8
  %6 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %7 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @STACK_INIT_OFFSET, align 8
  %12 = sub i64 %10, %11
  store i64 %12, i64* %4, align 8
  %13 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %14 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STACK_INIT_OFFSET, align 8
  %19 = sub i64 %17, %18
  store i64 %19, i64* %3, align 8
  %20 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %21 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = ptrtoint %struct.TYPE_3__* %22 to i64
  store i64 %23, i64* %5, align 8
  %24 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %25 = load i32, i32* @SIGP_SET_PREFIX, align 4
  %26 = call i32 @pcpu_sigp_retry(%struct.pcpu* %24, i32 %25, i32 0)
  %27 = load i32**, i32*** @lowcore_ptr, align 8
  %28 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %29 = load %struct.pcpu*, %struct.pcpu** @pcpu_devices, align 8
  %30 = ptrtoint %struct.pcpu* %28 to i64
  %31 = ptrtoint %struct.pcpu* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = getelementptr inbounds i32*, i32** %27, i64 %33
  store i32* null, i32** %34, align 8
  %35 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %36 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @vdso_free_per_cpu(%struct.TYPE_3__* %37)
  %39 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %40 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @nmi_free_per_cpu(%struct.TYPE_3__* %41)
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @stack_free(i64 %43)
  %45 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %46 = load %struct.pcpu*, %struct.pcpu** @pcpu_devices, align 8
  %47 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %46, i64 0
  %48 = icmp eq %struct.pcpu* %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  br label %57

50:                                               ; preds = %1
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* @THREAD_SIZE_ORDER, align 4
  %53 = call i32 @free_pages(i64 %51, i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @LC_ORDER, align 4
  %56 = call i32 @free_pages(i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @pcpu_sigp_retry(%struct.pcpu*, i32, i32) #1

declare dso_local i32 @vdso_free_per_cpu(%struct.TYPE_3__*) #1

declare dso_local i32 @nmi_free_per_cpu(%struct.TYPE_3__*) #1

declare dso_local i32 @stack_free(i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
