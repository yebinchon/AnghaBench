; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_arc_cpu_mumbojumbo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_arc_cpu_mumbojumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_arc = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.bcr_identity }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bcr_identity = type { i32, i32, i32 }
%struct.bcr_lpb = type { i32, i64 }

@cpuinfo_arc700 = common dso_local global %struct.cpuinfo_arc* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"\0AIDENTITY\09: ARCVER [%#02x] ARCNUM [%#02x] CHIPID [%#4x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"processor [%d]\09: %s %s (%s ISA) %s%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ARCompact\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ARCv2\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"[Big-Endian]\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" Dual-Issue \00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Timers\09\09: %s%s%s%s%s%s\0AISA Extn\09: \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Timer0 \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Timer1 \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"RTC [UP 64-bit] \00", align 1
@CONFIG_ARC_TIMERS_64BIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"GFRC [SMP 64-bit] \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"mpy\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"mpy[opt %d] \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"%s%s%s%s%s%s%s%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"atomic \00", align 1
@CONFIG_ARC_HAS_LLSC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"ll64 \00", align 1
@CONFIG_ARC_HAS_LL64 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"unalign \00", align 1
@CONFIG_ARC_USE_UNALIGNED_MEM_ACCESS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"div_rem \00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"BPU\09\09: %s%s match, cache:%d, Predict Table:%d Return stk: %d\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@ARC_REG_LPB_BUILD = common dso_local global i32 0, align 4
@ARC_REG_LPB_CTRL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c" Loop Buffer:%d %s\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32)* @arc_cpu_mumbojumbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arc_cpu_mumbojumbo(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuinfo_arc*, align 8
  %8 = alloca %struct.bcr_identity*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bcr_lpb, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** @cpuinfo_arc700, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %14, i64 %16
  store %struct.cpuinfo_arc* %17, %struct.cpuinfo_arc** %7, align 8
  %18 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %18, i32 0, i32 6
  store %struct.bcr_identity* %19, %struct.bcr_identity** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %21 = call i32 @FIX_PTR(%struct.cpuinfo_arc* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load %struct.bcr_identity*, %struct.bcr_identity** %8, align 8
  %30 = getelementptr inbounds %struct.bcr_identity, %struct.bcr_identity* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bcr_identity*, %struct.bcr_identity** %8, align 8
  %33 = getelementptr inbounds %struct.bcr_identity, %struct.bcr_identity* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bcr_identity*, %struct.bcr_identity** %8, align 8
  %36 = getelementptr inbounds %struct.bcr_identity, %struct.bcr_identity* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %25, i32 %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %52 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %55 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i64 (...) @is_isa_arcompact()
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %61 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %62 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @IS_AVAIL1(i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %67 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %71 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @IS_AVAIL3(i32 %69, i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %75 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %46, i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53, i32 %56, i8* %60, i32 %65, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %88 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IS_AVAIL1(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %92 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %93 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @IS_AVAIL1(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %98 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CONFIG_ARC_TIMERS_64BIT, align 4
  %102 = call i32 @IS_AVAIL2(i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  %103 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %104 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CONFIG_ARC_TIMERS_64BIT, align 4
  %108 = call i32 @IS_AVAIL2(i32 %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %107)
  %109 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %83, i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %96, i32 %102, i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %10, align 4
  %114 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %115 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %3
  %120 = call i64 (...) @is_isa_arcompact()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %124 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %123, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %141

125:                                              ; preds = %119
  store i32 2, i32* %11, align 4
  %126 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %127 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %133 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 6
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %131, %125
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %139 = load i32, i32* %11, align 4
  %140 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %138, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %137, %122
  br label %142

142:                                              ; preds = %141, %3
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %151 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CONFIG_ARC_HAS_LLSC, align 4
  %155 = call i32 @IS_AVAIL2(i32 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %154)
  %156 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %157 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CONFIG_ARC_HAS_LL64, align 4
  %161 = call i32 @IS_AVAIL2(i32 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %160)
  %162 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %163 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CONFIG_ARC_USE_UNALIGNED_MEM_ACCESS, align 4
  %167 = call i32 @IS_AVAIL2(i32 %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %166)
  %168 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %169 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %173 = call i32 @IS_AVAIL1(i32 %171, i8* %172)
  %174 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %175 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @IS_AVAIL1(i32 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %179 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %146, i32 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %155, i32 %161, i32 %167, i32 %173, i32 %178)
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %10, align 4
  %184 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %185 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %276

189:                                              ; preds = %142
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %10, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %198 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @IS_AVAIL1(i32 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %202 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %203 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 @IS_AVAIL1(i32 %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %210 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %211 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %215 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %7, align 8
  %219 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %193, i32 %196, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i32 %201, i32 %209, i32 %213, i32 %217, i32 %221)
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %222
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %10, align 4
  %227 = call i64 (...) @is_isa_arcv2()
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %263

229:                                              ; preds = %189
  %230 = load i32, i32* @ARC_REG_LPB_BUILD, align 4
  %231 = bitcast %struct.bcr_lpb* %12 to { i32, i64 }*
  %232 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %231, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @READ_BCR(i32 %230, i32 %233, i64 %235)
  %237 = getelementptr inbounds %struct.bcr_lpb, %struct.bcr_lpb* %12, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %262

240:                                              ; preds = %229
  %241 = load i32, i32* @ARC_REG_LPB_CTRL, align 4
  %242 = call i32 @read_aux_reg(i32 %241)
  store i32 %242, i32* %13, align 4
  %243 = load i8*, i8** %5, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %10, align 4
  %249 = sub nsw i32 %247, %248
  %250 = getelementptr inbounds %struct.bcr_lpb, %struct.bcr_lpb* %12, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = call i32 @IS_DISABLED_RUN(i32 %255)
  %257 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %246, i32 %249, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %251, i32 %256)
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %10, align 4
  br label %262

262:                                              ; preds = %240, %229
  br label %263

263:                                              ; preds = %262, %189
  %264 = load i8*, i8** %5, align 8
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* %10, align 4
  %270 = sub nsw i32 %268, %269
  %271 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %267, i32 %270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %272 = load i32, i32* %10, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %10, align 4
  br label %276

276:                                              ; preds = %263, %142
  %277 = load i8*, i8** %5, align 8
  ret i8* %277
}

declare dso_local i32 @FIX_PTR(%struct.cpuinfo_arc*) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @is_isa_arcompact(...) #1

declare dso_local i32 @IS_AVAIL1(i32, i8*) #1

declare dso_local i32 @IS_AVAIL3(i32, i32, i8*) #1

declare dso_local i32 @IS_AVAIL2(i32, i8*, i32) #1

declare dso_local i64 @is_isa_arcv2(...) #1

declare dso_local i32 @READ_BCR(i32, i32, i64) #1

declare dso_local i32 @read_aux_reg(i32) #1

declare dso_local i32 @IS_DISABLED_RUN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
