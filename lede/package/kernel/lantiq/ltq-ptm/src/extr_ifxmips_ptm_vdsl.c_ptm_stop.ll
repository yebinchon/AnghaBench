; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_ptm_stop.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_ptm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@g_net_dev = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"incorrect device\00", align 1
@MBOX_IGU1_IER = common dso_local global i32 0, align 4
@g_ptm_priv_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ptm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptm_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = load %struct.net_device**, %struct.net_device*** @g_net_dev, align 8
  %5 = getelementptr inbounds %struct.net_device*, %struct.net_device** %4, i64 0
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  %7 = icmp eq %struct.net_device* %3, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @MBOX_IGU1_IER, align 4
  %11 = call i32 @IFX_REG_W32_MASK(i32 131073, i32 0, i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_ptm_priv_data, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @napi_disable(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  ret i32 0
}

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @IFX_REG_W32_MASK(i32, i32, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
