; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no memory for private data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtl8366_smi* @rtl8366_smi_alloc(%struct.device* %0) #0 {
  %2 = alloca %struct.rtl8366_smi*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtl8366_smi*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = icmp ne %struct.device* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rtl8366_smi* @kzalloc(i32 8, i32 %10)
  store %struct.rtl8366_smi* %11, %struct.rtl8366_smi** %4, align 8
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %13 = icmp ne %struct.rtl8366_smi* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.rtl8366_smi* null, %struct.rtl8366_smi** %2, align 8
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %20 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %19, i32 0, i32 0
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  store %struct.rtl8366_smi* %21, %struct.rtl8366_smi** %2, align 8
  br label %22

22:                                               ; preds = %17, %14
  %23 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  ret %struct.rtl8366_smi* %23
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.rtl8366_smi* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
