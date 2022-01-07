; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ldt.c_install_ldt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ldt.c_install_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ldt_struct = type { i32 }

@flush_ldt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.ldt_struct*)* @install_ldt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_ldt(%struct.mm_struct* %0, %struct.ldt_struct* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.ldt_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.ldt_struct* %1, %struct.ldt_struct** %4, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  %13 = call i32 @smp_store_release(i32* %11, %struct.ldt_struct* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %15 = call i32 @mm_cpumask(%struct.mm_struct* %14)
  %16 = load i32, i32* @flush_ldt, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %18 = call i32 @on_each_cpu_mask(i32 %15, i32 %16, %struct.mm_struct* %17, i32 1)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smp_store_release(i32*, %struct.ldt_struct*) #1

declare dso_local i32 @on_each_cpu_mask(i32, i32, %struct.mm_struct*, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
