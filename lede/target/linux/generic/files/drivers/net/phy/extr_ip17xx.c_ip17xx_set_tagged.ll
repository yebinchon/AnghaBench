; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_set_tagged.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_set_tagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ip17xx_state = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ip17xx_state*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @ip17xx_set_tagged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_set_tagged(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_attr*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.ip17xx_state*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  %8 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %9 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %8)
  store %struct.ip17xx_state* %9, %struct.ip17xx_state** %7, align 8
  %10 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %11 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %16 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %20 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %25 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %29 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %35 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %39 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %33, %3
  %43 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %44 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %50 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %54 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %48, %42
  %58 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %59 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.ip17xx_state*)*, i32 (%struct.ip17xx_state*)** %61, align 8
  %63 = load %struct.ip17xx_state*, %struct.ip17xx_state** %7, align 8
  %64 = call i32 %62(%struct.ip17xx_state* %63)
  ret i32 %64
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
