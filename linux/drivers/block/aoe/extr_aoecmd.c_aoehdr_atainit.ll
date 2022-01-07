; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoehdr_atainit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoehdr_atainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, i32 }
%struct.aoetgt = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.aoe_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ETH_P_AOE = common dso_local global i32 0, align 4
@AOE_HVER = common dso_local global i32 0, align 4
@AOECMD_ATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aoedev*, %struct.aoetgt*, %struct.aoe_hdr*)* @aoehdr_atainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoehdr_atainit(%struct.aoedev* %0, %struct.aoetgt* %1, %struct.aoe_hdr* %2) #0 {
  %4 = alloca %struct.aoedev*, align 8
  %5 = alloca %struct.aoetgt*, align 8
  %6 = alloca %struct.aoe_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.aoedev* %0, %struct.aoedev** %4, align 8
  store %struct.aoetgt* %1, %struct.aoetgt** %5, align 8
  store %struct.aoe_hdr* %2, %struct.aoe_hdr** %6, align 8
  %8 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %9 = call i32 @newtag(%struct.aoedev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.aoe_hdr*, %struct.aoe_hdr** %6, align 8
  %11 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %14 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %12, i32 %19, i32 4)
  %21 = load %struct.aoe_hdr*, %struct.aoe_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %25 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @memcpy(i32 %23, i32 %26, i32 4)
  %28 = load i32, i32* @ETH_P_AOE, align 4
  %29 = call i32 @__constant_cpu_to_be16(i32 %28)
  %30 = load %struct.aoe_hdr*, %struct.aoe_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @AOE_HVER, align 4
  %33 = load %struct.aoe_hdr*, %struct.aoe_hdr** %6, align 8
  %34 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %36 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpu_to_be16(i32 %37)
  %39 = load %struct.aoe_hdr*, %struct.aoe_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %42 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.aoe_hdr*, %struct.aoe_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @AOECMD_ATA, align 4
  %47 = load %struct.aoe_hdr*, %struct.aoe_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @cpu_to_be32(i32 %49)
  %51 = load %struct.aoe_hdr*, %struct.aoe_hdr** %6, align 8
  %52 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @newtag(%struct.aoedev*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__constant_cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
