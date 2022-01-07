; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_get_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i64 }
%struct.switch_val = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ip17xx_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_PORTS = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @ip17xx_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_get_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.ip17xx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %12 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %11)
  store %struct.ip17xx_state* %12, %struct.ip17xx_state** %6, align 8
  %13 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %17 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %22 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %84

28:                                               ; preds = %20
  %29 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %30 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %33 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %75, %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MAX_PORTS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load %struct.ip17xx_state*, %struct.ip17xx_state** %6, align 8
  %48 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %55 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %53, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %64 = shl i32 %62, %63
  %65 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %66 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %64, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %46, %42
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = lshr i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %38

80:                                               ; preds = %38
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %83 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
