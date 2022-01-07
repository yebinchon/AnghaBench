; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.lanai_vcc = type { i64, %struct.TYPE_8__, i32*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.atm_vcc*, i32 }
%struct.TYPE_7__ = type { %struct.atm_vcc*, i32 }
%struct.lanai_dev = type { i64, i32, %struct.atm_vcc* }

@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_VF_PARTIAL = common dso_local global i32 0, align 4
@ATM_AAL0 = common dso_local global i64 0, align 8
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @lanai_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lanai_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.lanai_vcc*, align 8
  %4 = alloca %struct.lanai_dev*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %5 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %6 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.lanai_vcc*
  store %struct.lanai_vcc* %8, %struct.lanai_vcc** %3, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %10 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.lanai_dev*
  store %struct.lanai_dev* %14, %struct.lanai_dev** %4, align 8
  %15 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %16 = icmp eq %struct.lanai_vcc* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %121

18:                                               ; preds = %1
  %19 = load i32, i32* @ATM_VF_READY, align 4
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @ATM_VF_PARTIAL, align 4
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %25 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %28 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %29, align 8
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %32 = icmp eq %struct.atm_vcc* %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %18
  %34 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %35 = call i32 @lanai_shutdown_rx_vci(%struct.lanai_vcc* %34)
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %37 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATM_AAL0, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %44 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %50 = call i32 @aal0_buffer_free(%struct.lanai_dev* %49)
  br label %51

51:                                               ; preds = %48, %42
  br label %60

52:                                               ; preds = %33
  %53 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %54 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %57 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @lanai_buf_deallocate(i32* %55, i32 %58)
  br label %60

60:                                               ; preds = %52, %51
  %61 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %62 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store %struct.atm_vcc* null, %struct.atm_vcc** %63, align 8
  br label %64

64:                                               ; preds = %60, %18
  %65 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %66 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.atm_vcc*, %struct.atm_vcc** %67, align 8
  %69 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %70 = icmp eq %struct.atm_vcc* %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %64
  %72 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %73 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %74 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %73, i32 0, i32 2
  %75 = load %struct.atm_vcc*, %struct.atm_vcc** %74, align 8
  %76 = icmp eq %struct.atm_vcc* %72, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %79 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %84 = call i32 @lanai_cbr_shutdown(%struct.lanai_dev* %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %87 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %86, i32 0, i32 2
  store %struct.atm_vcc* null, %struct.atm_vcc** %87, align 8
  br label %88

88:                                               ; preds = %85, %71
  %89 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %90 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %91 = call i32 @lanai_shutdown_tx_vci(%struct.lanai_dev* %89, %struct.lanai_vcc* %90)
  %92 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %93 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %96 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @lanai_buf_deallocate(i32* %94, i32 %97)
  %99 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %100 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store %struct.atm_vcc* null, %struct.atm_vcc** %101, align 8
  br label %102

102:                                              ; preds = %88, %64
  %103 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %104 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %104, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %110 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %111 = call i32 @host_vcc_unbind(%struct.lanai_dev* %109, %struct.lanai_vcc* %110)
  %112 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %113 = call i32 @kfree(%struct.lanai_vcc* %112)
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %116 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  %117 = load i32, i32* @ATM_VF_ADDR, align 4
  %118 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %119 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %118, i32 0, i32 0
  %120 = call i32 @clear_bit(i32 %117, i32* %119)
  br label %121

121:                                              ; preds = %114, %17
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @lanai_shutdown_rx_vci(%struct.lanai_vcc*) #1

declare dso_local i32 @aal0_buffer_free(%struct.lanai_dev*) #1

declare dso_local i32 @lanai_buf_deallocate(i32*, i32) #1

declare dso_local i32 @lanai_cbr_shutdown(%struct.lanai_dev*) #1

declare dso_local i32 @lanai_shutdown_tx_vci(%struct.lanai_dev*, %struct.lanai_vcc*) #1

declare dso_local i32 @host_vcc_unbind(%struct.lanai_dev*, %struct.lanai_vcc*) #1

declare dso_local i32 @kfree(%struct.lanai_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
