; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c_fsl_mpic_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c_fsl_mpic_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { i32, i32, i32 }

@MPIC_FSL = common dso_local global i32 0, align 4
@MPIC_FSL_BRR1 = common dso_local global i32 0, align 4
@MPIC_FSL_BRR1_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpic*)* @fsl_mpic_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_mpic_get_version(%struct.mpic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpic*, align 8
  %4 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %3, align 8
  %5 = load %struct.mpic*, %struct.mpic** %3, align 8
  %6 = getelementptr inbounds %struct.mpic, %struct.mpic* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MPIC_FSL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.mpic*, %struct.mpic** %3, align 8
  %14 = getelementptr inbounds %struct.mpic, %struct.mpic* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mpic*, %struct.mpic** %3, align 8
  %17 = getelementptr inbounds %struct.mpic, %struct.mpic* %16, i32 0, i32 1
  %18 = load i32, i32* @MPIC_FSL_BRR1, align 4
  %19 = call i32 @_mpic_read(i32 %15, i32* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MPIC_FSL_BRR1_VER, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @_mpic_read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
