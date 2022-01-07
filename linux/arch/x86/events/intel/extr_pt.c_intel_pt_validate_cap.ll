; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_intel_pt_validate_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_intel_pt_validate_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_cap_desc = type { i64, i64, i32 }

@pt_caps = common dso_local global %struct.pt_cap_desc* null, align 8
@PT_CPUID_REGS_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pt_validate_cap(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_cap_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pt_cap_desc*, %struct.pt_cap_desc** @pt_caps, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.pt_cap_desc, %struct.pt_cap_desc* %8, i64 %10
  store %struct.pt_cap_desc* %11, %struct.pt_cap_desc** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pt_cap_desc*, %struct.pt_cap_desc** %5, align 8
  %14 = getelementptr inbounds %struct.pt_cap_desc, %struct.pt_cap_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PT_CPUID_REGS_NUM, align 8
  %17 = mul i64 %15, %16
  %18 = load %struct.pt_cap_desc*, %struct.pt_cap_desc** %5, align 8
  %19 = getelementptr inbounds %struct.pt_cap_desc, %struct.pt_cap_desc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  %22 = getelementptr inbounds i32, i32* %12, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.pt_cap_desc*, %struct.pt_cap_desc** %5, align 8
  %25 = getelementptr inbounds %struct.pt_cap_desc, %struct.pt_cap_desc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @__ffs(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.pt_cap_desc*, %struct.pt_cap_desc** %5, align 8
  %30 = getelementptr inbounds %struct.pt_cap_desc, %struct.pt_cap_desc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = load i32, i32* %7, align 4
  %34 = lshr i32 %32, %33
  ret i32 %34
}

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
