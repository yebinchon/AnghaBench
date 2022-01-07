; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_mtk_hci_wmt_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_mtk_hci_wmt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtk_hci_wmt_params = type { i32, i32, i32*, i32, i32 }
%struct.btmtksdio_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.btmtk_hci_wmt_evt_funcc = type { i32 }
%struct.btmtk_hci_wmt_evt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtk_hci_wmt_cmd = type { i32 }
%struct.mtk_wmt_hdr = type { i32, i32, i32, i32 }

@BTMTK_WMT_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BTMTKSDIO_TX_WAIT_VND_EVT = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Execution of wmt command interrupted\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Execution of wmt command timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Wrong op received %d expected %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@BTMTK_WMT_PATCH_UNDONE = common dso_local global i32 0, align 4
@BTMTK_WMT_PATCH_DONE = common dso_local global i32 0, align 4
@BTMTK_WMT_ON_DONE = common dso_local global i32 0, align 4
@BTMTK_WMT_ON_PROGRESS = common dso_local global i32 0, align 4
@BTMTK_WMT_ON_UNDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.btmtk_hci_wmt_params*)* @mtk_hci_wmt_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hci_wmt_sync(%struct.hci_dev* %0, %struct.btmtk_hci_wmt_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.btmtk_hci_wmt_params*, align 8
  %6 = alloca %struct.btmtksdio_dev*, align 8
  %7 = alloca %struct.btmtk_hci_wmt_evt_funcc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btmtk_hci_wmt_evt*, align 8
  %11 = alloca %struct.mtk_hci_wmt_cmd, align 4
  %12 = alloca %struct.mtk_wmt_hdr*, align 8
  %13 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.btmtk_hci_wmt_params* %1, %struct.btmtk_hci_wmt_params** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = call %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev* %14)
  store %struct.btmtksdio_dev* %15, %struct.btmtksdio_dev** %6, align 8
  %16 = load i32, i32* @BTMTK_WMT_INVALID, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.btmtk_hci_wmt_params*, %struct.btmtk_hci_wmt_params** %5, align 8
  %18 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add i64 16, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %188

28:                                               ; preds = %2
  %29 = bitcast %struct.mtk_hci_wmt_cmd* %11 to %struct.mtk_wmt_hdr*
  store %struct.mtk_wmt_hdr* %29, %struct.mtk_wmt_hdr** %12, align 8
  %30 = load %struct.mtk_wmt_hdr*, %struct.mtk_wmt_hdr** %12, align 8
  %31 = getelementptr inbounds %struct.mtk_wmt_hdr, %struct.mtk_wmt_hdr* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.btmtk_hci_wmt_params*, %struct.btmtk_hci_wmt_params** %5, align 8
  %33 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mtk_wmt_hdr*, %struct.mtk_wmt_hdr** %12, align 8
  %36 = getelementptr inbounds %struct.mtk_wmt_hdr, %struct.mtk_wmt_hdr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.btmtk_hci_wmt_params*, %struct.btmtk_hci_wmt_params** %5, align 8
  %38 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = load %struct.mtk_wmt_hdr*, %struct.mtk_wmt_hdr** %12, align 8
  %43 = getelementptr inbounds %struct.mtk_wmt_hdr, %struct.mtk_wmt_hdr* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.btmtk_hci_wmt_params*, %struct.btmtk_hci_wmt_params** %5, align 8
  %45 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mtk_wmt_hdr*, %struct.mtk_wmt_hdr** %12, align 8
  %48 = getelementptr inbounds %struct.mtk_wmt_hdr, %struct.mtk_wmt_hdr* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.mtk_hci_wmt_cmd, %struct.mtk_hci_wmt_cmd* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.btmtk_hci_wmt_params*, %struct.btmtk_hci_wmt_params** %5, align 8
  %52 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.btmtk_hci_wmt_params*, %struct.btmtk_hci_wmt_params** %5, align 8
  %55 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i32 %50, i32 %53, i32 %56)
  %58 = load i32, i32* @BTMTKSDIO_TX_WAIT_VND_EVT, align 4
  %59 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %59, i32 0, i32 1
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @__hci_cmd_send(%struct.hci_dev* %62, i32 64623, i32 %63, %struct.mtk_hci_wmt_cmd* %11)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %28
  %68 = load i32, i32* @BTMTKSDIO_TX_WAIT_VND_EVT, align 4
  %69 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %70 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %69, i32 0, i32 1
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %3, align 4
  br label %188

73:                                               ; preds = %28
  %74 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %75 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %74, i32 0, i32 1
  %76 = load i32, i32* @BTMTKSDIO_TX_WAIT_VND_EVT, align 4
  %77 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %78 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %79 = call i32 @wait_on_bit_timeout(i32* %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @EINTR, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %86 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @BTMTKSDIO_TX_WAIT_VND_EVT, align 4
  %88 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %89 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %88, i32 0, i32 1
  %90 = call i32 @clear_bit(i32 %87, i32* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %3, align 4
  br label %188

92:                                               ; preds = %73
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %97 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @BTMTKSDIO_TX_WAIT_VND_EVT, align 4
  %99 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %100 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %99, i32 0, i32 1
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load i32, i32* @ETIMEDOUT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %188

104:                                              ; preds = %92
  %105 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %106 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.btmtk_hci_wmt_evt*
  store %struct.btmtk_hci_wmt_evt* %110, %struct.btmtk_hci_wmt_evt** %10, align 8
  %111 = load %struct.btmtk_hci_wmt_evt*, %struct.btmtk_hci_wmt_evt** %10, align 8
  %112 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, %struct.btmtk_hci_wmt_evt* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mtk_wmt_hdr*, %struct.mtk_wmt_hdr** %12, align 8
  %116 = getelementptr inbounds %struct.mtk_wmt_hdr, %struct.mtk_wmt_hdr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %104
  %120 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %121 = load %struct.btmtk_hci_wmt_evt*, %struct.btmtk_hci_wmt_evt** %10, align 8
  %122 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, %struct.btmtk_hci_wmt_evt* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mtk_wmt_hdr*, %struct.mtk_wmt_hdr** %12, align 8
  %126 = getelementptr inbounds %struct.mtk_wmt_hdr, %struct.mtk_wmt_hdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %127)
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %13, align 4
  br label %180

131:                                              ; preds = %104
  %132 = load %struct.btmtk_hci_wmt_evt*, %struct.btmtk_hci_wmt_evt** %10, align 8
  %133 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, %struct.btmtk_hci_wmt_evt* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %169 [
    i32 128, label %136
    i32 129, label %147
  ]

136:                                              ; preds = %131
  %137 = load %struct.btmtk_hci_wmt_evt*, %struct.btmtk_hci_wmt_evt** %10, align 8
  %138 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, %struct.btmtk_hci_wmt_evt* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @BTMTK_WMT_PATCH_UNDONE, align 4
  store i32 %143, i32* %9, align 4
  br label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @BTMTK_WMT_PATCH_DONE, align 4
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %144, %142
  br label %169

147:                                              ; preds = %131
  %148 = load %struct.btmtk_hci_wmt_evt*, %struct.btmtk_hci_wmt_evt** %10, align 8
  %149 = bitcast %struct.btmtk_hci_wmt_evt* %148 to %struct.btmtk_hci_wmt_evt_funcc*
  store %struct.btmtk_hci_wmt_evt_funcc* %149, %struct.btmtk_hci_wmt_evt_funcc** %7, align 8
  %150 = load %struct.btmtk_hci_wmt_evt_funcc*, %struct.btmtk_hci_wmt_evt_funcc** %7, align 8
  %151 = getelementptr inbounds %struct.btmtk_hci_wmt_evt_funcc, %struct.btmtk_hci_wmt_evt_funcc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @be16_to_cpu(i32 %152)
  %154 = icmp eq i32 %153, 1028
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* @BTMTK_WMT_ON_DONE, align 4
  store i32 %156, i32* %9, align 4
  br label %168

157:                                              ; preds = %147
  %158 = load %struct.btmtk_hci_wmt_evt_funcc*, %struct.btmtk_hci_wmt_evt_funcc** %7, align 8
  %159 = getelementptr inbounds %struct.btmtk_hci_wmt_evt_funcc, %struct.btmtk_hci_wmt_evt_funcc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @be16_to_cpu(i32 %160)
  %162 = icmp eq i32 %161, 1056
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* @BTMTK_WMT_ON_PROGRESS, align 4
  store i32 %164, i32* %9, align 4
  br label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @BTMTK_WMT_ON_UNDONE, align 4
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %165, %163
  br label %168

168:                                              ; preds = %167, %155
  br label %169

169:                                              ; preds = %131, %168, %146
  %170 = load %struct.btmtk_hci_wmt_params*, %struct.btmtk_hci_wmt_params** %5, align 8
  %171 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.btmtk_hci_wmt_params*, %struct.btmtk_hci_wmt_params** %5, align 8
  %177 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  store i32 %175, i32* %178, align 4
  br label %179

179:                                              ; preds = %174, %169
  br label %180

180:                                              ; preds = %179, %119
  %181 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %182 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = call i32 @kfree_skb(%struct.TYPE_4__* %183)
  %185 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %186 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %185, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %186, align 8
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %180, %95, %84, %67, %25
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__hci_cmd_send(%struct.hci_dev*, i32, i32, %struct.mtk_hci_wmt_cmd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wait_on_bit_timeout(i32*, i32, i32, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
