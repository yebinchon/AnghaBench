; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_drmem.c_drmem_lmb_memory_max.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_drmem.c_drmem_lmb_memory_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.drmem_lmb* }
%struct.drmem_lmb = type { i64 }

@drmem_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @drmem_lmb_memory_max() #0 {
  %1 = alloca %struct.drmem_lmb*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drmem_info, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %4 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drmem_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %4, i64 %9
  store %struct.drmem_lmb* %10, %struct.drmem_lmb** %1, align 8
  %11 = load %struct.drmem_lmb*, %struct.drmem_lmb** %1, align 8
  %12 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 (...) @drmem_lmb_size()
  %15 = add nsw i64 %13, %14
  ret i64 %15
}

declare dso_local i64 @drmem_lmb_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
