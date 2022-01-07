; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_read_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_buffer = type { i32, i32, i32* }
%struct.topa_page = type { i32 }

@MSR_IA32_RTIT_OUTPUT_BASE = common dso_local global i32 0, align 4
@MSR_IA32_RTIT_OUTPUT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_buffer*)* @pt_read_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_read_offset(%struct.pt_buffer* %0) #0 {
  %2 = alloca %struct.pt_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.topa_page*, align 8
  store %struct.pt_buffer* %0, %struct.pt_buffer** %2, align 8
  %6 = load i32, i32* @MSR_IA32_RTIT_OUTPUT_BASE, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @rdmsrl(i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.topa_page* @phys_to_virt(i32 %9)
  store %struct.topa_page* %10, %struct.topa_page** %5, align 8
  %11 = load %struct.topa_page*, %struct.topa_page** %5, align 8
  %12 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %11, i32 0, i32 0
  %13 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load i32, i32* @MSR_IA32_RTIT_OUTPUT_MASK, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @rdmsrl(i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 32
  %20 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, -128
  %24 = lshr i32 %23, 7
  %25 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %26 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local %struct.topa_page* @phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
