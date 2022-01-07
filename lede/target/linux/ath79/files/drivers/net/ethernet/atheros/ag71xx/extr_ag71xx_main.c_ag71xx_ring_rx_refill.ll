; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_refill.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.TYPE_3__*, %struct.ag71xx_ring }
%struct.TYPE_3__ = type { i32 }
%struct.ag71xx_ring = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ag71xx_desc = type { i32 }

@napi_alloc_frag = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: %u rx descriptors refilled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_ring_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_ring_rx_refill(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ag71xx_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %10 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %9, i32 0, i32 2
  store %struct.ag71xx_ring* %10, %struct.ag71xx_ring** %3, align 8
  %11 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %12 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BIT(i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %17 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %66, %1
  %20 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %21 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %24 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %22, %26
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %19
  %30 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %31 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %35, i32 %36)
  store %struct.ag71xx_desc* %37, %struct.ag71xx_desc** %7, align 8
  %38 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %39 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %29
  %48 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %49 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %50 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @napi_alloc_frag, align 4
  %57 = call i32 @ag71xx_fill_rx_buf(%struct.ag71xx* %48, %struct.TYPE_4__* %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %71

60:                                               ; preds = %47, %29
  %61 = load i32, i32* @DESC_EMPTY, align 4
  %62 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %7, align 8
  %63 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60
  %67 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %68 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %19

71:                                               ; preds = %59, %19
  %72 = call i32 (...) @wmb()
  %73 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %74 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_fill_rx_buf(%struct.ag71xx*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
