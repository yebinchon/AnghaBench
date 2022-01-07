; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_ciu3_info = type { i64 }

@octeon_ciu3_info = common dso_local global i32 0, align 4
@octeon_irq_ciu3_idt_ip2 = common dso_local global i32 0, align 4
@octeon_irq_ciu3_idt_ip3 = common dso_local global i32 0, align 4
@CIU3_MBOX_PER_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_ciu3_info*)* @octeon_irq_ciu3_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_irq_ciu3_alloc_resources(%struct.octeon_ciu3_info* %0) #0 {
  %2 = alloca %struct.octeon_ciu3_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_ciu3_info* %0, %struct.octeon_ciu3_info** %2, align 8
  %11 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = call i32 (...) @cvmx_get_local_core_num()
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @octeon_ciu3_info, align 4
  %16 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %2, align 8
  %17 = call i32 (i32, ...) @__this_cpu_write(i32 %15, %struct.octeon_ciu3_info* %16)
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %21, 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 4
  %26 = add nsw i32 %25, 3
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @octeon_irq_ciu3_idt_ip2, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, ...) @__this_cpu_write(i32 %30, i32 %31)
  %33 = load i32, i32* @octeon_irq_ciu3_idt_ip3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32, ...) @__this_cpu_write(i32 %33, i32 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @CIU3_IDT_CTL(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @cvmx_write_csr(i64 %39, i32 0)
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @CIU3_IDT_PP(i32 %42, i32 0)
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = shl i64 1, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @cvmx_write_csr(i64 %44, i32 %48)
  %50 = load i64, i64* %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @CIU3_IDT_IO(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = call i32 @cvmx_write_csr(i64 %53, i32 0)
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @CIU3_IDT_CTL(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @cvmx_write_csr(i64 %58, i32 1)
  %60 = load i64, i64* %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @CIU3_IDT_PP(i32 %61, i32 0)
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @cvmx_write_csr(i64 %63, i32 %67)
  %69 = load i64, i64* %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @CIU3_IDT_IO(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i32 @cvmx_write_csr(i64 %72, i32 0)
  %74 = load i64, i64* %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @CIU3_IDT_CTL(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = call i32 @cvmx_write_csr(i64 %77, i32 2)
  %79 = load i64, i64* %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @CIU3_IDT_PP(i32 %80, i32 0)
  %82 = add nsw i64 %79, %81
  %83 = call i32 @cvmx_write_csr(i64 %82, i32 0)
  %84 = load i64, i64* %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @CIU3_IDT_IO(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = call i32 @cvmx_write_csr(i64 %87, i32 0)
  %89 = load i64, i64* %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @CIU3_IDT_CTL(i32 %90)
  %92 = add nsw i64 %89, %91
  %93 = call i32 @cvmx_write_csr(i64 %92, i32 0)
  %94 = load i64, i64* %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @CIU3_IDT_PP(i32 %95, i32 0)
  %97 = add nsw i64 %94, %96
  %98 = call i32 @cvmx_write_csr(i64 %97, i32 0)
  %99 = load i64, i64* %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @CIU3_IDT_IO(i32 %100)
  %102 = add nsw i64 %99, %101
  %103 = call i32 @cvmx_write_csr(i64 %102, i32 0)
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %122, %1
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @CIU3_MBOX_PER_CORE, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @octeon_irq_ciu3_mbox_intsn_for_core(i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i64, i64* %3, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i64 @CIU3_ISC_W1C(i32 %113)
  %115 = add nsw i64 %112, %114
  %116 = call i32 @cvmx_write_csr(i64 %115, i32 2)
  %117 = load i64, i64* %3, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @CIU3_ISC_CTL(i32 %118)
  %120 = add nsw i64 %117, %119
  %121 = call i32 @cvmx_write_csr(i64 %120, i32 0)
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %104

125:                                              ; preds = %104
  ret i32 0
}

declare dso_local i32 @cvmx_get_local_core_num(...) #1

declare dso_local i32 @__this_cpu_write(i32, ...) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

declare dso_local i64 @CIU3_IDT_CTL(i32) #1

declare dso_local i64 @CIU3_IDT_PP(i32, i32) #1

declare dso_local i64 @CIU3_IDT_IO(i32) #1

declare dso_local i32 @octeon_irq_ciu3_mbox_intsn_for_core(i32, i32) #1

declare dso_local i64 @CIU3_ISC_W1C(i32) #1

declare dso_local i64 @CIU3_ISC_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
