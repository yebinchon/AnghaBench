; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-pxa/extr_mfp.c___mfp_config_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-pxa/extr_mfp.c___mfp_config_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfp_pin = type { i64, i64, i32 }

@MFPR_EDGE_BOTH = common dso_local global i64 0, align 8
@MFPR_EDGE_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfp_pin*)* @__mfp_config_lpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mfp_config_lpm(%struct.mfp_pin* %0) #0 {
  %2 = alloca %struct.mfp_pin*, align 8
  %3 = alloca i64, align 8
  store %struct.mfp_pin* %0, %struct.mfp_pin** %2, align 8
  %4 = load %struct.mfp_pin*, %struct.mfp_pin** %2, align 8
  %5 = call i64 @mfp_configured(%struct.mfp_pin* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = load %struct.mfp_pin*, %struct.mfp_pin** %2, align 8
  %9 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MFPR_EDGE_BOTH, align 8
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  %14 = load i64, i64* @MFPR_EDGE_CLEAR, align 8
  %15 = or i64 %13, %14
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.mfp_pin*, %struct.mfp_pin** %2, align 8
  %18 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %7
  %22 = load %struct.mfp_pin*, %struct.mfp_pin** %2, align 8
  %23 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @mfpr_writel(i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %21, %7
  %28 = load %struct.mfp_pin*, %struct.mfp_pin** %2, align 8
  %29 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.mfp_pin*, %struct.mfp_pin** %2, align 8
  %35 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mfp_pin*, %struct.mfp_pin** %2, align 8
  %38 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mfpr_writel(i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i64 @mfp_configured(%struct.mfp_pin*) #1

declare dso_local i32 @mfpr_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
