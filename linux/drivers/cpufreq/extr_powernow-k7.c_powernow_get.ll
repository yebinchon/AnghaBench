; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_powernow_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_powernow_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.msr_fidvidstatus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSR_K7_FID_VID_STATUS = common dso_local global i32 0, align 4
@fsb = common dso_local global i32 0, align 4
@fid_codes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @powernow_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernow_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.msr_fidvidstatus, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @MSR_K7_FID_VID_STATUS, align 4
  %11 = bitcast %union.msr_fidvidstatus* %4 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rdmsrl(i32 %10, i32 %12)
  %14 = bitcast %union.msr_fidvidstatus* %4 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @fsb, align 4
  %18 = load i32*, i32** @fid_codes, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %17, %22
  %24 = sdiv i32 %23, 10
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %9, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @rdmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
