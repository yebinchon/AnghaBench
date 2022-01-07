; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_send.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_device = type { i64 }
%struct.ag71xx = type { %struct.TYPE_4__*, %struct.ag71xx_ring }
%struct.TYPE_4__ = type { i8* }
%struct.ag71xx_ring = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ag71xx_desc* }
%struct.ag71xx_desc = type { i32, i64 }

@AG71XX_TX_RING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: tx buffer full\0A\00", align 1
@DESC_PKTLEN_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: sending %#08x length %#08x\0A\00", align 1
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@TX_CTRL_TXE = common dso_local global i32 0, align 4
@MAX_WAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: tx timed out!\0A\00", align 1
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eth_device*, i8*, i32)* @ag71xx_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_send(%struct.eth_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eth_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ag71xx*, align 8
  %9 = alloca %struct.ag71xx_ring*, align 8
  %10 = alloca %struct.ag71xx_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.eth_device* %0, %struct.eth_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.eth_device*, %struct.eth_device** %5, align 8
  %13 = getelementptr inbounds %struct.eth_device, %struct.eth_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ag71xx*
  store %struct.ag71xx* %15, %struct.ag71xx** %8, align 8
  %16 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %17 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %16, i32 0, i32 1
  store %struct.ag71xx_ring* %17, %struct.ag71xx_ring** %9, align 8
  %18 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %9, align 8
  %19 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AG71XX_TX_RING_SIZE, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %9, align 8
  %24 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %29, align 8
  store %struct.ag71xx_desc* %30, %struct.ag71xx_desc** %10, align 8
  %31 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %32 = call i64 @ag71xx_desc_empty(%struct.ag71xx_desc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %3
  %35 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %36 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 1, i32* %4, align 4
  br label %118

41:                                               ; preds = %3
  %42 = load i8*, i8** %6, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @flush_cache(i64 %43, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @virt_to_phys(i8* %46)
  %48 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %49 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @DESC_PKTLEN_M, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %54 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %56 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %61 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %64 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %59, i64 %62, i32 %65)
  %67 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %9, align 8
  %68 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %9, align 8
  %72 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AG71XX_TX_RING_SIZE, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %41
  %77 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %9, align 8
  %78 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %41
  %80 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %81 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %82 = load i32, i32* @TX_CTRL_TXE, align 4
  %83 = call i32 @ag71xx_wr(%struct.ag71xx* %80, i32 %81, i32 %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %95, %79
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @MAX_WAIT, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %90 = call i64 @ag71xx_desc_empty(%struct.ag71xx_desc* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %98

93:                                               ; preds = %88
  %94 = call i32 @udelay(i32 10)
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %84

98:                                               ; preds = %92, %84
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @MAX_WAIT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %104 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  store i32 -1, i32* %4, align 4
  br label %118

109:                                              ; preds = %98
  %110 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %111 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %112 = call i32 @ag71xx_wr(%struct.ag71xx* %110, i32 %111, i32 0)
  %113 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %114 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @DESC_EMPTY, align 4
  %116 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %117 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %109, %102, %34
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @flush_cache(i64, i32) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @DBG(i8*, i8*, i64, i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
