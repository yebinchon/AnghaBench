; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_host_vcc_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_host_vcc_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_vcc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ATM_AAL5 = common dso_local global i64 0, align 8
@vcc_rxcrc1 = common dso_local global i32 0, align 4
@vcc_rxcrc2 = common dso_local global i32 0, align 4
@vcc_rxwriteptr = common dso_local global i32 0, align 4
@vcc_rxbufstart = common dso_local global i32 0, align 4
@vcc_rxreadptr = common dso_local global i32 0, align 4
@vcc_rxaddr2 = common dso_local global i32 0, align 4
@RMMODE_TRASH = common dso_local global i32 0, align 4
@RXMODE_AAL5 = common dso_local global i32 0, align 4
@RMMODE_PRESERVE = common dso_local global i32 0, align 4
@RXADDR1_OAM_PRESERVE = common dso_local global i32 0, align 4
@RXMODE_AAL0 = common dso_local global i32 0, align 4
@vcc_rxaddr1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_vcc*)* @host_vcc_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_vcc_start_rx(%struct.lanai_vcc* %0) #0 {
  %2 = alloca %struct.lanai_vcc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lanai_vcc* %0, %struct.lanai_vcc** %2, align 8
  %5 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %6 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ATM_AAL5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %1
  %15 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %16 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %21 = load i32, i32* @vcc_rxcrc1, align 4
  %22 = call i32 @cardvcc_write(%struct.lanai_vcc* %20, i32 65535, i32 %21)
  %23 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %24 = load i32, i32* @vcc_rxcrc2, align 4
  %25 = call i32 @cardvcc_write(%struct.lanai_vcc* %23, i32 65535, i32 %24)
  %26 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %27 = load i32, i32* @vcc_rxwriteptr, align 4
  %28 = call i32 @cardvcc_write(%struct.lanai_vcc* %26, i32 0, i32 %27)
  %29 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %30 = load i32, i32* @vcc_rxbufstart, align 4
  %31 = call i32 @cardvcc_write(%struct.lanai_vcc* %29, i32 0, i32 %30)
  %32 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %33 = load i32, i32* @vcc_rxreadptr, align 4
  %34 = call i32 @cardvcc_write(%struct.lanai_vcc* %32, i32 0, i32 %33)
  %35 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 65535
  %39 = load i32, i32* @vcc_rxaddr2, align 4
  %40 = call i32 @cardvcc_write(%struct.lanai_vcc* %35, i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %45 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @lanai_buf_size_cardorder(%struct.TYPE_8__* %46)
  %48 = call i32 @RXADDR1_SET_SIZE(i32 %47)
  %49 = or i32 %43, %48
  %50 = load i32, i32* @RMMODE_TRASH, align 4
  %51 = call i32 @RXADDR1_SET_RMMODE(i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* @RXMODE_AAL5, align 4
  %54 = call i32 @RXADDR1_SET_MODE(i32 %53)
  %55 = or i32 %52, %54
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %1
  %57 = load i32, i32* @RMMODE_PRESERVE, align 4
  %58 = call i32 @RXADDR1_SET_RMMODE(i32 %57)
  %59 = load i32, i32* @RXADDR1_OAM_PRESERVE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RXMODE_AAL0, align 4
  %62 = call i32 @RXADDR1_SET_MODE(i32 %61)
  %63 = or i32 %60, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %14
  %65 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @vcc_rxaddr1, align 4
  %68 = call i32 @cardvcc_write(%struct.lanai_vcc* %65, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @cardvcc_write(%struct.lanai_vcc*, i32, i32) #1

declare dso_local i32 @RXADDR1_SET_SIZE(i32) #1

declare dso_local i32 @lanai_buf_size_cardorder(%struct.TYPE_8__*) #1

declare dso_local i32 @RXADDR1_SET_RMMODE(i32) #1

declare dso_local i32 @RXADDR1_SET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
