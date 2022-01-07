; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_port_get_stats.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_port_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_mib_desc = type { i32, i32 }
%struct.switch_dev = type { i32 }
%struct.switch_port_stats = type { i8*, i8* }
%struct.b53_device = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@B53XX_MIB_TXB_ID = common dso_local global i32 0, align 4
@B53XX_MIB_RXB_ID = common dso_local global i32 0, align 4
@b53_mibs_65 = common dso_local global %struct.b53_mib_desc* null, align 8
@b53_mibs_63xx = common dso_local global %struct.b53_mib_desc* null, align 8
@B63XX_MIB_TXB_ID = common dso_local global i32 0, align 4
@B63XX_MIB_RXB_ID = common dso_local global i32 0, align 4
@b53_mibs = common dso_local global %struct.b53_mib_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_stats*)* @b53_port_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_port_get_stats(%struct.switch_dev* %0, i32 %1, %struct.switch_port_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_stats*, align 8
  %8 = alloca %struct.b53_device*, align 8
  %9 = alloca %struct.b53_mib_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_stats* %2, %struct.switch_port_stats** %7, align 8
  %15 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %16 = call %struct.b53_device* @sw_to_b53(%struct.switch_dev* %15)
  store %struct.b53_device* %16, %struct.b53_device** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %20 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %110

27:                                               ; preds = %3
  %28 = load i32, i32* @B53XX_MIB_TXB_ID, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @B53XX_MIB_RXB_ID, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %31 = call i64 @is5365(%struct.b53_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 8, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs_65, align 8
  store %struct.b53_mib_desc* %38, %struct.b53_mib_desc** %9, align 8
  br label %50

39:                                               ; preds = %27
  %40 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %41 = call i64 @is63xx(%struct.b53_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs_63xx, align 8
  store %struct.b53_mib_desc* %44, %struct.b53_mib_desc** %9, align 8
  %45 = load i32, i32* @B63XX_MIB_TXB_ID, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @B63XX_MIB_RXB_ID, align 4
  store i32 %46, i32* %11, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs, align 8
  store %struct.b53_mib_desc* %48, %struct.b53_mib_desc** %9, align 8
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %52 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %56 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %80

59:                                               ; preds = %50
  %60 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @B53_MIB_PAGE(i32 %61)
  %63 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %63, i64 %65
  %67 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @b53_read64(%struct.b53_device* %60, i32 %62, i32 %68, i8** %13)
  %70 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @B53_MIB_PAGE(i32 %71)
  %73 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %73, i64 %75
  %77 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @b53_read64(%struct.b53_device* %70, i32 %72, i32 %78, i8** %12)
  br label %103

80:                                               ; preds = %50
  %81 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @B53_MIB_PAGE(i32 %82)
  %84 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %84, i64 %86
  %88 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @b53_read32(%struct.b53_device* %81, i32 %83, i32 %89, i8** %14)
  %91 = load i8*, i8** %14, align 8
  store i8* %91, i8** %13, align 8
  %92 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @B53_MIB_PAGE(i32 %93)
  %95 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %95, i64 %97
  %99 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @b53_read32(%struct.b53_device* %92, i32 %94, i32 %100, i8** %14)
  %102 = load i8*, i8** %14, align 8
  store i8* %102, i8** %12, align 8
  br label %103

103:                                              ; preds = %80, %59
  %104 = load i8*, i8** %13, align 8
  %105 = load %struct.switch_port_stats*, %struct.switch_port_stats** %7, align 8
  %106 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load %struct.switch_port_stats*, %struct.switch_port_stats** %7, align 8
  %109 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %24
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.b53_device* @sw_to_b53(%struct.switch_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i64 @is63xx(%struct.b53_device*) #1

declare dso_local i32 @b53_read64(%struct.b53_device*, i32, i32, i8**) #1

declare dso_local i32 @B53_MIB_PAGE(i32) #1

declare dso_local i32 @b53_read32(%struct.b53_device*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
