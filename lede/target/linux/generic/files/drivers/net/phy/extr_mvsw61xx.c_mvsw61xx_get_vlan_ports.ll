; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_get_vlan_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_get_vlan_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mvsw61xx_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MV_VTUCTL_EGRESS_TAGGED = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @mvsw61xx_get_vlan_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_get_vlan_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.mvsw61xx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %12 = call %struct.mvsw61xx_state* @get_state(%struct.switch_dev* %11)
  store %struct.mvsw61xx_state* %12, %struct.mvsw61xx_state** %6, align 8
  %13 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %21 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %103

27:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %96, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %31 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %28
  %35 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %36 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %50 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %48, i32* %56, align 4
  %57 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %58 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %65, 4
  %67 = ashr i32 %64, %66
  %68 = and i32 %67, 15
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @MV_VTUCTL_EGRESS_TAGGED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %47
  %73 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %74 = shl i32 1, %73
  %75 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %76 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 %74, i32* %82, align 4
  br label %92

83:                                               ; preds = %47
  %84 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %85 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %72
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %34
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %28

99:                                               ; preds = %28
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %102 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %24
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.mvsw61xx_state* @get_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
