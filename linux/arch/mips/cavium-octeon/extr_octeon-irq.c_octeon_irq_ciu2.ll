; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@octeon_irq_ciu_to_irq = common dso_local global i32** null, align 8
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@CVMX_CIU2_INTR_CIU_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_irq_ciu2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_ciu2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = call i64 (...) @cvmx_get_core_num()
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @CVMX_CIU2_SUM_PPX_IP2(i64 %9)
  %11 = call i32 @cvmx_read_csr(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = and i64 %12, 255
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %63

22:                                               ; preds = %0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @fls64(i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @CVMX_CIU2_SRC_PPX_IP2_WRKQ(i64 %26)
  %28 = load i32, i32* %1, align 4
  %29 = mul nsw i32 4096, %28
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @cvmx_read_csr(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %63

40:                                               ; preds = %22
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @fls64(i32 %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  %44 = load i32**, i32*** @octeon_irq_ciu_to_irq, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %63

60:                                               ; preds = %40
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @do_IRQ(i32 %61)
  br label %65

63:                                               ; preds = %59, %39, %21
  %64 = call i32 (...) @spurious_interrupt()
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* @OCTEON_CN68XX, align 4
  %67 = call i64 @OCTEON_IS_MODEL(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @CVMX_CIU2_INTR_CIU_READY, align 4
  %71 = call i32 @cvmx_read_csr(i32 %70)
  br label %76

72:                                               ; preds = %65
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @CVMX_CIU2_ACK_PPX_IP2(i64 %73)
  %75 = call i32 @cvmx_read_csr(i32 %74)
  br label %76

76:                                               ; preds = %72, %69
  ret void
}

declare dso_local i64 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU2_SUM_PPX_IP2(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fls64(i32) #1

declare dso_local i32 @CVMX_CIU2_SRC_PPX_IP2_WRKQ(i64) #1

declare dso_local i32 @do_IRQ(i32) #1

declare dso_local i32 @spurious_interrupt(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_CIU2_ACK_PPX_IP2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
