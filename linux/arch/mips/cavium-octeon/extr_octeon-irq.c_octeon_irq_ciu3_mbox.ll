; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ciu3_destx_pp_int = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.octeon_ciu3_info = type { i64 }
%union.cvmx_ciu3_iscx_w1c = type { i64 }
%struct.TYPE_4__ = type { i32 }

@octeon_ciu3_info = common dso_local global i32 0, align 4
@CIU3_MBOX_PER_CORE = common dso_local global i32 0, align 4
@OCTEON_IRQ_MBOX0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_irq_ciu3_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_ciu3_mbox() #0 {
  %1 = alloca %union.cvmx_ciu3_destx_pp_int, align 4
  %2 = alloca %struct.octeon_ciu3_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_ciu3_iscx_w1c, align 8
  %8 = alloca i64, align 8
  %9 = call i32 (...) @cvmx_get_local_core_num()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @octeon_ciu3_info, align 4
  %11 = call %struct.octeon_ciu3_info* @__this_cpu_read(i32 %10)
  store %struct.octeon_ciu3_info* %11, %struct.octeon_ciu3_info** %2, align 8
  %12 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %2, align 8
  %13 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 3, %16
  %18 = add nsw i32 1, %17
  %19 = call i64 @CIU3_DEST_PP_INT(i32 %18)
  %20 = add nsw i64 %15, %19
  %21 = call i32 @cvmx_read_csr(i64 %20)
  %22 = bitcast %union.cvmx_ciu3_destx_pp_int* %1 to i32*
  store i32 %21, i32* %22, align 4
  %23 = bitcast %union.cvmx_ciu3_destx_pp_int* %1 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %0
  %29 = bitcast %union.cvmx_ciu3_destx_pp_int* %1 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @octeon_irq_ciu3_base_mbox_intsn(i32 %33)
  %35 = sub nsw i32 %32, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CIU3_MBOX_PER_CORE, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %28
  %43 = phi i1 [ false, %28 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @OCTEON_IRQ_MBOX0, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @do_IRQ(i64 %51)
  br label %68

53:                                               ; preds = %42
  %54 = load i64, i64* %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @CIU3_ISC_W1C(i32 %55)
  %57 = add nsw i64 %54, %56
  store i64 %57, i64* %8, align 8
  %58 = bitcast %union.cvmx_ciu3_iscx_w1c* %7 to i64*
  store i64 0, i64* %58, align 8
  %59 = bitcast %union.cvmx_ciu3_iscx_w1c* %7 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = bitcast %union.cvmx_ciu3_iscx_w1c* %7 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @cvmx_write_csr(i64 %61, i64 %63)
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @cvmx_read_csr(i64 %65)
  %67 = call i32 (...) @spurious_interrupt()
  br label %68

68:                                               ; preds = %53, %47
  br label %71

69:                                               ; preds = %0
  %70 = call i32 (...) @spurious_interrupt()
  br label %71

71:                                               ; preds = %69, %68
  ret void
}

declare dso_local i32 @cvmx_get_local_core_num(...) #1

declare dso_local %struct.octeon_ciu3_info* @__this_cpu_read(i32) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

declare dso_local i64 @CIU3_DEST_PP_INT(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @octeon_irq_ciu3_base_mbox_intsn(i32) #1

declare dso_local i32 @do_IRQ(i64) #1

declare dso_local i64 @CIU3_ISC_W1C(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

declare dso_local i32 @spurious_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
