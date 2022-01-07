; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_cbr_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_cbr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CBR_ICG_Reg = common dso_local global i32 0, align 4
@CBR_PTR_Reg = common dso_local global i32 0, align 4
@CONFIG2_CBR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_dev*)* @lanai_cbr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lanai_cbr_setup(%struct.lanai_dev* %0) #0 {
  %2 = alloca %struct.lanai_dev*, align 8
  store %struct.lanai_dev* %0, %struct.lanai_dev** %2, align 8
  %3 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %4 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %5 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i32 @pcr_to_cbricg(i32* %7)
  %9 = load i32, i32* @CBR_ICG_Reg, align 4
  %10 = call i32 @reg_write(%struct.lanai_dev* %3, i32 %8, i32 %9)
  %11 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %12 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %13 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CBR_PTR_Reg, align 4
  %18 = call i32 @reg_write(%struct.lanai_dev* %11, i32 %16, i32 %17)
  %19 = load i32, i32* @CONFIG2_CBR_ENABLE, align 4
  %20 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %21 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %25 = call i32 @conf2_write(%struct.lanai_dev* %24)
  ret void
}

declare dso_local i32 @reg_write(%struct.lanai_dev*, i32, i32) #1

declare dso_local i32 @pcr_to_cbricg(i32*) #1

declare dso_local i32 @conf2_write(%struct.lanai_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
