; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoecmd_cleanslate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoecmd_cleanslate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, %struct.aoetgt**, i64, i32, i32 }
%struct.aoetgt = type { i32 }

@RTTAVG_INIT = common dso_local global i32 0, align 4
@RTTDEV_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aoecmd_cleanslate(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.aoedev*, align 8
  %3 = alloca %struct.aoetgt**, align 8
  %4 = alloca %struct.aoetgt**, align 8
  store %struct.aoedev* %0, %struct.aoedev** %2, align 8
  %5 = load i32, i32* @RTTAVG_INIT, align 4
  %6 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %7 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @RTTDEV_INIT, align 4
  %9 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %10 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %12 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %14 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %13, i32 0, i32 1
  %15 = load %struct.aoetgt**, %struct.aoetgt*** %14, align 8
  store %struct.aoetgt** %15, %struct.aoetgt*** %3, align 8
  %16 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %17 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %18 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %16, i64 %20
  store %struct.aoetgt** %21, %struct.aoetgt*** %4, align 8
  br label %22

22:                                               ; preds = %36, %1
  %23 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %24 = load %struct.aoetgt**, %struct.aoetgt*** %4, align 8
  %25 = icmp ult %struct.aoetgt** %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %28 = load %struct.aoetgt*, %struct.aoetgt** %27, align 8
  %29 = icmp ne %struct.aoetgt* %28, null
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %34 = load %struct.aoetgt*, %struct.aoetgt** %33, align 8
  %35 = call i32 @aoecmd_wreset(%struct.aoetgt* %34)
  br label %36

36:                                               ; preds = %32
  %37 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %38 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %37, i32 1
  store %struct.aoetgt** %38, %struct.aoetgt*** %3, align 8
  br label %22

39:                                               ; preds = %30
  ret void
}

declare dso_local i32 @aoecmd_wreset(%struct.aoetgt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
