; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_update_intervention_requests.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_update_intervention_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsie_page = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CPUSTAT_STOP_INT = common dso_local global i32 0, align 4
@CPUSTAT_IO_INT = common dso_local global i32 0, align 4
@CPUSTAT_EXT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsie_page*)* @update_intervention_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_intervention_requests(%struct.vsie_page* %0) #0 {
  %2 = alloca %struct.vsie_page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vsie_page* %0, %struct.vsie_page** %2, align 8
  %5 = load i32, i32* @CPUSTAT_STOP_INT, align 4
  %6 = load i32, i32* @CPUSTAT_IO_INT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CPUSTAT_EXT_INT, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %11 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %17 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @atomic_andnot(i32 %15, i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %24 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @atomic_or(i32 %22, i32* %25)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
