; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm_common.c_omap_prcm_register_chain_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm_common.c_omap_prcm_register_chain_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_prcm_irq_setup = type { i32, i32*, i32, i32, i64, i32, i64, i64, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.irq_chip_generic = type { %struct.irq_chip_type* }
%struct.irq_chip_type = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@OMAP_PRCM_MAX_NR_PENDING_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@prcm_irq_setup = common dso_local global %struct.omap_prcm_irq_setup* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"PRCM: already initialized; won't reinitialize\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"PRCM: nr_regs too large\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@prcm_irq_chips = common dso_local global %struct.irq_chip_generic** null, align 8
@omap_prcm_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"PRCM: failed to allocate irq descs: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PRCM\00", align 1
@prm_base = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"PRCM: failed to allocate generic chip\0A\00", align 1
@irq_gc_ack_set_bit = common dso_local global i32 0, align 4
@irq_gc_mask_clr_bit = common dso_local global i32 0, align 4
@irq_gc_mask_set_bit = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_prcm_register_chain_handler(%struct.omap_prcm_irq_setup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_prcm_irq_setup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_chip_generic*, align 8
  %11 = alloca %struct.irq_chip_type*, align 8
  %12 = alloca i32, align 4
  store %struct.omap_prcm_irq_setup* %0, %struct.omap_prcm_irq_setup** %3, align 8
  %13 = load i32, i32* @OMAP_PRCM_MAX_NR_PENDING_REG, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %18 = icmp ne %struct.omap_prcm_irq_setup* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %231

22:                                               ; preds = %1
  %23 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %24 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  %26 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** @prcm_irq_setup, align 8
  %27 = icmp ne %struct.omap_prcm_irq_setup* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %231

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @OMAP_PRCM_MAX_NR_PENDING_REG, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %231

40:                                               ; preds = %32
  %41 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  store %struct.omap_prcm_irq_setup* %41, %struct.omap_prcm_irq_setup** @prcm_irq_setup, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kcalloc(i32 %42, i32 8, i32 %43)
  %45 = bitcast i8* %44 to %struct.irq_chip_generic**
  store %struct.irq_chip_generic** %45, %struct.irq_chip_generic*** @prcm_irq_chips, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 %46, i32 4, i32 %47)
  %49 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** @prcm_irq_setup, align 8
  %50 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kcalloc(i32 %51, i32 4, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** @prcm_irq_setup, align 8
  %56 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.irq_chip_generic**, %struct.irq_chip_generic*** @prcm_irq_chips, align 8
  %58 = icmp ne %struct.irq_chip_generic** %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %40
  %60 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** @prcm_irq_setup, align 8
  %61 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %60, i32 0, i32 9
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** @prcm_irq_setup, align 8
  %66 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %59, %40
  br label %227

70:                                               ; preds = %64
  %71 = mul nuw i64 4, %14
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(i32* %16, i32 0, i32 %72)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %121, %70
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %77 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %74
  %81 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %82 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %81, i32 0, i32 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 31
  %91 = shl i32 1, %90
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 5
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %16, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 4
  %98 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %99 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %98, i32 0, i32 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %80
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 31
  %110 = shl i32 1, %109
  %111 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %112 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = ashr i32 %114, 5
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %110
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %107, %80
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %74

124:                                              ; preds = %74
  %125 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %126 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @omap_prcm_irq_handler, align 4
  %130 = call i32 @irq_set_chained_handler(i32 %128, i32 %129)
  %131 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %132 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %133, 32
  %135 = call i64 @irq_alloc_descs(i32 -1, i32 0, i32 %134, i32 0)
  %136 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %137 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %136, i32 0, i32 4
  store i64 %135, i64* %137, align 8
  %138 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %139 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %124
  %143 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %144 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %145)
  br label %227

147:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %217, %147
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %151 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %220

154:                                              ; preds = %148
  %155 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %156 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = mul nsw i32 %158, 32
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %157, %160
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prm_base, i32 0, i32 0), align 4
  %163 = load i32, i32* @handle_level_irq, align 4
  %164 = call %struct.irq_chip_generic* @irq_alloc_generic_chip(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 1, i64 %161, i32 %162, i32 %163)
  store %struct.irq_chip_generic* %164, %struct.irq_chip_generic** %10, align 8
  %165 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %166 = icmp ne %struct.irq_chip_generic* %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %154
  %168 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %227

169:                                              ; preds = %154
  %170 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %171 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %170, i32 0, i32 0
  %172 = load %struct.irq_chip_type*, %struct.irq_chip_type** %171, align 8
  store %struct.irq_chip_type* %172, %struct.irq_chip_type** %11, align 8
  %173 = load i32, i32* @irq_gc_ack_set_bit, align 4
  %174 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %175 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  store i32 %173, i32* %176, align 8
  %177 = load i32, i32* @irq_gc_mask_clr_bit, align 4
  %178 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %179 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* @irq_gc_mask_set_bit, align 4
  %182 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %183 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %186 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = mul nsw i32 %188, 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %187, %190
  %192 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %193 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  store i64 %191, i64* %194, align 8
  %195 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %196 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = mul nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %197, %200
  %202 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %203 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  store i64 %201, i64* %204, align 8
  %205 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %16, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @IRQ_NOREQUEST, align 4
  %211 = call i32 @irq_setup_generic_chip(%struct.irq_chip_generic* %205, i32 %209, i32 0, i32 %210, i32 0)
  %212 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %213 = load %struct.irq_chip_generic**, %struct.irq_chip_generic*** @prcm_irq_chips, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.irq_chip_generic*, %struct.irq_chip_generic** %213, i64 %215
  store %struct.irq_chip_generic* %212, %struct.irq_chip_generic** %216, align 8
  br label %217

217:                                              ; preds = %169
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %148

220:                                              ; preds = %148
  %221 = call i32 @omap_prcm_event_to_irq(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.omap_prcm_irq_setup*, %struct.omap_prcm_irq_setup** %3, align 8
  %224 = getelementptr inbounds %struct.omap_prcm_irq_setup, %struct.omap_prcm_irq_setup* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @omap_pcs_legacy_init(i32 %222, i32 %225)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %231

227:                                              ; preds = %167, %142, %69
  %228 = call i32 (...) @omap_prcm_irq_cleanup()
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %231

231:                                              ; preds = %227, %220, %36, %28, %19
  %232 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i8* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @irq_set_chained_handler(i32, i32) #2

declare dso_local i64 @irq_alloc_descs(i32, i32, i32, i32) #2

declare dso_local %struct.irq_chip_generic* @irq_alloc_generic_chip(i8*, i32, i64, i32, i32) #2

declare dso_local i32 @irq_setup_generic_chip(%struct.irq_chip_generic*, i32, i32, i32, i32) #2

declare dso_local i32 @omap_prcm_event_to_irq(i8*) #2

declare dso_local i32 @omap_pcs_legacy_init(i32, i32) #2

declare dso_local i32 @omap_prcm_irq_cleanup(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
