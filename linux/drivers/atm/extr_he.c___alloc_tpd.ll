; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c___alloc_tpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c___alloc_tpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_tpd = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.he_dev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.he_tpd* (%struct.he_dev*)* @__alloc_tpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.he_tpd* @__alloc_tpd(%struct.he_dev* %0) #0 {
  %2 = alloca %struct.he_tpd*, align 8
  %3 = alloca %struct.he_dev*, align 8
  %4 = alloca %struct.he_tpd*, align 8
  %5 = alloca i32, align 4
  store %struct.he_dev* %0, %struct.he_dev** %3, align 8
  %6 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %7 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.he_tpd* @dma_pool_alloc(i32 %8, i32 %9, i32* %5)
  store %struct.he_tpd* %10, %struct.he_tpd** %4, align 8
  %11 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %12 = icmp eq %struct.he_tpd* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.he_tpd* null, %struct.he_tpd** %2, align 8
  br label %52

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TPD_ADDR(i32 %15)
  %17 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %18 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %20 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %22 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %27 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %32 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %37 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %42 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  %47 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.he_tpd*, %struct.he_tpd** %4, align 8
  store %struct.he_tpd* %51, %struct.he_tpd** %2, align 8
  br label %52

52:                                               ; preds = %14, %13
  %53 = load %struct.he_tpd*, %struct.he_tpd** %2, align 8
  ret %struct.he_tpd* %53
}

declare dso_local %struct.he_tpd* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @TPD_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
