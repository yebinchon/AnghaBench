; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_get_model.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_get_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ip17xx_state = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [47 x i8] c"IP17xx: Identified oui=%06x model=%02x rev=%X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IP175A = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IP175C = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IP178C = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"IP17xx: Chip ID register reads %04x\0A\00", align 1
@IP175D = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"IP17xx: Found an unknown IC+ switch with model number %02x, revision %X.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17xx_state*)* @get_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_model(%struct.ip17xx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip17xx_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip17xx_state* %0, %struct.ip17xx_state** %3, align 8
  %10 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %11 = call i32 @ip_phy_read(%struct.ip17xx_state* %10, i32 0, i32 2)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %13 = call i32 @ip_phy_read(%struct.ip17xx_state* %12, i32 0, i32 3)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 6
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 10
  %18 = and i32 %17, 63
  %19 = or i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 63
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 15
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 37059
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %75

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @IP175A, i32 0, i32 0), align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %40 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %39, i32 0, i32 0
  store %struct.TYPE_5__* @IP175A, %struct.TYPE_5__** %40, align 8
  br label %74

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @IP175C, i32 0, i32 0), align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %47 = call i32 @ip_phy_read(%struct.ip17xx_state* %46, i32 5, i32 2)
  %48 = icmp eq i32 %47, 579
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %51 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %50, i32 0, i32 0
  store %struct.TYPE_5__* @IP178C, %struct.TYPE_5__** %51, align 8
  br label %66

52:                                               ; preds = %45
  %53 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %54 = call i32 @ip_phy_read(%struct.ip17xx_state* %53, i32 20, i32 0)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 5981
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %61 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %60, i32 0, i32 0
  store %struct.TYPE_5__* @IP175D, %struct.TYPE_5__** %61, align 8
  br label %65

62:                                               ; preds = %52
  %63 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %64 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %63, i32 0, i32 0
  store %struct.TYPE_5__* @IP175C, %struct.TYPE_5__** %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %49
  br label %73

67:                                               ; preds = %41
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @pr_warning(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %38
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %67, %31
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ip_phy_read(%struct.ip17xx_state*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
