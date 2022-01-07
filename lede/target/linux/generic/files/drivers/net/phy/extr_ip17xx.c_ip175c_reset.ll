; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175c_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17xx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17xx_state*)* @ip175c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_reset(%struct.ip17xx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip17xx_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ip17xx_state* %0, %struct.ip17xx_state** %3, align 8
  %5 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %6 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @REG_SUPP(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %14 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %15 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %20 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @setPhy(%struct.ip17xx_state* %13, i32 %18, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %12
  %30 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %31 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %32 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @getPhy(%struct.ip17xx_state* %30, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %44 = call i32 @ip175c_update_state(%struct.ip17xx_state* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %39, %27
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @REG_SUPP(i32) #1

declare dso_local i32 @setPhy(%struct.ip17xx_state*, i32, i32) #1

declare dso_local i32 @getPhy(%struct.ip17xx_state*, i32) #1

declare dso_local i32 @ip175c_update_state(%struct.ip17xx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
