; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c___set_pmb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c___set_pmb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmb_entry = type { i32, i32, i32, i32 }

@PMB_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmb_entry*)* @__set_pmb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_pmb_entry(%struct.pmb_entry* %0) #0 {
  %2 = alloca %struct.pmb_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.pmb_entry* %0, %struct.pmb_entry** %2, align 8
  %5 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %6 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @mk_pmb_addr(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %10 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @mk_pmb_data(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = call i32 (...) @jump_to_uncached()
  %14 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %15 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PMB_V, align 4
  %18 = or i32 %16, %17
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @__raw_writel(i32 %18, i64 %19)
  %21 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %22 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %25 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = load i32, i32* @PMB_V, align 4
  %29 = or i32 %27, %28
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @__raw_writel(i32 %29, i64 %30)
  %32 = call i32 (...) @back_to_cached()
  ret void
}

declare dso_local i64 @mk_pmb_addr(i32) #1

declare dso_local i64 @mk_pmb_data(i32) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @back_to_cached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
