; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.regmap_irq_chip_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.regmap*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64 }
%struct.regmap = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"IRQ sync failed to resume: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to clear the interrupt status bits\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to sync unmasks in %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to sync masks in %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to sync wakes in %x: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to ack 0x%x: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to sync type in %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @regmap_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regmap_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.regmap_irq_chip_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.regmap_irq_chip_data* %11, %struct.regmap_irq_chip_data** %3, align 8
  %12 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %13 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %12, i32 0, i32 7
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %4, align 8
  %15 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %16 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.regmap*, %struct.regmap** %4, align 8
  %23 = getelementptr inbounds %struct.regmap, %struct.regmap* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_get_sync(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.regmap*, %struct.regmap** %4, align 8
  %30 = getelementptr inbounds %struct.regmap, %struct.regmap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %21
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %37 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %78, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %44 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %43, i32 0, i32 6
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %41
  %50 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %51 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.regmap*, %struct.regmap** %4, align 8
  %57 = getelementptr inbounds %struct.regmap, %struct.regmap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %61 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = add nsw i32 %54, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.regmap*, %struct.regmap** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @regmap_read(%struct.regmap* %65, i32 %66, i32* %9)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %49
  %71 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %72 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %71, i32 0, i32 7
  %73 = load %struct.regmap*, %struct.regmap** %72, align 8
  %74 = getelementptr inbounds %struct.regmap, %struct.regmap* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %70, %49
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %41

81:                                               ; preds = %41
  %82 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %83 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %35
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %406, %84
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %88 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %87, i32 0, i32 6
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %409

93:                                               ; preds = %85
  %94 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %95 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %94, i32 0, i32 6
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %406

101:                                              ; preds = %93
  %102 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %103 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %102, i32 0, i32 6
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.regmap*, %struct.regmap** %4, align 8
  %109 = getelementptr inbounds %struct.regmap, %struct.regmap* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %113 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = add nsw i32 %106, %115
  store i32 %116, i32* %7, align 4
  %117 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %118 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %117, i32 0, i32 6
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 15
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %101
  %124 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %127 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %126, i32 0, i32 12
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %134 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %133, i32 0, i32 10
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, -1
  %141 = call i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data* %124, i32 %125, i32 %132, i32 %140)
  store i32 %141, i32* %6, align 4
  br label %228

142:                                              ; preds = %101
  %143 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %144 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %143, i32 0, i32 6
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %209

149:                                              ; preds = %142
  %150 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %153 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %152, i32 0, i32 12
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %160 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %159, i32 0, i32 10
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %165, -1
  %167 = call i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data* %150, i32 %151, i32 %158, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %149
  %171 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %172 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %171, i32 0, i32 7
  %173 = load %struct.regmap*, %struct.regmap** %172, align 8
  %174 = getelementptr inbounds %struct.regmap, %struct.regmap* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (i32, i8*, ...) @dev_err(i32 %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %170, %149
  %179 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %180 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %179, i32 0, i32 6
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %185 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %184, i32 0, i32 6
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %183, %188
  store i32 %189, i32* %8, align 4
  %190 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %191, %192
  %194 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %195 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %194, i32 0, i32 12
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %202 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %201, i32 0, i32 10
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data* %190, i32 %193, i32 %200, i32 %207)
  store i32 %208, i32* %6, align 4
  br label %227

209:                                              ; preds = %142
  %210 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %213 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %212, i32 0, i32 12
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %220 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %219, i32 0, i32 10
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data* %210, i32 %211, i32 %218, i32 %225)
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %209, %178
  br label %228

228:                                              ; preds = %227, %123
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %233 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %232, i32 0, i32 7
  %234 = load %struct.regmap*, %struct.regmap** %233, align 8
  %235 = getelementptr inbounds %struct.regmap, %struct.regmap* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i32 (i32, i8*, ...) @dev_err(i32 %236, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %231, %228
  %240 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %241 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %240, i32 0, i32 6
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = load %struct.regmap*, %struct.regmap** %4, align 8
  %247 = getelementptr inbounds %struct.regmap, %struct.regmap* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %245, %248
  %250 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %251 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %249, %252
  %254 = add nsw i32 %244, %253
  store i32 %254, i32* %7, align 4
  %255 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %256 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %255, i32 0, i32 11
  %257 = load i32*, i32** %256, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %316

259:                                              ; preds = %239
  %260 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %261 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %260, i32 0, i32 6
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 14
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %259
  %267 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %270 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %269, i32 0, i32 12
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %277 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %276, i32 0, i32 11
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = xor i32 %282, -1
  %284 = call i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data* %267, i32 %268, i32 %275, i32 %283)
  store i32 %284, i32* %6, align 4
  br label %303

285:                                              ; preds = %259
  %286 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %287 = load i32, i32* %7, align 4
  %288 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %289 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %288, i32 0, i32 12
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %296 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %295, i32 0, i32 11
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data* %286, i32 %287, i32 %294, i32 %301)
  store i32 %302, i32* %6, align 4
  br label %303

303:                                              ; preds = %285, %266
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %303
  %307 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %308 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %307, i32 0, i32 7
  %309 = load %struct.regmap*, %struct.regmap** %308, align 8
  %310 = getelementptr inbounds %struct.regmap, %struct.regmap* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* %6, align 4
  %314 = call i32 (i32, i8*, ...) @dev_err(i32 %311, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %306, %303
  br label %316

316:                                              ; preds = %315, %239
  %317 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %318 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %317, i32 0, i32 6
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 13
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %316
  br label %406

324:                                              ; preds = %316
  %325 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %326 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %325, i32 0, i32 10
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %5, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %405

333:                                              ; preds = %324
  %334 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %335 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %334, i32 0, i32 6
  %336 = load %struct.TYPE_2__*, %struct.TYPE_2__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %333
  %341 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %342 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %341, i32 0, i32 6
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 12
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %405

347:                                              ; preds = %340, %333
  %348 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %349 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %348, i32 0, i32 6
  %350 = load %struct.TYPE_2__*, %struct.TYPE_2__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %5, align 4
  %354 = load %struct.regmap*, %struct.regmap** %4, align 8
  %355 = getelementptr inbounds %struct.regmap, %struct.regmap* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = mul nsw i32 %353, %356
  %358 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %359 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = mul nsw i32 %357, %360
  %362 = add nsw i32 %352, %361
  store i32 %362, i32* %7, align 4
  %363 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %364 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %363, i32 0, i32 6
  %365 = load %struct.TYPE_2__*, %struct.TYPE_2__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 11
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %381

369:                                              ; preds = %347
  %370 = load %struct.regmap*, %struct.regmap** %4, align 8
  %371 = load i32, i32* %7, align 4
  %372 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %373 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %372, i32 0, i32 10
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = xor i32 %378, -1
  %380 = call i32 @regmap_write(%struct.regmap* %370, i32 %371, i32 %379)
  store i32 %380, i32* %6, align 4
  br label %392

381:                                              ; preds = %347
  %382 = load %struct.regmap*, %struct.regmap** %4, align 8
  %383 = load i32, i32* %7, align 4
  %384 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %385 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %384, i32 0, i32 10
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %5, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @regmap_write(%struct.regmap* %382, i32 %383, i32 %390)
  store i32 %391, i32* %6, align 4
  br label %392

392:                                              ; preds = %381, %369
  %393 = load i32, i32* %6, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %392
  %396 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %397 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %396, i32 0, i32 7
  %398 = load %struct.regmap*, %struct.regmap** %397, align 8
  %399 = getelementptr inbounds %struct.regmap, %struct.regmap* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* %6, align 4
  %403 = call i32 (i32, i8*, ...) @dev_err(i32 %400, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %401, i32 %402)
  br label %404

404:                                              ; preds = %395, %392
  br label %405

405:                                              ; preds = %404, %340, %324
  br label %406

406:                                              ; preds = %405, %323, %100
  %407 = load i32, i32* %5, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %5, align 4
  br label %85

409:                                              ; preds = %85
  %410 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %411 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %410, i32 0, i32 6
  %412 = load %struct.TYPE_2__*, %struct.TYPE_2__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 10
  %414 = load i32, i32* %413, align 8
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %510, label %416

416:                                              ; preds = %409
  store i32 0, i32* %5, align 4
  br label %417

417:                                              ; preds = %506, %416
  %418 = load i32, i32* %5, align 4
  %419 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %420 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %419, i32 0, i32 6
  %421 = load %struct.TYPE_2__*, %struct.TYPE_2__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 6
  %423 = load i32, i32* %422, align 8
  %424 = icmp slt i32 %418, %423
  br i1 %424, label %425, label %509

425:                                              ; preds = %417
  %426 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %427 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %426, i32 0, i32 9
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %5, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %425
  br label %506

435:                                              ; preds = %425
  %436 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %437 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %436, i32 0, i32 6
  %438 = load %struct.TYPE_2__*, %struct.TYPE_2__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* %5, align 4
  %442 = load %struct.regmap*, %struct.regmap** %4, align 8
  %443 = getelementptr inbounds %struct.regmap, %struct.regmap* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = mul nsw i32 %441, %444
  %446 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %447 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = mul nsw i32 %445, %448
  %450 = add nsw i32 %440, %449
  store i32 %450, i32* %7, align 4
  %451 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %452 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %451, i32 0, i32 6
  %453 = load %struct.TYPE_2__*, %struct.TYPE_2__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %453, i32 0, i32 9
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %476

457:                                              ; preds = %435
  %458 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %459 = load i32, i32* %7, align 4
  %460 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %461 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %460, i32 0, i32 9
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %5, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %468 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %467, i32 0, i32 8
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %5, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = xor i32 %473, -1
  %475 = call i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data* %458, i32 %459, i32 %466, i32 %474)
  store i32 %475, i32* %6, align 4
  br label %494

476:                                              ; preds = %435
  %477 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %478 = load i32, i32* %7, align 4
  %479 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %480 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %479, i32 0, i32 9
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %5, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %487 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %486, i32 0, i32 8
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %5, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data* %477, i32 %478, i32 %485, i32 %492)
  store i32 %493, i32* %6, align 4
  br label %494

494:                                              ; preds = %476, %457
  %495 = load i32, i32* %6, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %505

497:                                              ; preds = %494
  %498 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %499 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %498, i32 0, i32 7
  %500 = load %struct.regmap*, %struct.regmap** %499, align 8
  %501 = getelementptr inbounds %struct.regmap, %struct.regmap* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* %7, align 4
  %504 = call i32 (i32, i8*, ...) @dev_err(i32 %502, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %503)
  br label %505

505:                                              ; preds = %497, %494
  br label %506

506:                                              ; preds = %505, %434
  %507 = load i32, i32* %5, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %5, align 4
  br label %417

509:                                              ; preds = %417
  br label %510

510:                                              ; preds = %509, %409
  %511 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %512 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %511, i32 0, i32 6
  %513 = load %struct.TYPE_2__*, %struct.TYPE_2__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %513, i32 0, i32 8
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %522

517:                                              ; preds = %510
  %518 = load %struct.regmap*, %struct.regmap** %4, align 8
  %519 = getelementptr inbounds %struct.regmap, %struct.regmap* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @pm_runtime_put(i32 %520)
  br label %522

522:                                              ; preds = %517, %510
  %523 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %524 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 4
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %527, label %543

527:                                              ; preds = %522
  %528 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %529 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  store i32 %530, i32* %5, align 4
  br label %531

531:                                              ; preds = %539, %527
  %532 = load i32, i32* %5, align 4
  %533 = icmp slt i32 %532, 0
  br i1 %533, label %534, label %542

534:                                              ; preds = %531
  %535 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %536 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %535, i32 0, i32 5
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @irq_set_irq_wake(i32 %537, i32 0)
  br label %539

539:                                              ; preds = %534
  %540 = load i32, i32* %5, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %5, align 4
  br label %531

542:                                              ; preds = %531
  br label %565

543:                                              ; preds = %522
  %544 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %545 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %544, i32 0, i32 3
  %546 = load i32, i32* %545, align 4
  %547 = icmp sgt i32 %546, 0
  br i1 %547, label %548, label %564

548:                                              ; preds = %543
  store i32 0, i32* %5, align 4
  br label %549

549:                                              ; preds = %560, %548
  %550 = load i32, i32* %5, align 4
  %551 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %552 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %551, i32 0, i32 3
  %553 = load i32, i32* %552, align 4
  %554 = icmp slt i32 %550, %553
  br i1 %554, label %555, label %563

555:                                              ; preds = %549
  %556 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %557 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %556, i32 0, i32 5
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @irq_set_irq_wake(i32 %558, i32 1)
  br label %560

560:                                              ; preds = %555
  %561 = load i32, i32* %5, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %5, align 4
  br label %549

563:                                              ; preds = %549
  br label %564

564:                                              ; preds = %563, %543
  br label %565

565:                                              ; preds = %564, %542
  %566 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %567 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %566, i32 0, i32 3
  store i32 0, i32* %567, align 4
  %568 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %569 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %568, i32 0, i32 4
  %570 = call i32 @mutex_unlock(i32* %569)
  ret void
}

declare dso_local %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_irq_update_bits(%struct.regmap_irq_chip_data*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
