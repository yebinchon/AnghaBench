; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.host_rxq }
%struct.TYPE_11__ = type { i32 (i32, i32*)* }
%struct.TYPE_8__ = type { i32 }
%struct.host_rxq = type { i64, %struct.host_rxq_entry* }
%struct.host_rxq_entry = type { i32*, %struct.TYPE_12__*, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.atm_vcc = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.fore200e_vc_map = type { %struct.atm_vcc* }

@STATUS_COMPLETE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"no ready VC found for PDU received on %d.%d.%d\0A\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"damaged PDU on %d.%d.%d\0A\00", align 1
@QUEUE_SIZE_RX = common dso_local global i32 0, align 4
@STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fore200e*)* @fore200e_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fore200e_rx_irq(%struct.fore200e* %0) #0 {
  %2 = alloca %struct.fore200e*, align 8
  %3 = alloca %struct.host_rxq*, align 8
  %4 = alloca %struct.host_rxq_entry*, align 8
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca %struct.fore200e_vc_map*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %2, align 8
  %7 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %8 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %7, i32 0, i32 2
  store %struct.host_rxq* %8, %struct.host_rxq** %3, align 8
  br label %9

9:                                                ; preds = %116, %1
  %10 = load %struct.host_rxq*, %struct.host_rxq** %3, align 8
  %11 = getelementptr inbounds %struct.host_rxq, %struct.host_rxq* %10, i32 0, i32 1
  %12 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %11, align 8
  %13 = load %struct.host_rxq*, %struct.host_rxq** %3, align 8
  %14 = getelementptr inbounds %struct.host_rxq, %struct.host_rxq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %12, i64 %15
  store %struct.host_rxq_entry* %16, %struct.host_rxq_entry** %4, align 8
  %17 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %18 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STATUS_COMPLETE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  br label %146

25:                                               ; preds = %9
  %26 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %27 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %28 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %27, i32 0, i32 3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %34 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %33, i32 0, i32 3
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.fore200e_vc_map* @FORE200E_VC_MAP(%struct.fore200e* %26, i32 %32, i32 %38)
  store %struct.fore200e_vc_map* %39, %struct.fore200e_vc_map** %6, align 8
  %40 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %41 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %40, i32 0, i32 0
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %41, align 8
  %43 = icmp eq %struct.atm_vcc* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* @ATM_VF_READY, align 4
  %46 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %47 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %46, i32 0, i32 0
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %47, align 8
  %49 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %48, i32 0, i32 1
  %50 = call i64 @test_bit(i32 %45, i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %44, %25
  %53 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %54 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %59 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %58, i32 0, i32 3
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %65 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %64, i32 0, i32 3
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DPRINTK(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %63, i32 %69)
  br label %116

71:                                               ; preds = %44
  %72 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %73 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %72, i32 0, i32 0
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %73, align 8
  store %struct.atm_vcc* %74, %struct.atm_vcc** %5, align 8
  %75 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %76 = call i32 @ASSERT(%struct.atm_vcc* %75)
  %77 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %78 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @STATUS_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %71
  %85 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %86 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %87 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %88 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %87, i32 0, i32 3
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = call i32 @fore200e_push_rpd(%struct.fore200e* %85, %struct.atm_vcc* %86, %struct.TYPE_13__* %89)
  br label %115

91:                                               ; preds = %71
  %92 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %93 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %98 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %97, i32 0, i32 3
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %104 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %103, i32 0, i32 3
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @DPRINTK(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %102, i32 %108)
  %110 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %111 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = call i32 @atomic_inc(i32* %113)
  br label %115

115:                                              ; preds = %91, %84
  br label %116

116:                                              ; preds = %115, %52
  %117 = load %struct.host_rxq*, %struct.host_rxq** %3, align 8
  %118 = getelementptr inbounds %struct.host_rxq, %struct.host_rxq* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @QUEUE_SIZE_RX, align 4
  %121 = call i32 @FORE200E_NEXT_ENTRY(i64 %119, i32 %120)
  %122 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %123 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %124 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %123, i32 0, i32 3
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = call i32 @fore200e_collect_rpd(%struct.fore200e* %122, %struct.TYPE_13__* %125)
  %127 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %128 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32 (i32, i32*)*, i32 (i32, i32*)** %130, align 8
  %132 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %133 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %136 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = call i32 %131(i32 %134, i32* %138)
  %140 = load i32, i32* @STATUS_FREE, align 4
  %141 = load %struct.host_rxq_entry*, %struct.host_rxq_entry** %4, align 8
  %142 = getelementptr inbounds %struct.host_rxq_entry, %struct.host_rxq_entry* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  store i32 %140, i32* %143, align 4
  %144 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %145 = call i32 @fore200e_supply(%struct.fore200e* %144)
  br label %9

146:                                              ; preds = %24
  ret void
}

declare dso_local %struct.fore200e_vc_map* @FORE200E_VC_MAP(%struct.fore200e*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DPRINTK(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ASSERT(%struct.atm_vcc*) #1

declare dso_local i32 @fore200e_push_rpd(%struct.fore200e*, %struct.atm_vcc*, %struct.TYPE_13__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @FORE200E_NEXT_ENTRY(i64, i32) #1

declare dso_local i32 @fore200e_collect_rpd(%struct.fore200e*, %struct.TYPE_13__*) #1

declare dso_local i32 @fore200e_supply(%struct.fore200e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
