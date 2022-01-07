; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_gather_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_gather_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mce = type { i32, i32, i8* }
%struct.pt_regs = type { i32, i8* }

@MSR_IA32_MCG_STATUS = common dso_local global i64 0, align 8
@MCG_STATUS_RIPV = common dso_local global i32 0, align 4
@MCG_STATUS_EIPV = common dso_local global i32 0, align 4
@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mce*, %struct.pt_regs*)* @mce_gather_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_gather_info(%struct.mce* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.mce*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  store %struct.mce* %0, %struct.mce** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load %struct.mce*, %struct.mce** %3, align 8
  %6 = call i32 @mce_setup(%struct.mce* %5)
  %7 = load i64, i64* @MSR_IA32_MCG_STATUS, align 8
  %8 = call i8* @mce_rdmsrl(i64 %7)
  %9 = ptrtoint i8* %8 to i32
  %10 = load %struct.mce*, %struct.mce** %3, align 8
  %11 = getelementptr inbounds %struct.mce, %struct.mce* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = icmp ne %struct.pt_regs* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load %struct.mce*, %struct.mce** %3, align 8
  %16 = getelementptr inbounds %struct.mce, %struct.mce* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MCG_STATUS_RIPV, align 4
  %19 = load i32, i32* @MCG_STATUS_EIPV, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %14
  %24 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.mce*, %struct.mce** %3, align 8
  %28 = getelementptr inbounds %struct.mce, %struct.mce* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mce*, %struct.mce** %3, align 8
  %33 = getelementptr inbounds %struct.mce, %struct.mce* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = call i64 @v8086_mode(%struct.pt_regs* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.mce*, %struct.mce** %3, align 8
  %39 = getelementptr inbounds %struct.mce, %struct.mce* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 3
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %23
  br label %43

43:                                               ; preds = %42, %14
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %48 = call i8* @mce_rdmsrl(i64 %47)
  %49 = load %struct.mce*, %struct.mce** %3, align 8
  %50 = getelementptr inbounds %struct.mce, %struct.mce* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %2
  ret void
}

declare dso_local i32 @mce_setup(%struct.mce*) #1

declare dso_local i8* @mce_rdmsrl(i64) #1

declare dso_local i64 @v8086_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
