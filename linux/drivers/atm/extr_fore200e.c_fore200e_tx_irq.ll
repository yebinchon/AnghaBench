; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { %struct.host_txq, %struct.TYPE_7__*, i32 }
%struct.host_txq = type { i64, i64, %struct.host_txq_entry* }
%struct.host_txq_entry = type { i32*, i64, i32, %struct.fore200e_vc_map*, %struct.TYPE_6__*, i32 }
%struct.fore200e_vc_map = type { i64, %struct.atm_vcc* }
%struct.atm_vcc = type { %struct.TYPE_8__*, i32 (%struct.atm_vcc*, i32)*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@STATUS_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"TX COMPLETED: entry = %p [tail = %d], vc_map = %p, skb = %p\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"no ready vcc found for PDU sent on device %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"vcc closed-then-re-opened; dropping PDU sent on device %d\0A\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@STATUS_FREE = common dso_local global i32 0, align 4
@QUEUE_SIZE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fore200e*)* @fore200e_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fore200e_tx_irq(%struct.fore200e* %0) #0 {
  %2 = alloca %struct.fore200e*, align 8
  %3 = alloca %struct.host_txq*, align 8
  %4 = alloca %struct.host_txq_entry*, align 8
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca %struct.fore200e_vc_map*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %2, align 8
  %7 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %8 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %7, i32 0, i32 0
  store %struct.host_txq* %8, %struct.host_txq** %3, align 8
  %9 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %10 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %183

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %168, %15
  %17 = load %struct.host_txq*, %struct.host_txq** %3, align 8
  %18 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %17, i32 0, i32 2
  %19 = load %struct.host_txq_entry*, %struct.host_txq_entry** %18, align 8
  %20 = load %struct.host_txq*, %struct.host_txq** %3, align 8
  %21 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %19, i64 %22
  store %struct.host_txq_entry* %23, %struct.host_txq_entry** %4, align 8
  %24 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %25 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STATUS_COMPLETE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %183

32:                                               ; preds = %16
  %33 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %34 = load %struct.host_txq*, %struct.host_txq** %3, align 8
  %35 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %38 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %37, i32 0, i32 3
  %39 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %38, align 8
  %40 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %41 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, %struct.host_txq_entry*, ...) @DPRINTK(i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.host_txq_entry* %33, i64 %36, %struct.fore200e_vc_map* %39, i32 %42)
  %44 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %45 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kfree(i32 %46)
  %48 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %49 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %52 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %60 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %59, i32 0, i32 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @dma_unmap_single(i32 %50, i32 %58, i32 %66, i32 %67)
  %69 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %70 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %69, i32 0, i32 3
  %71 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %70, align 8
  store %struct.fore200e_vc_map* %71, %struct.fore200e_vc_map** %6, align 8
  %72 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %73 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %72, i32 0, i32 1
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %73, align 8
  %75 = icmp eq %struct.atm_vcc* %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %32
  %77 = load i32, i32* @ATM_VF_READY, align 4
  %78 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %79 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %78, i32 0, i32 1
  %80 = load %struct.atm_vcc*, %struct.atm_vcc** %79, align 8
  %81 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %80, i32 0, i32 2
  %82 = call i64 @test_bit(i32 %77, i32* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %76, %32
  %85 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %86 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to %struct.host_txq_entry*
  %92 = call i32 (i32, i8*, %struct.host_txq_entry*, ...) @DPRINTK(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.host_txq_entry* %91)
  %93 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %94 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_kfree_skb_any(i32 %95)
  br label %168

97:                                               ; preds = %76
  %98 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %99 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %98, i32 0, i32 1
  %100 = load %struct.atm_vcc*, %struct.atm_vcc** %99, align 8
  %101 = call i32 @ASSERT(%struct.atm_vcc* %100)
  %102 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %103 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %106 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %97
  %110 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %111 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to %struct.host_txq_entry*
  %117 = call i32 (i32, i8*, %struct.host_txq_entry*, ...) @DPRINTK(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), %struct.host_txq_entry* %116)
  %118 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %119 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dev_kfree_skb_any(i32 %120)
  br label %167

122:                                              ; preds = %97
  %123 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %124 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %123, i32 0, i32 1
  %125 = load %struct.atm_vcc*, %struct.atm_vcc** %124, align 8
  store %struct.atm_vcc* %125, %struct.atm_vcc** %5, align 8
  %126 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %127 = call i32 @ASSERT(%struct.atm_vcc* %126)
  %128 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %129 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %128, i32 0, i32 1
  %130 = load i32 (%struct.atm_vcc*, i32)*, i32 (%struct.atm_vcc*, i32)** %129, align 8
  %131 = icmp ne i32 (%struct.atm_vcc*, i32)* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %134 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %133, i32 0, i32 1
  %135 = load i32 (%struct.atm_vcc*, i32)*, i32 (%struct.atm_vcc*, i32)** %134, align 8
  %136 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %137 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %138 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 %135(%struct.atm_vcc* %136, i32 %139)
  br label %146

141:                                              ; preds = %122
  %142 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %143 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dev_kfree_skb_any(i32 %144)
  br label %146

146:                                              ; preds = %141, %132
  %147 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %148 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @STATUS_ERROR, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %156 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = call i32 @atomic_inc(i32* %158)
  br label %166

160:                                              ; preds = %146
  %161 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %162 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = call i32 @atomic_inc(i32* %164)
  br label %166

166:                                              ; preds = %160, %154
  br label %167

167:                                              ; preds = %166, %109
  br label %168

168:                                              ; preds = %167, %84
  %169 = load i32, i32* @STATUS_FREE, align 4
  %170 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %171 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  store i32 %169, i32* %172, align 4
  %173 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %174 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, -1
  store i64 %177, i64* %175, align 8
  %178 = load %struct.host_txq*, %struct.host_txq** %3, align 8
  %179 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @QUEUE_SIZE_TX, align 4
  %182 = call i32 @FORE200E_NEXT_ENTRY(i64 %180, i32 %181)
  br label %16

183:                                              ; preds = %14, %31
  ret void
}

declare dso_local i32 @DPRINTK(i32, i8*, %struct.host_txq_entry*, ...) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @ASSERT(%struct.atm_vcc*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @FORE200E_NEXT_ENTRY(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
