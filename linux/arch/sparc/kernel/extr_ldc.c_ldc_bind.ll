; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LDC_STATE_INIT = common dso_local global i64 0, align 8
@LDC_FLAG_REGISTERED_IRQS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LDC_FLAG_REGISTERED_QUEUES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LDC_HS_OPEN = common dso_local global i32 0, align 4
@LDC_STATE_BOUND = common dso_local global i32 0, align 4
@LDC_MODE_RAW = common dso_local global i64 0, align 8
@LDC_HS_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldc_bind(%struct.ldc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ldc_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %10 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LDC_STATE_INIT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %170

17:                                               ; preds = %1
  %18 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %23 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @enable_irq(i32 %25)
  %27 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %28 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @enable_irq(i32 %30)
  %32 = load i32, i32* @LDC_FLAG_REGISTERED_IRQS, align 4
  %33 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %34 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %40 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @sun4v_ldc_tx_qconf(i32 %41, i32 0, i32 0)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %17
  br label %146

46:                                               ; preds = %17
  %47 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %48 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %51 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %54 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @sun4v_ldc_tx_qconf(i32 %49, i32 %52, i32 %55)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %146

60:                                               ; preds = %46
  %61 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %62 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @sun4v_ldc_rx_qconf(i32 %63, i32 0, i32 0)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %141

68:                                               ; preds = %60
  %69 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %70 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %73 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %76 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @sun4v_ldc_rx_qconf(i32 %71, i32 %74, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %141

82:                                               ; preds = %68
  %83 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %84 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %85 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %89 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %92 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %91, i32 0, i32 6
  %93 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %94 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %93, i32 0, i32 9
  %95 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %96 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %95, i32 0, i32 8
  %97 = call i64 @sun4v_ldc_tx_get_state(i32 %90, i32* %92, i32* %94, i32* %96)
  store i64 %97, i64* %4, align 8
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  %100 = load i64, i64* %4, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %82
  br label %130

103:                                              ; preds = %82
  %104 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %105 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %108 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @LDC_HS_OPEN, align 4
  %110 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %111 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %113 = load i32, i32* @LDC_STATE_BOUND, align 4
  %114 = call i32 @ldc_set_state(%struct.ldc_channel* %112, i32 %113)
  %115 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %116 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @LDC_MODE_RAW, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %103
  %122 = load i32, i32* @LDC_HS_COMPLETE, align 4
  %123 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %124 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %103
  %126 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %127 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %126, i32 0, i32 1
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  store i32 0, i32* %2, align 4
  br label %170

130:                                              ; preds = %102
  %131 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %134 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %138 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @sun4v_ldc_rx_qconf(i32 %139, i32 0, i32 0)
  br label %141

141:                                              ; preds = %130, %81, %67
  %142 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %143 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @sun4v_ldc_tx_qconf(i32 %144, i32 0, i32 0)
  br label %146

146:                                              ; preds = %141, %59, %45
  %147 = load i32, i32* @LDC_FLAG_REGISTERED_IRQS, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %150 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %154 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %158 = call i32 @free_irq(i32 %156, %struct.ldc_channel* %157)
  %159 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %160 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %164 = call i32 @free_irq(i32 %162, %struct.ldc_channel* %163)
  %165 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %166 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %165, i32 0, i32 1
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %146, %125, %14
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i64 @sun4v_ldc_tx_qconf(i32, i32, i32) #1

declare dso_local i64 @sun4v_ldc_rx_qconf(i32, i32, i32) #1

declare dso_local i64 @sun4v_ldc_tx_get_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
