; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32 }

@EEH_PE_PHB = common dso_local global i32 0, align 4
@EEH_STATE_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeh_pe*, i32*)* @pnv_eeh_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_eeh_get_state(%struct.eeh_pe* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eeh_pe*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.eeh_pe* %0, %struct.eeh_pe** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %8 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EEH_PE_PHB, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %15 = call i32 @pnv_eeh_get_phb_state(%struct.eeh_pe* %14)
  store i32 %15, i32* %6, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %18 = call i32 @pnv_eeh_get_pe_state(%struct.eeh_pe* %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EEH_STATE_UNAVAILABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  store i32 1000, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @pnv_eeh_get_phb_state(%struct.eeh_pe*) #1

declare dso_local i32 @pnv_eeh_get_pe_state(%struct.eeh_pe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
