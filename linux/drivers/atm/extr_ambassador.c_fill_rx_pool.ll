; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_fill_rx_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_fill_rx_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8, %struct.sk_buff*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fill_rx_pool %p %hu %x\00", align 1
@dead = common dso_local global i32 0, align 4
@DBG_SKB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to allocate skb for RX pool %hu\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"allocated skb at %p, head %p, area %li\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8, i64)* @fill_rx_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_rx_pool(%struct.sk_buff* %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @DBG_FLOW, align 4
  %11 = load i32, i32* @DBG_POOL, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = load i64, i64* %6, align 8
  %17 = call i32 (i32, i8*, ...) @PRINTD(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %13, i32 %15, i64 %16)
  %18 = load i32, i32* @dead, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 4
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %104

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %8, align 8
  br label %31

31:                                               ; preds = %102, %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br label %47

47:                                               ; preds = %39, %31
  %48 = phi i1 [ false, %31 ], [ %46, %39 ]
  br i1 %48, label %49, label %103

49:                                               ; preds = %47
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call %struct.sk_buff* @alloc_skb(i32 %52, i64 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %9, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @DBG_SKB, align 4
  %59 = load i32, i32* @DBG_POOL, align 4
  %60 = or i32 %58, %59
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (i32, i8*, ...) @PRINTD(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %104

64:                                               ; preds = %49
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @check_area(%struct.sk_buff* %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %74)
  br label %104

76:                                               ; preds = %64
  %77 = load i32, i32* @DBG_SKB, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 8
  %82 = zext i8 %81 to i32
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i64 @skb_end_offset(%struct.sk_buff* %83)
  %85 = call i32 (i32, i8*, ...) @PRINTD(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %78, i32 %82, i64 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = call i32 @virt_to_bus(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 1
  %91 = load %struct.sk_buff*, %struct.sk_buff** %90, align 8
  %92 = call i32 @virt_to_bus(%struct.sk_buff* %91)
  %93 = call i32 @cpu_to_be32(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i8, i8* %5, align 1
  %97 = call i64 @rx_give(%struct.sk_buff* %95, %struct.TYPE_4__* %7, i8 zeroext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %76
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %76
  br label %31

103:                                              ; preds = %47
  br label %104

104:                                              ; preds = %103, %73, %57, %23
  ret void
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i64) #1

declare dso_local i64 @check_area(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @skb_end_offset(%struct.sk_buff*) #1

declare dso_local i32 @virt_to_bus(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @rx_give(%struct.sk_buff*, %struct.TYPE_4__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
