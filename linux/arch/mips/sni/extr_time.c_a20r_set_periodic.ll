; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_time.c_a20r_set_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_time.c_a20r_set_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@A20R_PT_CLOCK_BASE = common dso_local global i64 0, align 8
@SNI_COUNTER0_DIV = common dso_local global i32 0, align 4
@SNI_COUNTER2_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @a20r_set_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a20r_set_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load i64, i64* @A20R_PT_CLOCK_BASE, align 8
  %4 = add nsw i64 %3, 12
  %5 = inttoptr i64 %4 to i32*
  store volatile i32 52, i32* %5, align 4
  %6 = call i32 (...) @wmb()
  %7 = load i32, i32* @SNI_COUNTER0_DIV, align 4
  %8 = load i64, i64* @A20R_PT_CLOCK_BASE, align 8
  %9 = add nsw i64 %8, 0
  %10 = inttoptr i64 %9 to i32*
  store volatile i32 %7, i32* %10, align 4
  %11 = call i32 (...) @wmb()
  %12 = load i32, i32* @SNI_COUNTER0_DIV, align 4
  %13 = ashr i32 %12, 8
  %14 = load i64, i64* @A20R_PT_CLOCK_BASE, align 8
  %15 = add nsw i64 %14, 0
  %16 = inttoptr i64 %15 to i32*
  store volatile i32 %13, i32* %16, align 4
  %17 = call i32 (...) @wmb()
  %18 = load i64, i64* @A20R_PT_CLOCK_BASE, align 8
  %19 = add nsw i64 %18, 12
  %20 = inttoptr i64 %19 to i32*
  store volatile i32 180, i32* %20, align 4
  %21 = call i32 (...) @wmb()
  %22 = load i32, i32* @SNI_COUNTER2_DIV, align 4
  %23 = load i64, i64* @A20R_PT_CLOCK_BASE, align 8
  %24 = add nsw i64 %23, 8
  %25 = inttoptr i64 %24 to i32*
  store volatile i32 %22, i32* %25, align 4
  %26 = call i32 (...) @wmb()
  %27 = load i32, i32* @SNI_COUNTER2_DIV, align 4
  %28 = ashr i32 %27, 8
  %29 = load i64, i64* @A20R_PT_CLOCK_BASE, align 8
  %30 = add nsw i64 %29, 8
  %31 = inttoptr i64 %30 to i32*
  store volatile i32 %28, i32* %31, align 4
  %32 = call i32 (...) @wmb()
  ret i32 0
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
