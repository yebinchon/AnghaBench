; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_handle_ext_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_handle_ext_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_bucket = type { i64 }
%struct.irq_desc = type { i32 }

@irq_map = common dso_local global %struct.irq_bucket** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @leon_handle_ext_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leon_handle_ext_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_bucket*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = call i32 (...) @sparc_leon3_cpuid()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @leon_eirq_get(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.irq_bucket**, %struct.irq_bucket*** @irq_map, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.irq_bucket*, %struct.irq_bucket** %9, i64 %11
  %13 = load %struct.irq_bucket*, %struct.irq_bucket** %12, align 8
  store %struct.irq_bucket* %13, %struct.irq_bucket** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 16
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.irq_bucket*, %struct.irq_bucket** %4, align 8
  %19 = icmp ne %struct.irq_bucket* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.irq_bucket*, %struct.irq_bucket** %4, align 8
  %22 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.irq_bucket*, %struct.irq_bucket** %4, align 8
  %27 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @generic_handle_irq(i64 %28)
  br label %30

30:                                               ; preds = %25, %20, %17, %1
  ret void
}

declare dso_local i32 @sparc_leon3_cpuid(...) #1

declare dso_local i32 @leon_eirq_get(i32) #1

declare dso_local i32 @generic_handle_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
