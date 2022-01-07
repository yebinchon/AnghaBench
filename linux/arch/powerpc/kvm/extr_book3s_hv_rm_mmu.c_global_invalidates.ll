; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_global_invalidates.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_global_invalidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.kvm = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@local_paca = common dso_local global %struct.TYPE_8__* null, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*)* @global_invalidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_invalidates(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @local_paca, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %18

17:                                               ; preds = %10, %1
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @smp_wmb()
  %23 = load %struct.kvm*, %struct.kvm** %2, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = call i32 @cpumask_setall(i32* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @local_paca, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %34 = call i64 @cpu_has_feature(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @cpu_first_thread_sibling(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %21
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.kvm*, %struct.kvm** %2, align 8
  %42 = getelementptr inbounds %struct.kvm, %struct.kvm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = call i32 @cpumask_clear_cpu(i32 %40, i32* %43)
  br label %45

45:                                               ; preds = %39, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @cpumask_setall(i32*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
