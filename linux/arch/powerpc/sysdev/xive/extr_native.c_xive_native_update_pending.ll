; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_update_pending.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_update_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_cpu = type { i32, i32 }

@xive_tima = common dso_local global i64 0, align 8
@TM_SPC_ACK_HV_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"CPU %d odd ack CPPR, got %d at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"CPU %d got unexpected interrupt type HE=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xive_cpu*)* @xive_native_update_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_native_update_pending(%struct.xive_cpu* %0) #0 {
  %2 = alloca %struct.xive_cpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xive_cpu* %0, %struct.xive_cpu** %2, align 8
  %6 = load i64, i64* @xive_tima, align 8
  %7 = load i64, i64* @TM_SPC_ACK_HV_REG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_readw(i64 %8)
  %10 = call i32 @be16_to_cpu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @mb()
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  %16 = ashr i32 %15, 6
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %50 [
    i32 130, label %18
    i32 129, label %19
    i32 128, label %46
    i32 131, label %46
  ]

18:                                               ; preds = %1
  br label %50

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %50

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %27 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %32 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = call i32 (...) @smp_processor_id()
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %39 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %35, %23
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %45 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %50

46:                                               ; preds = %1, %1
  %47 = call i32 (...) @smp_processor_id()
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %22, %46, %1, %42, %18
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @__raw_readw(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
