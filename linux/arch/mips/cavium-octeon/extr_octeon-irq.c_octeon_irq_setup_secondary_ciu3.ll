; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_setup_secondary_ciu3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_setup_secondary_ciu3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_ciu3_info = type { i32 }

@octeon_ciu3_info_per_node = common dso_local global %struct.octeon_ciu3_info** null, align 8
@STATUSF_IP3 = common dso_local global i32 0, align 4
@STATUSF_IP2 = common dso_local global i32 0, align 4
@octeon_irq_use_ip4 = common dso_local global i64 0, align 8
@STATUSF_IP4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_irq_setup_secondary_ciu3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_setup_secondary_ciu3() #0 {
  %1 = alloca %struct.octeon_ciu3_info*, align 8
  %2 = load %struct.octeon_ciu3_info**, %struct.octeon_ciu3_info*** @octeon_ciu3_info_per_node, align 8
  %3 = call i64 (...) @cvmx_get_node_num()
  %4 = getelementptr inbounds %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %2, i64 %3
  %5 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %4, align 8
  store %struct.octeon_ciu3_info* %5, %struct.octeon_ciu3_info** %1, align 8
  %6 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %1, align 8
  %7 = call i32 @octeon_irq_ciu3_alloc_resources(%struct.octeon_ciu3_info* %6)
  %8 = call i32 (...) @irq_cpu_online()
  %9 = load i32, i32* @STATUSF_IP3, align 4
  %10 = load i32, i32* @STATUSF_IP2, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @set_c0_status(i32 %11)
  %13 = load i64, i64* @octeon_irq_use_ip4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @STATUSF_IP4, align 4
  %17 = call i32 @set_c0_status(i32 %16)
  br label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @STATUSF_IP4, align 4
  %20 = call i32 @clear_c0_status(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

declare dso_local i64 @cvmx_get_node_num(...) #1

declare dso_local i32 @octeon_irq_ciu3_alloc_resources(%struct.octeon_ciu3_info*) #1

declare dso_local i32 @irq_cpu_online(...) #1

declare dso_local i32 @set_c0_status(i32) #1

declare dso_local i32 @clear_c0_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
