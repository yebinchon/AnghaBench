; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_check_parameters.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_check_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qsb_tau = common dso_local global i32 0, align 4
@qsb_tstep = common dso_local global i32 0, align 4
@write_descriptor_delay = common dso_local global i64 0, align 8
@aal5_fill_pattern = common dso_local global i32 0, align 4
@aal5r_max_packet_size = common dso_local global i32 0, align 4
@MAX_RX_FRAME_EXTRA_BYTES = common dso_local global i32 0, align 4
@aal5r_min_packet_size = common dso_local global i32 0, align 4
@aal5s_max_packet_size = common dso_local global i32 0, align 4
@MAX_TX_FRAME_EXTRA_BYTES = common dso_local global i32 0, align 4
@aal5s_min_packet_size = common dso_local global i32 0, align 4
@dma_rx_descriptor_length = common dso_local global i32 0, align 4
@dma_tx_descriptor_length = common dso_local global i32 0, align 4
@dma_rx_clp1_descriptor_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_parameters() #0 {
  %1 = load i32, i32* @qsb_tau, align 4
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 1, i32* @qsb_tau, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @qsb_tstep, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 1, i32* @qsb_tstep, align 4
  br label %18

8:                                                ; preds = %4
  %9 = load i32, i32* @qsb_tstep, align 4
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 4, i32* @qsb_tstep, align 4
  br label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @qsb_tstep, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 2, i32* @qsb_tstep, align 4
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16, %11
  br label %18

18:                                               ; preds = %17, %7
  %19 = load i64, i64* @write_descriptor_delay, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 0, i64* @write_descriptor_delay, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* @aal5_fill_pattern, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* @aal5_fill_pattern, align 4
  br label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @aal5_fill_pattern, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* @aal5_fill_pattern, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* @aal5r_max_packet_size, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* @aal5r_max_packet_size, align 4
  br label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @aal5r_max_packet_size, align 4
  %35 = load i32, i32* @MAX_RX_FRAME_EXTRA_BYTES, align 4
  %36 = sub nsw i32 65535, %35
  %37 = icmp sge i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @MAX_RX_FRAME_EXTRA_BYTES, align 4
  %40 = sub nsw i32 65535, %39
  store i32 %40, i32* @aal5r_max_packet_size, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* @aal5r_min_packet_size, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* @aal5r_min_packet_size, align 4
  br label %53

46:                                               ; preds = %42
  %47 = load i32, i32* @aal5r_min_packet_size, align 4
  %48 = load i32, i32* @aal5r_max_packet_size, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @aal5r_max_packet_size, align 4
  store i32 %51, i32* @aal5r_min_packet_size, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* @aal5s_max_packet_size, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* @aal5s_max_packet_size, align 4
  br label %66

57:                                               ; preds = %53
  %58 = load i32, i32* @aal5s_max_packet_size, align 4
  %59 = load i32, i32* @MAX_TX_FRAME_EXTRA_BYTES, align 4
  %60 = sub nsw i32 65535, %59
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @MAX_TX_FRAME_EXTRA_BYTES, align 4
  %64 = sub nsw i32 65535, %63
  store i32 %64, i32* @aal5s_max_packet_size, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32, i32* @aal5s_min_packet_size, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* @aal5s_min_packet_size, align 4
  br label %77

70:                                               ; preds = %66
  %71 = load i32, i32* @aal5s_min_packet_size, align 4
  %72 = load i32, i32* @aal5s_max_packet_size, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @aal5s_max_packet_size, align 4
  store i32 %75, i32* @aal5s_min_packet_size, align 4
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %69
  %78 = load i32, i32* @dma_rx_descriptor_length, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 2, i32* @dma_rx_descriptor_length, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* @dma_tx_descriptor_length, align 4
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 2, i32* @dma_tx_descriptor_length, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* @dma_rx_clp1_descriptor_threshold, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* @dma_rx_clp1_descriptor_threshold, align 4
  br label %96

89:                                               ; preds = %85
  %90 = load i32, i32* @dma_rx_clp1_descriptor_threshold, align 4
  %91 = load i32, i32* @dma_rx_descriptor_length, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @dma_rx_descriptor_length, align 4
  store i32 %94, i32* @dma_rx_clp1_descriptor_threshold, align 4
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i32, i32* @dma_tx_descriptor_length, align 4
  %98 = icmp slt i32 %97, 2
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 2, i32* @dma_tx_descriptor_length, align 4
  br label %100

100:                                              ; preds = %99, %96
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
