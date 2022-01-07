; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_SDCard_Init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_SDCard_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AT91C_GO_IDLE_STATE_CMD = common dso_local global i32 0, align 4
@AT91C_NO_ARGUMENT = common dso_local global i32 0, align 4
@AT91C_INIT_ERROR = common dso_local global i64 0, align 8
@AT91C_CMD_SEND_OK = common dso_local global i64 0, align 8
@AT91C_SD_CARD_INSERTED = common dso_local global i32 0, align 4
@AT91C_SET_RELATIVE_ADDR_CMD = common dso_local global i32 0, align 4
@AT91C_BASE_MCI = common dso_local global %struct.TYPE_11__* null, align 8
@AT91C_CSD_RD_B_LEN_S = common dso_local global i32 0, align 4
@AT91C_CSD_RD_B_LEN_M = common dso_local global i32 0, align 4
@AT91C_CSD_WBLEN_S = common dso_local global i32 0, align 4
@AT91C_CSD_WBLEN_M = common dso_local global i32 0, align 4
@AT91C_CSD_v21_SECT_SIZE_S = common dso_local global i32 0, align 4
@AT91C_CSD_v21_SECT_SIZE_M = common dso_local global i32 0, align 4
@AT91C_CSD_RD_B_PAR_S = common dso_local global i32 0, align 4
@AT91C_CSD_RD_B_PAR_M = common dso_local global i32 0, align 4
@AT91C_CSD_WBLOCK_P_S = common dso_local global i32 0, align 4
@AT91C_CSD_WBLOCK_P_M = common dso_local global i32 0, align 4
@AT91C_CSD_v21_ER_BLEN_EN_S = common dso_local global i32 0, align 4
@AT91C_CSD_v21_ER_BLEN_EN_M = common dso_local global i32 0, align 4
@AT91C_CSD_RD_B_MIS_S = common dso_local global i32 0, align 4
@AT91C_CSD_RD_B_MIS_M = common dso_local global i32 0, align 4
@AT91C_CSD_WR_B_MIS_S = common dso_local global i32 0, align 4
@AT91C_CSD_WR_B_MIS_M = common dso_local global i32 0, align 4
@AT91C_CSD_C_SIZE_M_S = common dso_local global i32 0, align 4
@AT91C_CSD_C_SIZE_M_M = common dso_local global i32 0, align 4
@AT91C_CSD_CSIZE_H_S = common dso_local global i32 0, align 4
@AT91C_CSD_CSIZE_H_M = common dso_local global i32 0, align 4
@AT91C_CSD_CSIZE_L_S = common dso_local global i32 0, align 4
@AT91C_CSD_CSIZE_L_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SD-Card: %d Bytes\0A\0D\00", align 1
@AT91C_INIT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_MCI_SDCard_Init(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = load i32, i32* @AT91C_GO_IDLE_STATE_CMD, align 4
  %9 = load i32, i32* @AT91C_NO_ARGUMENT, align 4
  %10 = call i64 @AT91F_MCI_SendCommand(%struct.TYPE_13__* %7, i32 %8, i32 %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = call i64 @AT91F_MCI_SDCard_GetOCR(%struct.TYPE_13__* %11)
  %13 = load i64, i64* @AT91C_INIT_ERROR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* @AT91C_INIT_ERROR, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %206

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %21 = call i64 @AT91F_MCI_SDCard_GetCID(%struct.TYPE_13__* %19, i32* %20)
  %22 = load i64, i64* @AT91C_CMD_SEND_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %203

24:                                               ; preds = %18
  %25 = load i32, i32* @AT91C_SD_CARD_INSERTED, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 10
  store i32 %25, i32* %29, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = load i32, i32* @AT91C_SET_RELATIVE_ADDR_CMD, align 4
  %32 = call i64 @AT91F_MCI_SendCommand(%struct.TYPE_13__* %30, i32 %31, i32 0)
  %33 = load i64, i64* @AT91C_CMD_SEND_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %202

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AT91C_BASE_MCI, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 16
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %53 = call i64 @AT91F_MCI_GetCSD(%struct.TYPE_13__* %46, i32 %51, i32* %52)
  %54 = load i64, i64* @AT91C_CMD_SEND_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %201

56:                                               ; preds = %35
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AT91C_CSD_RD_B_LEN_S, align 4
  %60 = lshr i32 %58, %59
  %61 = load i32, i32* @AT91C_CSD_RD_B_LEN_M, align 4
  %62 = and i32 %60, %61
  %63 = shl i32 1, %62
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AT91C_CSD_WBLEN_S, align 4
  %71 = lshr i32 %69, %70
  %72 = load i32, i32* @AT91C_CSD_WBLEN_M, align 4
  %73 = and i32 %71, %72
  %74 = shl i32 1, %73
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @AT91C_CSD_v21_SECT_SIZE_S, align 4
  %82 = lshr i32 %80, %81
  %83 = load i32, i32* @AT91C_CSD_v21_SECT_SIZE_M, align 4
  %84 = and i32 %82, %83
  %85 = add i32 1, %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  store i32 %85, i32* %89, align 4
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AT91C_CSD_RD_B_PAR_S, align 4
  %93 = lshr i32 %91, %92
  %94 = load i32, i32* @AT91C_CSD_RD_B_PAR_M, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 4
  store i32 %95, i32* %99, align 4
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AT91C_CSD_WBLOCK_P_S, align 4
  %103 = lshr i32 %101, %102
  %104 = load i32, i32* @AT91C_CSD_WBLOCK_P_M, align 4
  %105 = and i32 %103, %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  store i32 %105, i32* %109, align 4
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AT91C_CSD_v21_ER_BLEN_EN_S, align 4
  %113 = lshr i32 %111, %112
  %114 = load i32, i32* @AT91C_CSD_v21_ER_BLEN_EN_M, align 4
  %115 = and i32 %113, %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 6
  store i32 %115, i32* %119, align 4
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AT91C_CSD_RD_B_MIS_S, align 4
  %123 = lshr i32 %121, %122
  %124 = load i32, i32* @AT91C_CSD_RD_B_MIS_M, align 4
  %125 = and i32 %123, %124
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 7
  store i32 %125, i32* %129, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AT91C_CSD_WR_B_MIS_S, align 4
  %133 = lshr i32 %131, %132
  %134 = load i32, i32* @AT91C_CSD_WR_B_MIS_M, align 4
  %135 = and i32 %133, %134
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 8
  store i32 %135, i32* %139, align 4
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @AT91C_CSD_C_SIZE_M_S, align 4
  %143 = lshr i32 %141, %142
  %144 = load i32, i32* @AT91C_CSD_C_SIZE_M_M, align 4
  %145 = and i32 %143, %144
  %146 = add i32 %145, 2
  %147 = shl i32 1, %146
  store i32 %147, i32* %5, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @AT91C_CSD_CSIZE_H_S, align 4
  %151 = lshr i32 %149, %150
  %152 = load i32, i32* @AT91C_CSD_CSIZE_H_M, align 4
  %153 = and i32 %151, %152
  %154 = shl i32 %153, 2
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %6, align 4
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @AT91C_CSD_CSIZE_L_S, align 4
  %160 = lshr i32 %158, %159
  %161 = load i32, i32* @AT91C_CSD_CSIZE_L_M, align 4
  %162 = and i32 %160, %161
  %163 = add i32 %156, %162
  %164 = add i32 %163, 1
  %165 = mul i32 %155, %164
  store i32 %165, i32* %6, align 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %6, align 4
  %172 = mul i32 %170, %171
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 9
  store i32 %172, i32* %176, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %181)
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %184 = call i64 @AT91F_MCI_SDCard_SetBusWidth(%struct.TYPE_13__* %183)
  %185 = load i64, i64* @AT91C_CMD_SEND_OK, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %56
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @AT91F_MCI_SetBlocklength(%struct.TYPE_13__* %188, i32 %193)
  %195 = load i64, i64* @AT91C_CMD_SEND_OK, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i32, i32* @AT91C_INIT_OK, align 4
  store i32 %198, i32* %2, align 4
  br label %206

199:                                              ; preds = %187
  br label %200

200:                                              ; preds = %199, %56
  br label %201

201:                                              ; preds = %200, %35
  br label %202

202:                                              ; preds = %201, %24
  br label %203

203:                                              ; preds = %202, %18
  %204 = load i64, i64* @AT91C_INIT_ERROR, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %203, %197, %15
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i64 @AT91F_MCI_SendCommand(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @AT91F_MCI_SDCard_GetOCR(%struct.TYPE_13__*) #1

declare dso_local i64 @AT91F_MCI_SDCard_GetCID(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @AT91F_MCI_GetCSD(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @AT91F_MCI_SDCard_SetBusWidth(%struct.TYPE_13__*) #1

declare dso_local i64 @AT91F_MCI_SetBlocklength(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
