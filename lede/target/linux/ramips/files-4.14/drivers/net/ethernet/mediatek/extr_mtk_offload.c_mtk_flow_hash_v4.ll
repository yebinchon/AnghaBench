; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_flow_hash_v4.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_flow_hash_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_offload_tuple = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_offload_tuple*)* @mtk_flow_hash_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_flow_hash_v4(%struct.flow_offload_tuple* %0) #0 {
  %2 = alloca %struct.flow_offload_tuple*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.flow_offload_tuple* %0, %struct.flow_offload_tuple** %2, align 8
  %9 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %2, align 8
  %10 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohs(i32 %11)
  %13 = shl i32 %12, 16
  %14 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %2, align 8
  %15 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohs(i32 %16)
  %18 = or i32 %13, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %2, align 8
  %20 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohl(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %2, align 8
  %25 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohl(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %31, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 16777215
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, -16777216
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = xor i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = xor i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 24
  %50 = or i32 %47, %49
  %51 = xor i32 %45, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, -65536
  %54 = lshr i32 %53, 16
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 1048575
  %57 = xor i32 %54, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 2047
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
