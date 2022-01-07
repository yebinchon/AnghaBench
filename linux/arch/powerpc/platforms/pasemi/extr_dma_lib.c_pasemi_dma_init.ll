; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.resource = type { i32, i32 }
%struct.device_node = type { i32 }

@pasemi_dma_init.init_lock = internal global i32 0, align 4
@pasemi = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dma_pdev = common dso_local global %struct.pci_dev* null, align 8
@PCI_VENDOR_ID_PASEMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't find I/O Bridge\0A\00", align 1
@iob_regs = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't find DMA controller\0A\00", align 1
@dma_regs = common dso_local global i8* null, align 8
@base_hw_irq = common dso_local global i32 0, align 4
@PAS_DMA_CAP_TXCH = common dso_local global i32 0, align 4
@PAS_DMA_CAP_TXCH_TCHN_M = common dso_local global i32 0, align 4
@PAS_DMA_CAP_TXCH_TCHN_S = common dso_local global i32 0, align 4
@num_txch = common dso_local global i32 0, align 4
@PAS_DMA_CAP_RXCH = common dso_local global i32 0, align 4
@PAS_DMA_CAP_RXCH_RCHN_M = common dso_local global i32 0, align 4
@PAS_DMA_CAP_RXCH_RCHN_S = common dso_local global i32 0, align 4
@num_rxch = common dso_local global i32 0, align 4
@mac_regs = common dso_local global i8** null, align 8
@dma_status = common dso_local global i32 0, align 4
@MAX_TXCH = common dso_local global i32 0, align 4
@txch_free = common dso_local global i32 0, align 4
@MAX_RXCH = common dso_local global i32 0, align 4
@rxch_free = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@PAS_DMA_COM_RXCMD = common dso_local global i32 0, align 4
@PAS_DMA_COM_RXSTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Warning: Could not disable RX section\0A\00", align 1
@PAS_DMA_COM_TXCMD = common dso_local global i32 0, align 4
@PAS_DMA_COM_TXSTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Warning: Could not disable TX section\0A\00", align 1
@PAS_DMA_COM_CFG = common dso_local global i32 0, align 4
@PAS_DMA_COM_TXCMD_EN = common dso_local global i32 0, align 4
@PAS_DMA_COM_RXCMD_EN = common dso_local global i32 0, align 4
@MAX_FLAGS = common dso_local global i32 0, align 4
@flags_free = common dso_local global i32 0, align 4
@MAX_FUN = common dso_local global i32 0, align 4
@fun_free = common dso_local global i32 0, align 4
@PAS_DMA_TXF_CFLG0 = common dso_local global i32 0, align 4
@PAS_DMA_TXF_CFLG1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"PA Semi PWRficient DMA library initialized (%d tx, %d rx channels)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pasemi_dma_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @pasemi, align 4
  %12 = call i32 @machine_is(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %241

17:                                               ; preds = %0
  %18 = call i32 @spin_lock(i32* @pasemi_dma_init.init_lock)
  %19 = load %struct.pci_dev*, %struct.pci_dev** @dma_pdev, align 8
  %20 = icmp ne %struct.pci_dev* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %238

22:                                               ; preds = %17
  %23 = load i32, i32* @PCI_VENDOR_ID_PASEMI, align 4
  %24 = call %struct.pci_dev* @pci_get_device(i32 %23, i32 40961, %struct.pci_dev* null)
  store %struct.pci_dev* %24, %struct.pci_dev** %2, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = call i32 (...) @BUG()
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %238

32:                                               ; preds = %22
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i8* @map_onedev(%struct.pci_dev* %33, i32 0)
  store i8* %34, i8** @iob_regs, align 8
  %35 = load i32, i32* @PCI_VENDOR_ID_PASEMI, align 4
  %36 = call %struct.pci_dev* @pci_get_device(i32 %35, i32 40967, %struct.pci_dev* null)
  store %struct.pci_dev* %36, %struct.pci_dev** @dma_pdev, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** @dma_pdev, align 8
  %38 = icmp ne %struct.pci_dev* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = call i32 (...) @BUG()
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %238

44:                                               ; preds = %32
  %45 = load %struct.pci_dev*, %struct.pci_dev** @dma_pdev, align 8
  %46 = call i8* @map_onedev(%struct.pci_dev* %45, i32 0)
  store i8* %46, i8** @dma_regs, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** @dma_pdev, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @virq_to_hw(i32 %49)
  store i32 %50, i32* @base_hw_irq, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** @dma_pdev, align 8
  %52 = load i32, i32* @PAS_DMA_CAP_TXCH, align 4
  %53 = call i32 @pci_read_config_dword(%struct.pci_dev* %51, i32 %52, i32* %10)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @PAS_DMA_CAP_TXCH_TCHN_M, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @PAS_DMA_CAP_TXCH_TCHN_S, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* @num_txch, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** @dma_pdev, align 8
  %60 = load i32, i32* @PAS_DMA_CAP_RXCH, align 4
  %61 = call i32 @pci_read_config_dword(%struct.pci_dev* %59, i32 %60, i32* %10)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @PAS_DMA_CAP_RXCH_RCHN_M, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @PAS_DMA_CAP_RXCH_RCHN_S, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* @num_rxch, align 4
  store i32 0, i32* %7, align 4
  %67 = load i32, i32* @PCI_VENDOR_ID_PASEMI, align 4
  %68 = call %struct.pci_dev* @pci_get_device(i32 %67, i32 40966, %struct.pci_dev* null)
  store %struct.pci_dev* %68, %struct.pci_dev** %3, align 8
  br label %69

69:                                               ; preds = %80, %44
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = icmp ne %struct.pci_dev* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = call i8* @map_onedev(%struct.pci_dev* %73, i32 0)
  %75 = load i8**, i8*** @mac_regs, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  store i8* %74, i8** %79, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @PCI_VENDOR_ID_PASEMI, align 4
  %82 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %83 = call %struct.pci_dev* @pci_get_device(i32 %81, i32 40966, %struct.pci_dev* %82)
  store %struct.pci_dev* %83, %struct.pci_dev** %3, align 8
  br label %69

84:                                               ; preds = %69
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = call i32 @pci_dev_put(%struct.pci_dev* %85)
  %87 = load i32, i32* @PCI_VENDOR_ID_PASEMI, align 4
  %88 = call %struct.pci_dev* @pci_get_device(i32 %87, i32 40965, %struct.pci_dev* null)
  store %struct.pci_dev* %88, %struct.pci_dev** %3, align 8
  br label %89

89:                                               ; preds = %100, %84
  %90 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %91 = icmp ne %struct.pci_dev* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %94 = call i8* @map_onedev(%struct.pci_dev* %93, i32 0)
  %95 = load i8**, i8*** @mac_regs, align 8
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* %94, i8** %99, align 8
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @PCI_VENDOR_ID_PASEMI, align 4
  %102 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %103 = call %struct.pci_dev* @pci_get_device(i32 %101, i32 40965, %struct.pci_dev* %102)
  store %struct.pci_dev* %103, %struct.pci_dev** %3, align 8
  br label %89

104:                                              ; preds = %89
  %105 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %106 = call i32 @pci_dev_put(%struct.pci_dev* %105)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %108 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %107)
  store %struct.device_node* %108, %struct.device_node** %5, align 8
  %109 = load %struct.device_node*, %struct.device_node** %5, align 8
  %110 = icmp ne %struct.device_node* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.device_node*, %struct.device_node** %5, align 8
  %113 = call i32 @of_address_to_resource(%struct.device_node* %112, i32 1, %struct.resource* %4)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %111, %104
  %115 = load %struct.device_node*, %struct.device_node** %5, align 8
  %116 = icmp ne %struct.device_node* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117, %114
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  store i32 -41943040, i32* %121, align 4
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 4096
  %125 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 1
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %117
  %127 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @resource_size(%struct.resource* %4)
  %130 = call i32 @ioremap_cache(i32 %128, i32 %129)
  store i32 %130, i32* @dma_status, align 4
  %131 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %132 = call i32 @pci_dev_put(%struct.pci_dev* %131)
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %141, %126
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @MAX_TXCH, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @txch_free, align 4
  %140 = call i32 @__set_bit(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %133

144:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %153, %144
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @MAX_RXCH, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @rxch_free, align 4
  %152 = call i32 @__set_bit(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %145

156:                                              ; preds = %145
  %157 = load i64, i64* @jiffies, align 8
  %158 = load i64, i64* @HZ, align 8
  %159 = add i64 %157, %158
  store i64 %159, i64* %9, align 8
  %160 = load i32, i32* @PAS_DMA_COM_RXCMD, align 4
  %161 = call i32 @pasemi_write_dma_reg(i32 %160, i32 0)
  br label %162

162:                                              ; preds = %174, %156
  %163 = load i32, i32* @PAS_DMA_COM_RXSTA, align 4
  %164 = call i32 @pasemi_read_dma_reg(i32 %163)
  %165 = and i32 %164, 1
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load i64, i64* @jiffies, align 8
  %169 = load i64, i64* %9, align 8
  %170 = call i64 @time_after(i64 %168, i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %175

174:                                              ; preds = %167
  br label %162

175:                                              ; preds = %172, %162
  %176 = load i64, i64* @jiffies, align 8
  %177 = load i64, i64* @HZ, align 8
  %178 = add i64 %176, %177
  store i64 %178, i64* %9, align 8
  %179 = load i32, i32* @PAS_DMA_COM_TXCMD, align 4
  %180 = call i32 @pasemi_write_dma_reg(i32 %179, i32 0)
  br label %181

181:                                              ; preds = %193, %175
  %182 = load i32, i32* @PAS_DMA_COM_TXSTA, align 4
  %183 = call i32 @pasemi_read_dma_reg(i32 %182)
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load i64, i64* @jiffies, align 8
  %188 = load i64, i64* %9, align 8
  %189 = call i64 @time_after(i64 %187, i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %194

193:                                              ; preds = %186
  br label %181

194:                                              ; preds = %191, %181
  %195 = load i32, i32* @PAS_DMA_COM_CFG, align 4
  %196 = call i32 @pasemi_read_dma_reg(i32 %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* @PAS_DMA_COM_CFG, align 4
  %198 = load i32, i32* %10, align 4
  %199 = or i32 %198, 402653184
  %200 = call i32 @pasemi_write_dma_reg(i32 %197, i32 %199)
  %201 = load i32, i32* @PAS_DMA_COM_TXCMD, align 4
  %202 = load i32, i32* @PAS_DMA_COM_TXCMD_EN, align 4
  %203 = call i32 @pasemi_write_dma_reg(i32 %201, i32 %202)
  %204 = load i32, i32* @PAS_DMA_COM_RXCMD, align 4
  %205 = load i32, i32* @PAS_DMA_COM_RXCMD_EN, align 4
  %206 = call i32 @pasemi_write_dma_reg(i32 %204, i32 %205)
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %215, %194
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @MAX_FLAGS, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @flags_free, align 4
  %214 = call i32 @__set_bit(i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %207

218:                                              ; preds = %207
  store i32 0, i32* %6, align 4
  br label %219

219:                                              ; preds = %227, %218
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @MAX_FUN, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* @fun_free, align 4
  %226 = call i32 @__set_bit(i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %223
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %219

230:                                              ; preds = %219
  %231 = load i32, i32* @PAS_DMA_TXF_CFLG0, align 4
  %232 = call i32 @pasemi_write_dma_reg(i32 %231, i32 -1)
  %233 = load i32, i32* @PAS_DMA_TXF_CFLG1, align 4
  %234 = call i32 @pasemi_write_dma_reg(i32 %233, i32 -1)
  %235 = load i32, i32* @num_txch, align 4
  %236 = load i32, i32* @num_rxch, align 4
  %237 = call i32 @pr_info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %230, %39, %27, %21
  %239 = call i32 @spin_unlock(i32* @pasemi_dma_init.init_lock)
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %1, align 4
  br label %241

241:                                              ; preds = %238, %14
  %242 = load i32, i32* %1, align 4
  ret i32 %242
}

declare dso_local i32 @machine_is(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i8* @map_onedev(%struct.pci_dev*, i32) #1

declare dso_local i32 @virq_to_hw(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @ioremap_cache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @pasemi_write_dma_reg(i32, i32) #1

declare dso_local i32 @pasemi_read_dma_reg(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
