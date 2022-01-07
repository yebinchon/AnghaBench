; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TSTR = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_tmu_channel*, i32, i64)* @sh_tmu_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_write(%struct.sh_tmu_channel* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sh_tmu_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TSTR, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %13 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %33 [
    i32 128, label %17
    i32 129, label %25
  ]

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %20 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 2
  call void @iowrite8(i64 %18, i32 %24)
  br label %57

25:                                               ; preds = %11
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %28 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 4
  call void @iowrite8(i64 %26, i32 %32)
  br label %57

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 2
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @TCR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %44 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %45, %46
  %48 = call i32 @iowrite16(i64 %42, i64 %47)
  br label %57

49:                                               ; preds = %34
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %52 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @iowrite32(i64 %50, i64 %55)
  br label %57

57:                                               ; preds = %17, %25, %49, %41
  ret void
}

declare dso_local void @iowrite8(i64, i32) #1

declare dso_local i32 @iowrite16(i64, i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
