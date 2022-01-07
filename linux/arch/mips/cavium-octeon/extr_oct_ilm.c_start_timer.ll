; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_oct_ilm.c_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_oct_ilm.c_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%union.cvmx_ciu_timx = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@li = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_ciu_timx, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = bitcast %union.cvmx_ciu_timx* %5 to i64*
  store i64 0, i64* %7, align 8
  %8 = bitcast %union.cvmx_ciu_timx* %5 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = bitcast %union.cvmx_ciu_timx* %5 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @raw_local_irq_save(i64 %13)
  %15 = call i8* (...) @read_c0_cvmcount()
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @li, i32 0, i32 1), align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @CVMX_CIU_TIMX(i32 %16)
  %18 = bitcast %union.cvmx_ciu_timx* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @cvmx_write_csr(i32 %17, i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CVMX_CIU_TIMX(i32 %21)
  %23 = call i64 @cvmx_read_csr(i32 %22)
  %24 = bitcast %union.cvmx_ciu_timx* %5 to i64*
  store i64 %23, i64* %24, align 8
  %25 = call i8* (...) @read_c0_cvmcount()
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @li, i32 0, i32 0), align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @raw_local_irq_restore(i64 %26)
  ret void
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i8* @read_c0_cvmcount(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_CIU_TIMX(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
