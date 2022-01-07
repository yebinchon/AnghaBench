; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"amb_reset\00", align 1
@amb_mem = common dso_local global i32 0, align 4
@reset_control = common dso_local global i32 0, align 4
@AMB_RESET_BITS = common dso_local global i32 0, align 4
@interrupt_control = common dso_local global i32 0, align 4
@AMB_DOORBELL_BITS = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@mb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"reset timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SELF_TEST_FAILURE = common dso_local global i32 0, align 4
@GPINT_TST_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@SUNI_DATA_PATTERN_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"SUNI data pattern\00", align 1
@SUNI_DATA_BITS_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"SUNI data bits\00", align 1
@SUNI_UTOPIA_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"SUNI UTOPIA interface\00", align 1
@SUNI_FIFO_FAILURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"SUNI cell buffer FIFO\00", align 1
@SRAM_FAILURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"bad SRAM\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @amb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amb_reset(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @DBG_FLOW, align 4
  %9 = load i32, i32* @DBG_LOAD, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @PRINTD(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @amb_mem, align 4
  %14 = load i32, i32* @reset_control, align 4
  %15 = call i32 @offsetof(i32 %13, i32 %14)
  %16 = call i32 @rd_plain(i32* %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @amb_mem, align 4
  %19 = load i32, i32* @reset_control, align 4
  %20 = call i32 @offsetof(i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AMB_RESET_BITS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @wr_plain(i32* %17, i32 %20, i32 %23)
  %25 = call i32 @udelay(i32 10)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @amb_mem, align 4
  %28 = load i32, i32* @interrupt_control, align 4
  %29 = call i32 @offsetof(i32 %27, i32 %28)
  %30 = load i32, i32* @AMB_DOORBELL_BITS, align 4
  %31 = call i32 @wr_plain(i32* %26, i32 %29, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @amb_mem, align 4
  %34 = load i32, i32* @interrupt, align 4
  %35 = call i32 @offsetof(i32 %33, i32 %34)
  %36 = call i32 @wr_plain(i32* %32, i32 %35, i32 -1)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @amb_mem, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb, i32 0, i32 0, i32 1), align 4
  %40 = call i32 @offsetof(i32 %38, i32 %39)
  %41 = call i32 @wr_plain(i32* %37, i32 %40, i32 0)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @amb_mem, align 4
  %44 = load i32, i32* @reset_control, align 4
  %45 = call i32 @offsetof(i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @AMB_RESET_BITS, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @wr_plain(i32* %42, i32 %45, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %133

53:                                               ; preds = %2
  %54 = call i32 @msleep(i32 4200)
  store i64 500, i64* %7, align 8
  br label %55

55:                                               ; preds = %76, %53
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @amb_mem, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb, i32 0, i32 0, i32 1), align 4
  %59 = call i32 @offsetof(i32 %57, i32 %58)
  %60 = call i32 @rd_plain(i32* %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @msleep_interruptible(i64 %67)
  store i64 %68, i64* %7, align 8
  br label %76

69:                                               ; preds = %63
  %70 = load i32, i32* @DBG_LOAD, align 4
  %71 = load i32, i32* @DBG_ERR, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @PRINTD(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %134

76:                                               ; preds = %66
  br label %55

77:                                               ; preds = %55
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @amb_mem, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb, i32 0, i32 0, i32 0), align 4
  %81 = call i32 @offsetof(i32 %79, i32 %80)
  %82 = call i32 @rd_mem(i32* %78, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @SELF_TEST_FAILURE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %132

87:                                               ; preds = %77
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @GPINT_TST_FAILURE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @sf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @SUNI_DATA_PATTERN_FAILURE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @sf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @SUNI_DATA_BITS_FAILURE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @sf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @SUNI_UTOPIA_FAILURE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 @sf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %108
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @SUNI_FIFO_FAILURE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 @sf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %115
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @SRAM_FAILURE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 @sf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %122
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %134

132:                                              ; preds = %77
  br label %133

133:                                              ; preds = %132, %2
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %129, %69
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @PRINTD(i32, i8*) #1

declare dso_local i32 @rd_plain(i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @wr_plain(i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @msleep_interruptible(i64) #1

declare dso_local i32 @rd_mem(i32*, i32) #1

declare dso_local i32 @sf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
