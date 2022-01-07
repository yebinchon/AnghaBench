; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@number_of_wtx = common dso_local global i64 0, align 8
@STAT_RDA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RDFIFO = common dso_local global i32 0, align 4
@TPM_VL_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Wrong transport protocol implementation!\0A\00", align 1
@TPM_CTRL_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error handling on vendor layer!\0A\00", align 1
@TPM_CTRL_WTX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"WTX-package received\0A\00", align 1
@TPM_MAX_WTX_PACKAGES = common dso_local global i64 0, align 8
@TPM_CTRL_WTX_ABORT_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"WTX-abort acknowledged\0A\00", align 1
@TPM_CTRL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"ERROR-package received:\0A\00", align 1
@TPM_INF_NAK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"-> Negative acknowledgement - retransmit command!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_inf_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_inf_recv(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* @number_of_wtx, align 8
  br label %11

11:                                               ; preds = %131, %128, %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %31, %11
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %17 = load i32, i32* @STAT_RDA, align 4
  %18 = call i32 @wait(%struct.tpm_chip* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %170

24:                                               ; preds = %15
  %25 = load i32, i32* @RDFIFO, align 4
  %26 = call i32 @tpm_data_in(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TPM_VL_VER, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %42 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %170

46:                                               ; preds = %34
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TPM_CTRL_DATA, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %56, %59
  store i32 %60, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %75, %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %67 = load i32, i32* @STAT_RDA, align 4
  %68 = call i32 @wait(%struct.tpm_chip* %66, i32 %67)
  %69 = load i32, i32* @RDFIFO, align 4
  %70 = call i32 @tpm_data_in(i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 27904
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %88 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %170

92:                                               ; preds = %81, %78
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %108, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 6
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %93

111:                                              ; preds = %93
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %112, 6
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %4, align 4
  br label %170

115:                                              ; preds = %46
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @TPM_CTRL_WTX, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %123 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %122, i32 0, i32 0
  %124 = call i32 @dev_info(i32* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i64, i64* @number_of_wtx, align 8
  %126 = load i64, i64* @TPM_MAX_WTX_PACKAGES, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %130 = call i32 @tpm_wtx(%struct.tpm_chip* %129)
  br label %11

131:                                              ; preds = %121
  %132 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %133 = call i32 @tpm_wtx_abort(%struct.tpm_chip* %132)
  br label %11

134:                                              ; preds = %115
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @TPM_CTRL_WTX_ABORT_ACK, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %142 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %141, i32 0, i32 0
  %143 = call i32 @dev_info(i32* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  br label %170

145:                                              ; preds = %134
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @TPM_CTRL_ERROR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %145
  %152 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %153 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %152, i32 0, i32 0
  %154 = call i32 @dev_err(i32* %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32*, i32** %6, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @TPM_INF_NAK, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %151
  %161 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %162 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %161, i32 0, i32 0
  %163 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %160, %151
  %165 = load i32, i32* @EIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %170

167:                                              ; preds = %145
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %167, %164, %140, %111, %86, %40, %21
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @wait(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_data_in(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @tpm_wtx(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_wtx_abort(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
