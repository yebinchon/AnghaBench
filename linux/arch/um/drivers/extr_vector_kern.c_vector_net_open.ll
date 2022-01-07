; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i8* }
%struct.vector_private = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i8*, i8*, i32*, i32, i32, i8*, i32*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vector_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VECTOR_RX = common dso_local global i32 0, align 4
@MAX_IOV_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VECTOR_TX = common dso_local global i32 0, align 4
@irq_rr = common dso_local global i32 0, align 4
@VECTOR_BASE_IRQ = common dso_local global i8* null, align 8
@IRQ_READ = common dso_local global i32 0, align 4
@vector_rx_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vector_open: failed to get rx irq(%d)\0A\00", align 1
@ENETUNREACH = common dso_local global i32 0, align 4
@VECTOR_IRQ_SPACE = common dso_local global i32 0, align 4
@IRQ_WRITE = common dso_local global i32 0, align 4
@vector_tx_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"vector_open: failed to get tx irq(%d)\0A\00", align 1
@VECTOR_QDISC_BYPASS = common dso_local global i32 0, align 4
@VECTOR_BPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vector_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vector_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vector_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.vector_private* @netdev_priv(%struct.net_device* %8)
  store %struct.vector_private* %9, %struct.vector_private** %4, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %13 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %12, i32 0, i32 15
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %17 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %22 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %21, i32 0, i32 15
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %287

27:                                               ; preds = %1
  %28 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %29 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %31 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %30, i32 0, i32 15
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %35 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %38 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_4__* @uml_vector_user_open(i32 %36, i32 %39)
  %41 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %42 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %41, i32 0, i32 4
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %44 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp eq %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %283

48:                                               ; preds = %27
  %49 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %50 = call i64 @build_transport_data(%struct.vector_private* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %283

53:                                               ; preds = %48
  %54 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %55 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VECTOR_RX, align 4
  %58 = and i32 %56, %57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %53
  %61 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %62 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %63 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @get_depth(i32 %64)
  %66 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %67 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MAX_IOV_SIZE, align 4
  %70 = call i8* @create_queue(%struct.vector_private* %61, i32 %65, i32 %68, i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_3__*
  %72 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %73 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %72, i32 0, i32 14
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %73, align 8
  %74 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %75 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @get_depth(i32 %76)
  %78 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %79 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %78, i32 0, i32 14
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  br label %97

82:                                               ; preds = %53
  %83 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %84 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @kmalloc(i32 %85, i32 %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %90 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %89, i32 0, i32 12
  store i32* %88, i32** %90, align 8
  %91 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %92 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %91, i32 0, i32 12
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %283

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %60
  %98 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %99 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @VECTOR_TX, align 4
  %102 = and i32 %100, %101
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %97
  %105 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %106 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %107 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @get_depth(i32 %108)
  %110 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %111 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @MAX_IOV_SIZE, align 4
  %114 = call i8* @create_queue(%struct.vector_private* %105, i32 %109, i32 %112, i32 %113)
  %115 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %116 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %115, i32 0, i32 11
  store i8* %114, i8** %116, align 8
  br label %132

117:                                              ; preds = %97
  %118 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %119 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i8* @kmalloc(i32 %120, i32 %121)
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %125 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %124, i32 0, i32 8
  store i32* %123, i32** %125, align 8
  %126 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %127 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %126, i32 0, i32 8
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %117
  br label %283

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %104
  %133 = load i32, i32* @irq_rr, align 4
  %134 = load i8*, i8** @VECTOR_BASE_IRQ, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr i8, i8* %134, i64 %135
  %137 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %138 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %137, i32 0, i32 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IRQ_READ, align 4
  %143 = load i32, i32* @vector_rx_interrupt, align 4
  %144 = load i32, i32* @IRQF_SHARED, align 4
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = call i32 @um_request_irq(i8* %136, i32 %141, i32 %142, i32 %143, i32 %144, i32 %147, %struct.net_device* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %132
  %153 = load %struct.net_device*, %struct.net_device** %3, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @netdev_err(%struct.net_device* %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* @ENETUNREACH, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %283

158:                                              ; preds = %132
  %159 = load i32, i32* @irq_rr, align 4
  %160 = load i8*, i8** @VECTOR_BASE_IRQ, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr i8, i8* %160, i64 %161
  %163 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %164 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %163, i32 0, i32 7
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* @irq_rr, align 4
  %166 = load i8*, i8** @VECTOR_BASE_IRQ, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr i8, i8* %166, i64 %167
  %169 = load %struct.net_device*, %struct.net_device** %3, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* @irq_rr, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* @VECTOR_IRQ_SPACE, align 4
  %174 = srem i32 %172, %173
  store i32 %174, i32* @irq_rr, align 4
  %175 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %176 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @VECTOR_TX, align 4
  %179 = and i32 %177, %178
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %218

181:                                              ; preds = %158
  %182 = load i32, i32* @irq_rr, align 4
  %183 = load i8*, i8** @VECTOR_BASE_IRQ, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr i8, i8* %183, i64 %184
  %186 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %187 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %186, i32 0, i32 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @IRQ_WRITE, align 4
  %192 = load i32, i32* @vector_tx_interrupt, align 4
  %193 = load i32, i32* @IRQF_SHARED, align 4
  %194 = load %struct.net_device*, %struct.net_device** %3, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.net_device*, %struct.net_device** %3, align 8
  %198 = call i32 @um_request_irq(i8* %185, i32 %190, i32 %191, i32 %192, i32 %193, i32 %196, %struct.net_device* %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %181
  %202 = load %struct.net_device*, %struct.net_device** %3, align 8
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @netdev_err(%struct.net_device* %202, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @ENETUNREACH, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %6, align 4
  br label %283

207:                                              ; preds = %181
  %208 = load i32, i32* @irq_rr, align 4
  %209 = load i8*, i8** @VECTOR_BASE_IRQ, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr i8, i8* %209, i64 %210
  %212 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %213 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %212, i32 0, i32 6
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* @irq_rr, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* @VECTOR_IRQ_SPACE, align 4
  %217 = srem i32 %215, %216
  store i32 %217, i32* @irq_rr, align 4
  br label %218

218:                                              ; preds = %207, %158
  %219 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %220 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @VECTOR_QDISC_BYPASS, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %218
  %226 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %227 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %226, i32 0, i32 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @uml_raw_enable_qdisc_bypass(i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %225
  %234 = load i32, i32* @VECTOR_BPF, align 4
  %235 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %236 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %233, %225
  br label %240

240:                                              ; preds = %239, %218
  %241 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %242 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @VECTOR_BPF, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %240
  %248 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %249 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %248, i32 0, i32 4
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.net_device*, %struct.net_device** %3, align 8
  %254 = getelementptr inbounds %struct.net_device, %struct.net_device* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @uml_vector_default_bpf(i32 %252, i32 %255)
  %257 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %258 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %247, %240
  %260 = load %struct.net_device*, %struct.net_device** %3, align 8
  %261 = call i32 @netif_start_queue(%struct.net_device* %260)
  %262 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %263 = call i32 @vector_rx(%struct.vector_private* %262)
  %264 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %265 = call i32 @vector_reset_stats(%struct.vector_private* %264)
  %266 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %267 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = call %struct.vector_device* @find_device(i32 %268)
  store %struct.vector_device* %269, %struct.vector_device** %7, align 8
  %270 = load %struct.vector_device*, %struct.vector_device** %7, align 8
  %271 = getelementptr inbounds %struct.vector_device, %struct.vector_device* %270, i32 0, i32 0
  store i32 1, i32* %271, align 4
  %272 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %273 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @VECTOR_TX, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %259
  %279 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %280 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %279, i32 0, i32 2
  %281 = call i32 @add_timer(i32* %280)
  br label %282

282:                                              ; preds = %278, %259
  store i32 0, i32* %2, align 4
  br label %287

283:                                              ; preds = %201, %152, %130, %95, %52, %47
  %284 = load %struct.net_device*, %struct.net_device** %3, align 8
  %285 = call i32 @vector_net_close(%struct.net_device* %284)
  %286 = load i32, i32* %6, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %283, %282, %20
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.vector_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @uml_vector_user_open(i32, i32) #1

declare dso_local i64 @build_transport_data(%struct.vector_private*) #1

declare dso_local i8* @create_queue(%struct.vector_private*, i32, i32, i32) #1

declare dso_local i32 @get_depth(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @um_request_irq(i8*, i32, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @uml_raw_enable_qdisc_bypass(i32) #1

declare dso_local i32 @uml_vector_default_bpf(i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @vector_rx(%struct.vector_private*) #1

declare dso_local i32 @vector_reset_stats(%struct.vector_private*) #1

declare dso_local %struct.vector_device* @find_device(i32) #1

declare dso_local i32 @add_timer(i32*) #1

declare dso_local i32 @vector_net_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
