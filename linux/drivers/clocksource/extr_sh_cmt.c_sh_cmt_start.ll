; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { i64, i32, i32 }

@FLAG_CLOCKEVENT = common dso_local global i64 0, align 8
@FLAG_CLOCKSOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_channel*, i64)* @sh_cmt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_start(%struct.sh_cmt_channel* %0, i64 %1) #0 {
  %3 = alloca %struct.sh_cmt_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %8 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %7, i32 0, i32 1
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %12 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FLAG_CLOCKEVENT, align 8
  %15 = load i64, i64* @FLAG_CLOCKSOURCE, align 8
  %16 = or i64 %14, %15
  %17 = and i64 %13, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %21 = call i32 @sh_cmt_enable(%struct.sh_cmt_channel* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %49

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %29 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @FLAG_CLOCKSOURCE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %37 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FLAG_CLOCKEVENT, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %44 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %45 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__sh_cmt_set_next(%struct.sh_cmt_channel* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %35, %26
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %51 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %50, i32 0, i32 1
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @raw_spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_cmt_enable(%struct.sh_cmt_channel*) #1

declare dso_local i32 @__sh_cmt_set_next(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
