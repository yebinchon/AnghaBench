; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_prefix_unmapped_sync.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_prefix_unmapped_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsie_page = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PROG_IN_SIE = common dso_local global i32 0, align 4
@CPUSTAT_STOP_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsie_page*)* @prefix_unmapped_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefix_unmapped_sync(%struct.vsie_page* %0) #0 {
  %2 = alloca %struct.vsie_page*, align 8
  store %struct.vsie_page* %0, %struct.vsie_page** %2, align 8
  %3 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %4 = call i32 @prefix_unmapped(%struct.vsie_page* %3)
  %5 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %6 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PROG_IN_SIE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @CPUSTAT_STOP_INT, align 4
  %14 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %15 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @atomic_or(i32 %13, i32* %16)
  br label %18

18:                                               ; preds = %12, %1
  br label %19

19:                                               ; preds = %27, %18
  %20 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %21 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PROG_IN_SIE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 (...) @cpu_relax()
  br label %19

29:                                               ; preds = %19
  ret void
}

declare dso_local i32 @prefix_unmapped(%struct.vsie_page*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
