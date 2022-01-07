; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_ktiocomplete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_ktiocomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32, %struct.TYPE_6__, %struct.buf*, i32, %struct.sk_buff*, %struct.aoetgt* }
%struct.TYPE_6__ = type { i64 }
%struct.buf = type { i64, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i8* }
%struct.sk_buff = type { i64, i64, i32 }
%struct.aoetgt = type { i64, i64, %struct.aoedev* }
%struct.aoedev = type { i32, i32, i64 }
%struct.aoe_hdr = type { i32, i32 }
%struct.aoe_atahdr = type { i32, i32 }
%struct.aoeif = type { i32 }

@FFL_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"aoe: ata error cmd=%2.2Xh stat=%2.2Xh from e%ld.%d\0A\00", align 1
@BLK_STS_IOERR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s e%ld.%d.  skb->len=%d need=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"aoe: runt data size in read from\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s e%ld.%d.  bytes=%ld need=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"aoe: too-large data size in read from\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s e%ld.%d.  skb->len=%d need=512\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"aoe: runt data size in ataid from\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"aoe: unrecognized ata command %2.2Xh for %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame*)* @ktiocomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktiocomplete(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca %struct.aoe_hdr*, align 8
  %4 = alloca %struct.aoe_hdr*, align 8
  %5 = alloca %struct.aoe_atahdr*, align 8
  %6 = alloca %struct.aoe_atahdr*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.aoetgt*, align 8
  %10 = alloca %struct.aoeif*, align 8
  %11 = alloca %struct.aoedev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.frame* %0, %struct.frame** %2, align 8
  %14 = load %struct.frame*, %struct.frame** %2, align 8
  %15 = icmp eq %struct.frame* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %287

17:                                               ; preds = %1
  %18 = load %struct.frame*, %struct.frame** %2, align 8
  %19 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 5
  %20 = load %struct.aoetgt*, %struct.aoetgt** %19, align 8
  store %struct.aoetgt* %20, %struct.aoetgt** %9, align 8
  %21 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %22 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %21, i32 0, i32 2
  %23 = load %struct.aoedev*, %struct.aoedev** %22, align 8
  store %struct.aoedev* %23, %struct.aoedev** %11, align 8
  %24 = load %struct.frame*, %struct.frame** %2, align 8
  %25 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %8, align 8
  %27 = load %struct.frame*, %struct.frame** %2, align 8
  %28 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 2
  %29 = load %struct.buf*, %struct.buf** %28, align 8
  store %struct.buf* %29, %struct.buf** %7, align 8
  %30 = load %struct.frame*, %struct.frame** %2, align 8
  %31 = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FFL_PROBE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  br label %226

37:                                               ; preds = %17
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %81

41:                                               ; preds = %37
  %42 = load %struct.frame*, %struct.frame** %2, align 8
  %43 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @skb_mac_header(i32 %44)
  %46 = inttoptr i64 %45 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %46, %struct.aoe_hdr** %4, align 8
  %47 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %48 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %47, i64 1
  %49 = bitcast %struct.aoe_hdr* %48 to %struct.aoe_atahdr*
  store %struct.aoe_atahdr* %49, %struct.aoe_atahdr** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %53, %struct.aoe_hdr** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call i32 @skb_pull(%struct.sk_buff* %54, i32 8)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.aoe_atahdr*
  store %struct.aoe_atahdr* %59, %struct.aoe_atahdr** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @skb_pull(%struct.sk_buff* %60, i32 8)
  %62 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %63 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 169
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %41
  %68 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %6, align 8
  %69 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %72 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %75 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %78 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %67, %40
  %82 = load %struct.buf*, %struct.buf** %7, align 8
  %83 = icmp ne %struct.buf* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i8*, i8** @BLK_STS_IOERR, align 8
  %86 = load %struct.buf*, %struct.buf** %7, align 8
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i8* %85, i8** %89, align 8
  br label %90

90:                                               ; preds = %84, %81
  br label %226

91:                                               ; preds = %41
  %92 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %6, align 8
  %93 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 9
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %12, align 8
  %97 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %6, align 8
  %98 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %213 [
    i32 131, label %100
    i32 130, label %100
    i32 129, label %161
    i32 128, label %161
    i32 132, label %179
  ]

100:                                              ; preds = %91, %91
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  %107 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %108 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %111 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %109, i32 %112, i64 %115, i64 %116)
  %118 = load i8*, i8** @BLK_STS_IOERR, align 8
  %119 = load %struct.buf*, %struct.buf** %7, align 8
  %120 = getelementptr inbounds %struct.buf, %struct.buf* %119, i32 0, i32 2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i8* %118, i8** %122, align 8
  br label %225

123:                                              ; preds = %100
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.frame*, %struct.frame** %2, align 8
  %126 = getelementptr inbounds %struct.frame, %struct.frame* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %124, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %123
  %131 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %132 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %135 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.frame*, %struct.frame** %2, align 8
  %139 = getelementptr inbounds %struct.frame, %struct.frame* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %133, i32 %136, i64 %137, i64 %141)
  %143 = load i8*, i8** @BLK_STS_IOERR, align 8
  %144 = load %struct.buf*, %struct.buf** %7, align 8
  %145 = getelementptr inbounds %struct.buf, %struct.buf* %144, i32 0, i32 2
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i8* %143, i8** %147, align 8
  br label %225

148:                                              ; preds = %123
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = load %struct.frame*, %struct.frame** %2, align 8
  %151 = getelementptr inbounds %struct.frame, %struct.frame* %150, i32 0, i32 2
  %152 = load %struct.buf*, %struct.buf** %151, align 8
  %153 = getelementptr inbounds %struct.buf, %struct.buf* %152, i32 0, i32 2
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = load %struct.frame*, %struct.frame** %2, align 8
  %156 = getelementptr inbounds %struct.frame, %struct.frame* %155, i32 0, i32 1
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @bvcpy(%struct.sk_buff* %149, %struct.TYPE_5__* %154, i64 %159, i64 %157)
  br label %161

161:                                              ; preds = %91, %91, %148
  %162 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %163 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %162, i32 0, i32 0
  %164 = call i32 @spin_lock_irq(i32* %163)
  %165 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call %struct.aoeif* @getif(%struct.aoetgt* %165, i32 %168)
  store %struct.aoeif* %169, %struct.aoeif** %10, align 8
  %170 = load %struct.aoeif*, %struct.aoeif** %10, align 8
  %171 = icmp ne %struct.aoeif* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %161
  %173 = load %struct.aoeif*, %struct.aoeif** %10, align 8
  %174 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %173, i32 0, i32 0
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %172, %161
  %176 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %177 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %176, i32 0, i32 0
  %178 = call i32 @spin_unlock_irq(i32* %177)
  br label %225

179:                                              ; preds = %91
  %180 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp slt i64 %182, 512
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %186 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %189 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %187, i32 %190, i64 %193)
  br label %225

195:                                              ; preds = %179
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = call i32 @skb_linearize(%struct.sk_buff* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %225

200:                                              ; preds = %195
  %201 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %202 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %201, i32 0, i32 0
  %203 = call i32 @spin_lock_irq(i32* %202)
  %204 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %205 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @ataid_complete(%struct.aoedev* %204, %struct.aoetgt* %205, i64 %208)
  %210 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %211 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %210, i32 0, i32 0
  %212 = call i32 @spin_unlock_irq(i32* %211)
  br label %225

213:                                              ; preds = %91
  %214 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %6, align 8
  %215 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.aoe_hdr*, %struct.aoe_hdr** %3, align 8
  %218 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %217, i32 0, i32 1
  %219 = call i32 @get_unaligned(i32* %218)
  %220 = call i32 @be16_to_cpu(i32 %219)
  %221 = load %struct.aoe_hdr*, %struct.aoe_hdr** %3, align 8
  %222 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %216, i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %213, %200, %199, %184, %175, %130, %106
  br label %226

226:                                              ; preds = %225, %90, %36
  %227 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %228 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %227, i32 0, i32 0
  %229 = call i32 @spin_lock_irq(i32* %228)
  %230 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %231 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %258

234:                                              ; preds = %226
  %235 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %236 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, -1
  store i64 %238, i64* %236, align 8
  %239 = icmp sgt i64 %238, 0
  br i1 %239, label %240, label %258

240:                                              ; preds = %234
  %241 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %242 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %240
  %246 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %247 = call i32 @count_targets(%struct.aoedev* %246, i32* %13)
  %248 = load i32, i32* %13, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %252 = call i32 @probe(%struct.aoetgt* %251)
  %253 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %254 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %254, align 8
  br label %257

257:                                              ; preds = %250, %245
  br label %258

258:                                              ; preds = %257, %240, %234, %226
  %259 = load %struct.frame*, %struct.frame** %2, align 8
  %260 = call i32 @aoe_freetframe(%struct.frame* %259)
  %261 = load %struct.buf*, %struct.buf** %7, align 8
  %262 = icmp ne %struct.buf* %261, null
  br i1 %262, label %263, label %279

263:                                              ; preds = %258
  %264 = load %struct.buf*, %struct.buf** %7, align 8
  %265 = getelementptr inbounds %struct.buf, %struct.buf* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %266, -1
  store i64 %267, i64* %265, align 8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %263
  %270 = load %struct.buf*, %struct.buf** %7, align 8
  %271 = getelementptr inbounds %struct.buf, %struct.buf* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %277 = load %struct.buf*, %struct.buf** %7, align 8
  %278 = call i32 @aoe_end_buf(%struct.aoedev* %276, %struct.buf* %277)
  br label %279

279:                                              ; preds = %275, %269, %263, %258
  %280 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %281 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %280, i32 0, i32 0
  %282 = call i32 @spin_unlock_irq(i32* %281)
  %283 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  %284 = call i32 @aoedev_put(%struct.aoedev* %283)
  %285 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %286 = call i32 @dev_kfree_skb(%struct.sk_buff* %285)
  br label %287

287:                                              ; preds = %279, %16
  ret void
}

declare dso_local i64 @skb_mac_header(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i8*, i64, i32, i64, i64) #1

declare dso_local i32 @bvcpy(%struct.sk_buff*, %struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.aoeif* @getif(%struct.aoetgt*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ataid_complete(%struct.aoedev*, %struct.aoetgt*, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @count_targets(%struct.aoedev*, i32*) #1

declare dso_local i32 @probe(%struct.aoetgt*) #1

declare dso_local i32 @aoe_freetframe(%struct.frame*) #1

declare dso_local i32 @aoe_end_buf(%struct.aoedev*, %struct.buf*) #1

declare dso_local i32 @aoedev_put(%struct.aoedev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
