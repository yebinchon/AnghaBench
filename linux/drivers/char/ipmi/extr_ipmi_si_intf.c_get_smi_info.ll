; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_get_smi_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_get_smi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_info = type { i32, i32, i32 }
%struct.smi_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ipmi_smi_info*)* @get_smi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_smi_info(i8* %0, %struct.ipmi_smi_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ipmi_smi_info*, align 8
  %5 = alloca %struct.smi_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ipmi_smi_info* %1, %struct.ipmi_smi_info** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.smi_info*
  store %struct.smi_info* %7, %struct.smi_info** %5, align 8
  %8 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %9 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ipmi_smi_info*, %struct.ipmi_smi_info** %4, align 8
  %13 = getelementptr inbounds %struct.ipmi_smi_info, %struct.ipmi_smi_info* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %15 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipmi_smi_info*, %struct.ipmi_smi_info** %4, align 8
  %19 = getelementptr inbounds %struct.ipmi_smi_info, %struct.ipmi_smi_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %21 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ipmi_smi_info*, %struct.ipmi_smi_info** %4, align 8
  %25 = getelementptr inbounds %struct.ipmi_smi_info, %struct.ipmi_smi_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %27 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_device(i32 %29)
  ret i32 0
}

declare dso_local i32 @get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
