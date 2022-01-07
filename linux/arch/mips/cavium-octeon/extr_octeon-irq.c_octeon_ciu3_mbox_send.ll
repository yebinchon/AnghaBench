; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_ciu3_mbox_send.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_ciu3_mbox_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_ciu3_info = type { i64 }
%union.cvmx_ciu3_iscx_w1s = type { i64 }
%struct.TYPE_2__ = type { i32 }

@CIU3_MBOX_PER_CORE = common dso_local global i32 0, align 4
@octeon_ciu3_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_ciu3_mbox_send(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_ciu3_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_ciu3_iscx_w1s, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CIU3_MBOX_PER_CORE, align 4
  %11 = icmp uge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @octeon_irq_ciu3_mbox_intsn_for_cpu(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @octeon_ciu3_info, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.octeon_ciu3_info* @per_cpu(i32 %20, i32 %21)
  store %struct.octeon_ciu3_info* %22, %struct.octeon_ciu3_info** %5, align 8
  %23 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %5, align 8
  %24 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @CIU3_ISC_W1S(i32 %26)
  %28 = add nsw i64 %25, %27
  store i64 %28, i64* %8, align 8
  %29 = bitcast %union.cvmx_ciu3_iscx_w1s* %7 to i64*
  store i64 0, i64* %29, align 8
  %30 = bitcast %union.cvmx_ciu3_iscx_w1s* %7 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = bitcast %union.cvmx_ciu3_iscx_w1s* %7 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @cvmx_write_csr(i64 %32, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @cvmx_read_csr(i64 %36)
  br label %38

38:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @octeon_irq_ciu3_mbox_intsn_for_cpu(i32, i32) #1

declare dso_local %struct.octeon_ciu3_info* @per_cpu(i32, i32) #1

declare dso_local i64 @CIU3_ISC_W1S(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
