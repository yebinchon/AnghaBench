; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_open_outb_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_open_outb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { i32 }
%struct.fsl_rmu = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32*, i32, i8**, i8*, i64, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@RIO_MIN_TX_RING_SIZE = common dso_local global i32 0, align 4
@RIO_MAX_TX_RING_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RIO_MSG_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RIO_MSG_DESC_SIZE = common dso_local global i32 0, align 4
@fsl_rio_tx_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"msg_tx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_open_outb_mbox(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rio_priv*, align 8
  %14 = alloca %struct.fsl_rmu*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %16 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %15, i32 0, i32 0
  %17 = load %struct.rio_priv*, %struct.rio_priv** %16, align 8
  store %struct.rio_priv* %17, %struct.rio_priv** %13, align 8
  %18 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %19 = call %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport* %18)
  store %struct.fsl_rmu* %19, %struct.fsl_rmu** %14, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @RIO_MIN_TX_RING_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @RIO_MAX_TX_RING_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @is_power_of_2(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %23, %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %230

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %37 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %41 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %128, %34
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %46 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %131

50:                                               ; preds = %43
  %51 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %52 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RIO_MSG_BUFFER_SIZE, align 4
  %55 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %56 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @dma_alloc_coherent(i32 %53, i32 %54, i32* %61, i32 %62)
  %64 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %65 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %63, i8** %70, align 8
  %71 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %72 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %127, label %80

80:                                               ; preds = %50
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %123, %80
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %86 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %83
  %91 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %92 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %122

100:                                              ; preds = %90
  %101 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %102 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RIO_MSG_BUFFER_SIZE, align 4
  %105 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %106 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %114 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dma_free_coherent(i32 %103, i32 %104, i8* %112, i32 %120)
  br label %122

122:                                              ; preds = %100, %90
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %83

126:                                              ; preds = %83
  br label %230

127:                                              ; preds = %50
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %43

131:                                              ; preds = %43
  %132 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %133 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %136 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @RIO_MSG_DESC_SIZE, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %142 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i8* @dma_alloc_coherent(i32 %134, i32 %140, i32* %143, i32 %144)
  %146 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %147 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  store i8* %145, i8** %148, align 8
  %149 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %150 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %131
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %12, align 4
  br label %251

157:                                              ; preds = %131
  %158 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %159 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 5
  store i64 0, i64* %160, align 8
  %161 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %162 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %161, i32 0, i32 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 4
  %165 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %166 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @out_be32(i32* %164, i32 %168)
  %170 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %171 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %170, i32 0, i32 1
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %175 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @out_be32(i32* %173, i32 %177)
  %179 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %180 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %179, i32 0, i32 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  %183 = call i32 @out_be32(i32* %182, i32 4)
  %184 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %185 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %184, i32 0, i32 1
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = call i32 @out_be32(i32* %187, i32 179)
  %189 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %190 = call i32 @IRQ_RIO_TX(%struct.rio_mport* %189)
  %191 = load i32, i32* @fsl_rio_tx_handler, align 4
  %192 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %193 = bitcast %struct.rio_mport* %192 to i8*
  %194 = call i32 @request_irq(i32 %190, i32 %191, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %193)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %157
  br label %232

198:                                              ; preds = %157
  %199 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %200 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %199, i32 0, i32 1
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = call i32 @out_be32(i32* %202, i32 1049120)
  %204 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %205 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %204, i32 0, i32 1
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %209 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %208, i32 0, i32 1
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = call i32 @in_be32(i32* %211)
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @get_bitmask_order(i32 %213)
  %215 = sub nsw i32 %214, 2
  %216 = shl i32 %215, 12
  %217 = or i32 %212, %216
  %218 = call i32 @out_be32(i32* %207, i32 %217)
  %219 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %220 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %219, i32 0, i32 1
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %224 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %223, i32 0, i32 1
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = call i32 @in_be32(i32* %226)
  %228 = or i32 %227, 1
  %229 = call i32 @out_be32(i32* %222, i32 %228)
  br label %230

230:                                              ; preds = %198, %126, %31
  %231 = load i32, i32* %12, align 4
  store i32 %231, i32* %5, align 4
  br label %286

232:                                              ; preds = %197
  %233 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %234 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %237 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @RIO_MSG_DESC_SIZE, align 4
  %241 = mul nsw i32 %239, %240
  %242 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %243 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 4
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %247 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @dma_free_coherent(i32 %235, i32 %241, i8* %245, i32 %249)
  br label %251

251:                                              ; preds = %232, %154
  store i32 0, i32* %10, align 4
  br label %252

252:                                              ; preds = %281, %251
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %255 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %253, %257
  br i1 %258, label %259, label %284

259:                                              ; preds = %252
  %260 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %261 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @RIO_MSG_BUFFER_SIZE, align 4
  %264 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %265 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 3
  %267 = load i8**, i8*** %266, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.fsl_rmu*, %struct.fsl_rmu** %14, align 8
  %273 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @dma_free_coherent(i32 %262, i32 %263, i8* %271, i32 %279)
  br label %281

281:                                              ; preds = %259
  %282 = load i32, i32* %10, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %10, align 4
  br label %252

284:                                              ; preds = %252
  %285 = load i32, i32* %12, align 4
  store i32 %285, i32* %5, align 4
  br label %286

286:                                              ; preds = %284, %230
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @IRQ_RIO_TX(%struct.rio_mport*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @get_bitmask_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
