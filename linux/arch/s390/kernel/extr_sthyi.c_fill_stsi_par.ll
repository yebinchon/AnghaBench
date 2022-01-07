; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_stsi_par.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_stsi_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sthyi_sctns = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sysinfo_2_2_2 = type { i32, i32 }

@PAR_ID_VLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sthyi_sctns*, %struct.sysinfo_2_2_2*)* @fill_stsi_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_stsi_par(%struct.sthyi_sctns* %0, %struct.sysinfo_2_2_2* %1) #0 {
  %3 = alloca %struct.sthyi_sctns*, align 8
  %4 = alloca %struct.sysinfo_2_2_2*, align 8
  store %struct.sthyi_sctns* %0, %struct.sthyi_sctns** %3, align 8
  store %struct.sysinfo_2_2_2* %1, %struct.sysinfo_2_2_2** %4, align 8
  %5 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %4, align 8
  %6 = call i64 @stsi(%struct.sysinfo_2_2_2* %5, i32 2, i32 2, i32 2)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %30

9:                                                ; preds = %2
  %10 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %4, align 8
  %11 = getelementptr inbounds %struct.sysinfo_2_2_2, %struct.sysinfo_2_2_2* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %14 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  %16 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %17 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %4, align 8
  %21 = getelementptr inbounds %struct.sysinfo_2_2_2, %struct.sysinfo_2_2_2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32 %19, i32 %22, i32 4)
  %24 = load i32, i32* @PAR_ID_VLD, align 4
  %25 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %26 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @stsi(%struct.sysinfo_2_2_2*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
