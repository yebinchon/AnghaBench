; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_channel*, i8*, i32, i32)* @sh_tmu_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_register(%struct.sh_tmu_channel* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sh_tmu_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %5, align 8
  %13 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @sh_tmu_register_clockevent(%struct.sh_tmu_channel* %16, i8* %17)
  br label %31

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %5, align 8
  %24 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @sh_tmu_register_clocksource(%struct.sh_tmu_channel* %27, i8* %28)
  br label %30

30:                                               ; preds = %22, %19
  br label %31

31:                                               ; preds = %30, %11
  ret i32 0
}

declare dso_local i32 @sh_tmu_register_clockevent(%struct.sh_tmu_channel*, i8*) #1

declare dso_local i32 @sh_tmu_register_clocksource(%struct.sh_tmu_channel*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
