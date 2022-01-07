; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_mid_set_initial_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_mid_set_initial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pwr = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@CMD_SET_CFG = common dso_local global i32 0, align 4
@LSS_MAX_DEVS = common dso_local global i32 0, align 4
@LSS_MAX_SHARED_DEVS = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mid_pwr*, i32*)* @mid_set_initial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mid_set_initial_state(%struct.mid_pwr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mid_pwr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mid_pwr* %0, %struct.mid_pwr** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.mid_pwr*, %struct.mid_pwr** %4, align 8
  %10 = call i32 @mid_pwr_set_wake(%struct.mid_pwr* %9, i32 0, i32 -1)
  %11 = load %struct.mid_pwr*, %struct.mid_pwr** %4, align 8
  %12 = call i32 @mid_pwr_set_wake(%struct.mid_pwr* %11, i32 1, i32 -1)
  %13 = load %struct.mid_pwr*, %struct.mid_pwr** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mid_pwr_set_state(%struct.mid_pwr* %13, i32 0, i32 %16)
  %18 = load %struct.mid_pwr*, %struct.mid_pwr** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mid_pwr_set_state(%struct.mid_pwr* %18, i32 1, i32 %21)
  %23 = load %struct.mid_pwr*, %struct.mid_pwr** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mid_pwr_set_state(%struct.mid_pwr* %23, i32 2, i32 %26)
  %28 = load %struct.mid_pwr*, %struct.mid_pwr** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mid_pwr_set_state(%struct.mid_pwr* %28, i32 3, i32 %31)
  %33 = load %struct.mid_pwr*, %struct.mid_pwr** %4, align 8
  %34 = load i32, i32* @CMD_SET_CFG, align 4
  %35 = call i32 @mid_pwr_wait_for_cmd(%struct.mid_pwr* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %67, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @LSS_MAX_DEVS, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @LSS_MAX_SHARED_DEVS, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i32, i32* @PCI_D3hot, align 4
  %52 = load %struct.mid_pwr*, %struct.mid_pwr** %4, align 8
  %53 = getelementptr inbounds %struct.mid_pwr, %struct.mid_pwr* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %51, i32* %62, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %46

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %41

70:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @mid_pwr_set_wake(%struct.mid_pwr*, i32, i32) #1

declare dso_local i32 @mid_pwr_set_state(%struct.mid_pwr*, i32, i32) #1

declare dso_local i32 @mid_pwr_wait_for_cmd(%struct.mid_pwr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
