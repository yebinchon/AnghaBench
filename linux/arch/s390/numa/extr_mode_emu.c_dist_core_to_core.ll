; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/numa/extr_mode_emu.c_dist_core_to_core.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/numa/extr_mode_emu.c_dist_core_to_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toptree = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@DIST_DRAWER = common dso_local global i32 0, align 4
@DIST_BOOK = common dso_local global i32 0, align 4
@DIST_MC = common dso_local global i32 0, align 4
@DIST_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toptree*, %struct.toptree*)* @dist_core_to_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dist_core_to_core(%struct.toptree* %0, %struct.toptree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.toptree*, align 8
  %5 = alloca %struct.toptree*, align 8
  store %struct.toptree* %0, %struct.toptree** %4, align 8
  store %struct.toptree* %1, %struct.toptree** %5, align 8
  %6 = load %struct.toptree*, %struct.toptree** %4, align 8
  %7 = call %struct.TYPE_5__* @core_drawer(%struct.toptree* %6)
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.toptree*, %struct.toptree** %5, align 8
  %11 = call %struct.TYPE_5__* @core_drawer(%struct.toptree* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @DIST_DRAWER, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.toptree*, %struct.toptree** %4, align 8
  %19 = call %struct.TYPE_6__* @core_book(%struct.toptree* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.toptree*, %struct.toptree** %5, align 8
  %23 = call %struct.TYPE_6__* @core_book(%struct.toptree* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @DIST_BOOK, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %17
  %30 = load %struct.toptree*, %struct.toptree** %4, align 8
  %31 = call %struct.TYPE_4__* @core_mc(%struct.toptree* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.toptree*, %struct.toptree** %5, align 8
  %35 = call %struct.TYPE_4__* @core_mc(%struct.toptree* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @DIST_MC, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @DIST_CORE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39, %27, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_5__* @core_drawer(%struct.toptree*) #1

declare dso_local %struct.TYPE_6__* @core_book(%struct.toptree*) #1

declare dso_local %struct.TYPE_4__* @core_mc(%struct.toptree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
