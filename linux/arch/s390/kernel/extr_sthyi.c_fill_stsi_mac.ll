; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_stsi_mac.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_stsi_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sthyi_sctns = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }
%struct.sysinfo_1_1_1 = type { i32, i32, i32, i32 }

@MAC_NAME_VLD = common dso_local global i32 0, align 4
@MAC_ID_VLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sthyi_sctns*, %struct.sysinfo_1_1_1*)* @fill_stsi_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_stsi_mac(%struct.sthyi_sctns* %0, %struct.sysinfo_1_1_1* %1) #0 {
  %3 = alloca %struct.sthyi_sctns*, align 8
  %4 = alloca %struct.sysinfo_1_1_1*, align 8
  store %struct.sthyi_sctns* %0, %struct.sthyi_sctns** %3, align 8
  store %struct.sysinfo_1_1_1* %1, %struct.sysinfo_1_1_1** %4, align 8
  %5 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %6 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @sclp_ocf_cpc_name_copy(i64 %8)
  %10 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %11 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @MAC_NAME_VLD, align 4
  %19 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %20 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %4, align 8
  %26 = call i64 @stsi(%struct.sysinfo_1_1_1* %25, i32 1, i32 1, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %68

29:                                               ; preds = %24
  %30 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %31 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %4, align 8
  %35 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %33, i32 %36, i32 4)
  %38 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %39 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %4, align 8
  %43 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32 %41, i32 %44, i32 4)
  %46 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %47 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %4, align 8
  %51 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %49, i32 %52, i32 4)
  %54 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %55 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %4, align 8
  %59 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32 %57, i32 %60, i32 4)
  %62 = load i32, i32* @MAC_ID_VLD, align 4
  %63 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %3, align 8
  %64 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @sclp_ocf_cpc_name_copy(i64) #1

declare dso_local i64 @stsi(%struct.sysinfo_1_1_1*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
