; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i32, i32, i8*, %struct.idt77252_dev*, i32, i32, i32, i8**, %struct.atm_dev*, i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.atm_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__, %struct.idt77252_dev* }
%struct.TYPE_4__ = type { i32 (%struct.atm_dev*)*, i32 (%struct.atm_dev*)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }

@idt77252_init_one.last = internal global %struct.idt77252_dev** @idt77252_chain, align 8
@idt77252_chain = common dso_local global %struct.idt77252_dev* null, align 8
@idt77252_init_one.index = internal global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"idt77252: can't enable PCI device at %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"idt77252: can't enable DMA for PCI device at %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"idt77252-%d: can't allocate private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"idt77252-%d\00", align 1
@idt77252_softint = common dso_local global i32 0, align 4
@tst_timer = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: can't ioremap() membase\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: preset failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"idt77252\00", align 1
@idt77252_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: can't register atm device\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s: can't ioremap() FBQ%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"%s: ABR SAR (Rev %c): MEM %08lx SRAM %08lx [%u KB]\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"%s: init_card failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"%s: dev_open failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @idt77252_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.idt77252_dev*, align 8
  %9 = alloca %struct.atm_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pci_enable_device(%struct.pci_dev* %12)
  store i32 %13, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_name(%struct.pci_dev* %16)
  %18 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %3, align 4
  br label %288

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = call i32 @DMA_BIT_MASK(i32 32)
  %24 = call i32 @dma_set_mask_and_coherent(i32* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_name(%struct.pci_dev* %27)
  %29 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %288

31:                                               ; preds = %20
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.idt77252_dev* @kzalloc(i32 96, i32 %32)
  store %struct.idt77252_dev* %33, %struct.idt77252_dev** %8, align 8
  %34 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %35 = icmp ne %struct.idt77252_dev* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @idt77252_init_one.index, align 4
  %38 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %284

41:                                               ; preds = %31
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %46 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @idt77252_init_one.index, align 4
  %48 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %49 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %52 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %51, i32 0, i32 16
  store %struct.pci_dev* %50, %struct.pci_dev** %52, align 8
  %53 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %54 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %57 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sprintf(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %61 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %60, i32 0, i32 15
  %62 = load i32, i32* @idt77252_softint, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i64 @pci_resource_start(%struct.pci_dev* %64, i32 1)
  store i64 %65, i64* %6, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i64 @pci_resource_start(%struct.pci_dev* %66, i32 2)
  store i64 %67, i64* %7, align 8
  %68 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %69 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %68, i32 0, i32 14
  %70 = call i32 @mutex_init(i32* %69)
  %71 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %72 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %71, i32 0, i32 13
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %75 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %74, i32 0, i32 12
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %78 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %77, i32 0, i32 11
  %79 = load i32, i32* @tst_timer, align 4
  %80 = call i32 @timer_setup(i32* %78, i32 %79, i32 0)
  %81 = load i64, i64* %6, align 8
  %82 = call i8* @ioremap(i64 %81, i32 1024)
  %83 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %84 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %86 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %41
  %90 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %91 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %281

96:                                               ; preds = %41
  %97 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %98 = call i64 @idt77252_preset(%struct.idt77252_dev* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %102 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %276

107:                                              ; preds = %96
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 1
  %110 = call %struct.atm_dev* @atm_dev_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %109, i32* @idt77252_ops, i32 -1, i32* null)
  store %struct.atm_dev* %110, %struct.atm_dev** %9, align 8
  %111 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %112 = icmp ne %struct.atm_dev* %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %107
  %114 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %115 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %11, align 4
  br label %276

120:                                              ; preds = %107
  %121 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %122 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %123 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %122, i32 0, i32 3
  store %struct.idt77252_dev* %121, %struct.idt77252_dev** %123, align 8
  %124 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %125 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %126 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %125, i32 0, i32 10
  store %struct.atm_dev* %124, %struct.atm_dev** %126, align 8
  %127 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %128 = call i32 @probe_sram(%struct.idt77252_dev* %127)
  %129 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %130 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %165, %120
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %134, label %168

134:                                              ; preds = %131
  %135 = load i64, i64* %7, align 8
  %136 = or i64 %135, 2097152
  %137 = load i32, i32* %10, align 4
  %138 = shl i32 %137, 18
  %139 = sext i32 %138 to i64
  %140 = or i64 %136, %139
  %141 = call i8* @ioremap(i64 %140, i32 4)
  %142 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %143 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %142, i32 0, i32 9
  %144 = load i8**, i8*** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* %141, i8** %147, align 8
  %148 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %149 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %148, i32 0, i32 9
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %164, label %156

156:                                              ; preds = %134
  %157 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %158 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %11, align 4
  br label %273

164:                                              ; preds = %134
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %131

168:                                              ; preds = %131
  %169 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %170 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %173 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %187

176:                                              ; preds = %168
  %177 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %178 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %179, 25
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %183 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 65, %184
  %186 = sub nsw i32 %185, 1
  br label %188

187:                                              ; preds = %176, %168
  br label %188

188:                                              ; preds = %187, %181
  %189 = phi i32 [ %186, %181 ], [ 63, %187 ]
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* %7, align 8
  %192 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %193 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %194, 1024
  %196 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %171, i32 %189, i64 %190, i64 %191, i32 %195)
  %197 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %198 = call i64 @init_card(%struct.atm_dev* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %188
  %201 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %202 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @EIO, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %11, align 4
  br label %273

207:                                              ; preds = %188
  %208 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %209 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %212 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %215 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %218 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 4
  %220 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %221 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %224 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  %225 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %226 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32 (%struct.atm_dev*)*, i32 (%struct.atm_dev*)** %228, align 8
  %230 = icmp ne i32 (%struct.atm_dev*)* %229, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %207
  %232 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %233 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %232, i32 0, i32 0
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i32 (%struct.atm_dev*)*, i32 (%struct.atm_dev*)** %235, align 8
  %237 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %238 = call i32 %236(%struct.atm_dev* %237)
  br label %239

239:                                              ; preds = %231, %207
  %240 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %241 = call i64 @idt77252_dev_open(%struct.idt77252_dev* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %239
  %244 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %245 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* @EIO, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %11, align 4
  br label %257

250:                                              ; preds = %239
  %251 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %252 = load %struct.idt77252_dev**, %struct.idt77252_dev*** @idt77252_init_one.last, align 8
  store %struct.idt77252_dev* %251, %struct.idt77252_dev** %252, align 8
  %253 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %254 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %253, i32 0, i32 5
  store %struct.idt77252_dev** %254, %struct.idt77252_dev*** @idt77252_init_one.last, align 8
  %255 = load i32, i32* @idt77252_init_one.index, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* @idt77252_init_one.index, align 4
  store i32 0, i32* %3, align 4
  br label %288

257:                                              ; preds = %243
  %258 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %259 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32 (%struct.atm_dev*)*, i32 (%struct.atm_dev*)** %261, align 8
  %263 = icmp ne i32 (%struct.atm_dev*)* %262, null
  br i1 %263, label %264, label %272

264:                                              ; preds = %257
  %265 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %266 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %265, i32 0, i32 0
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32 (%struct.atm_dev*)*, i32 (%struct.atm_dev*)** %268, align 8
  %270 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %271 = call i32 %269(%struct.atm_dev* %270)
  br label %272

272:                                              ; preds = %264, %257
  br label %273

273:                                              ; preds = %272, %200, %156
  %274 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %275 = call i32 @deinit_card(%struct.idt77252_dev* %274)
  br label %276

276:                                              ; preds = %273, %113, %100
  %277 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %278 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %277, i32 0, i32 4
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @iounmap(i8* %279)
  br label %281

281:                                              ; preds = %276, %89
  %282 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %283 = call i32 @kfree(%struct.idt77252_dev* %282)
  br label %284

284:                                              ; preds = %281, %36
  %285 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %286 = call i32 @pci_disable_device(%struct.pci_dev* %285)
  %287 = load i32, i32* %11, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %250, %26, %15
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.idt77252_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i8* @ioremap(i64, i32) #1

declare dso_local i64 @idt77252_preset(%struct.idt77252_dev*) #1

declare dso_local %struct.atm_dev* @atm_dev_register(i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @probe_sram(%struct.idt77252_dev*) #1

declare dso_local i64 @init_card(%struct.atm_dev*) #1

declare dso_local i64 @idt77252_dev_open(%struct.idt77252_dev*) #1

declare dso_local i32 @deinit_card(%struct.idt77252_dev*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @kfree(%struct.idt77252_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
