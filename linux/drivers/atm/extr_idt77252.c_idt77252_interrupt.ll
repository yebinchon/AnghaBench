; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@SAR_REG_STAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IDT77252_BIT_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Re-entering irq_handler()\0A\00", align 1
@SAR_STAT_TSIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s: TSIF\0A\00", align 1
@SAR_STAT_TXICP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s: TXICP\0A\00", align 1
@SAR_STAT_TSQF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s: TSQF\0A\00", align 1
@SAR_STAT_TMROF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"%s: TMROF\0A\00", align 1
@SAR_STAT_EPDU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"%s: EPDU\0A\00", align 1
@SAR_STAT_RSQAF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"%s: RSQAF\0A\00", align 1
@SAR_STAT_RSQF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"%s: RSQF\0A\00", align 1
@SAR_STAT_RAWCF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"%s: RAWCF\0A\00", align 1
@SAR_STAT_PHYI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"%s: PHYI\00", align 1
@SAR_STAT_FBQ0A = common dso_local global i32 0, align 4
@SAR_STAT_FBQ1A = common dso_local global i32 0, align 4
@SAR_STAT_FBQ2A = common dso_local global i32 0, align 4
@SAR_STAT_FBQ3A = common dso_local global i32 0, align 4
@SAR_REG_CFG = common dso_local global i32 0, align 4
@SAR_CFG_FBIE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"%s: FBQA: %04x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @idt77252_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.idt77252_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.idt77252_dev*
  store %struct.idt77252_dev* %9, %struct.idt77252_dev** %6, align 8
  %10 = load i32, i32* @SAR_REG_STAT, align 4
  %11 = call i32 @readl(i32 %10)
  %12 = and i32 %11, 65535
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %299

17:                                               ; preds = %2
  %18 = load i32, i32* @IDT77252_BIT_INTERRUPT, align 4
  %19 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %20 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %19, i32 0, i32 0
  %21 = call i64 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %293

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SAR_REG_STAT, align 4
  %31 = call i32 @writel(i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SAR_STAT_TSIF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %38 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %42 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 15
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %48 = call i32 @idt77252_tx(%struct.idt77252_dev* %47)
  br label %49

49:                                               ; preds = %36, %28
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SAR_STAT_TXICP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %56 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %60 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 14
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %54, %49
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SAR_STAT_TSQF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %72 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %76 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 12
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %82 = call i32 @idt77252_tx(%struct.idt77252_dev* %81)
  br label %83

83:                                               ; preds = %70, %65
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @SAR_STAT_TMROF, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %90 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %94 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 11
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %100 = call i32 @idt77252_collect_stat(%struct.idt77252_dev* %99)
  br label %101

101:                                              ; preds = %88, %83
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @SAR_STAT_EPDU, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %108 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %112 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %118 = call i32 @idt77252_rx(%struct.idt77252_dev* %117)
  br label %119

119:                                              ; preds = %106, %101
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @SAR_STAT_RSQAF, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %126 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  %129 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %130 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %136 = call i32 @idt77252_rx(%struct.idt77252_dev* %135)
  br label %137

137:                                              ; preds = %124, %119
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @SAR_STAT_RSQF, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %144 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  %147 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %148 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 6
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %154 = call i32 @idt77252_rx(%struct.idt77252_dev* %153)
  br label %155

155:                                              ; preds = %142, %137
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @SAR_STAT_RAWCF, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %162 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  %165 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %166 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 4
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %172 = call i32 @idt77252_rx_raw(%struct.idt77252_dev* %171)
  br label %173

173:                                              ; preds = %160, %155
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @SAR_STAT_PHYI, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %217

178:                                              ; preds = %173
  %179 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %180 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %181)
  %183 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %184 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 10
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %190 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %189, i32 0, i32 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = icmp ne %struct.TYPE_3__* %193, null
  br i1 %194, label %195, label %216

195:                                              ; preds = %178
  %196 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %197 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %196, i32 0, i32 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %201, align 8
  %203 = icmp ne i32 (%struct.TYPE_4__*)* %202, null
  br i1 %203, label %204, label %216

204:                                              ; preds = %195
  %205 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %206 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %205, i32 0, i32 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %210, align 8
  %212 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %213 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %212, i32 0, i32 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = call i32 %211(%struct.TYPE_4__* %214)
  br label %216

216:                                              ; preds = %204, %195, %178
  br label %217

217:                                              ; preds = %216, %173
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @SAR_STAT_FBQ0A, align 4
  %220 = load i32, i32* @SAR_STAT_FBQ1A, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @SAR_STAT_FBQ2A, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @SAR_STAT_FBQ3A, align 4
  %225 = or i32 %223, %224
  %226 = and i32 %218, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %292

228:                                              ; preds = %217
  %229 = load i32, i32* @SAR_REG_CFG, align 4
  %230 = call i32 @readl(i32 %229)
  %231 = load i32, i32* @SAR_CFG_FBIE, align 4
  %232 = xor i32 %231, -1
  %233 = and i32 %230, %232
  %234 = load i32, i32* @SAR_REG_CFG, align 4
  %235 = call i32 @writel(i32 %233, i32 %234)
  %236 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %237 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = call i32 (i8*, i32, ...) @INTPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %238, i32 %239)
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @SAR_STAT_FBQ0A, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %228
  %246 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %247 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 2
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %245, %228
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @SAR_STAT_FBQ1A, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %252
  %258 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %259 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 3
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %257, %252
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @SAR_STAT_FBQ2A, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %264
  %270 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %271 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 7
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %269, %264
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @SAR_STAT_FBQ3A, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %276
  %282 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %283 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 8
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %281, %276
  %289 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %290 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %289, i32 0, i32 1
  %291 = call i32 @schedule_work(i32* %290)
  br label %292

292:                                              ; preds = %288, %217
  br label %293

293:                                              ; preds = %292, %23
  %294 = load i32, i32* @IDT77252_BIT_INTERRUPT, align 4
  %295 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %296 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %295, i32 0, i32 0
  %297 = call i32 @clear_bit(i32 %294, i32* %296)
  %298 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %293, %15
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @INTPRINTK(i8*, i32, ...) #1

declare dso_local i32 @idt77252_tx(%struct.idt77252_dev*) #1

declare dso_local i32 @idt77252_collect_stat(%struct.idt77252_dev*) #1

declare dso_local i32 @idt77252_rx(%struct.idt77252_dev*) #1

declare dso_local i32 @idt77252_rx_raw(%struct.idt77252_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
