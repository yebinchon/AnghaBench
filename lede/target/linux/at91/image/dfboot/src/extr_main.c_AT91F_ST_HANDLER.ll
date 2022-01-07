; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_ST_HANDLER.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_ST_HANDLER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32)*, i32 }

@AT91C_DBGU_CSR = common dso_local global i32* null, align 8
@AT91C_BASE_ST = common dso_local global %struct.TYPE_8__* null, align 8
@StTick = common dso_local global i32 0, align 4
@ctlTempo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AT91C_BASE_DBGU = common dso_local global i64 0, align 8
@AT91C_DBGU_CR = common dso_local global i32* null, align 8
@AT91C_US_ENDRX = common dso_local global i32 0, align 4
@AT91C_US_ENDTX = common dso_local global i32 0, align 4
@AT91C_US_RSTSTA = common dso_local global i32 0, align 4
@AT91C_US_RXBUFF = common dso_local global i32 0, align 4
@AT91C_US_RXRDY = common dso_local global i32 0, align 4
@AT91C_US_TIMEOUT = common dso_local global i32 0, align 4
@AT91C_US_TXEMPTY = common dso_local global i32 0, align 4
@AT91C_US_TXRDY = common dso_local global i32 0, align 4
@svcXmodem = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AT91F_ST_HANDLER() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @AT91C_DBGU_CSR, align 8
  %3 = load i32, i32* %2, align 4
  store volatile i32 %3, i32* %1, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AT91C_BASE_ST, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32, i32* @StTick, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @StTick, align 4
  %12 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctlTempo, i32 0, i32 0), align 8
  %13 = call i32 %12(%struct.TYPE_7__* @ctlTempo)
  br label %14

14:                                               ; preds = %9, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
