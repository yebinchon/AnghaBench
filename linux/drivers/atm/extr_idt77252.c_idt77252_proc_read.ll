; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { %struct.idt77252_dev* }
%struct.idt77252_dev = type { i32, i64, %struct.vc_map**, i32* }
%struct.vc_map = type { %struct.atm_vcc* }
%struct.atm_vcc = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"IDT77252 Interrupts:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"TSIF:  %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"TXICP: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"TSQF:  %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"TMROF: %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"PHYI:  %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"FBQ3A: %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"FBQ2A: %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"RSQF:  %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"EPDU:  %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"RAWCF: %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"FBQ1A: %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"FBQ0A: %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"RSQAF: %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"IDT77252 Transmit Connection Table:\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"  %4u: %u.%u: \00", align 1
@SAR_SRAM_TCT_SIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i64*, i8*)* @idt77252_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_proc_read(%struct.atm_dev* %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.idt77252_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.atm_vcc*, align 8
  %13 = alloca %struct.vc_map*, align 8
  %14 = alloca i8*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %16 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %15, i32 0, i32 0
  %17 = load %struct.idt77252_dev*, %struct.idt77252_dev** %16, align 8
  store %struct.idt77252_dev* %17, %struct.idt77252_dev** %8, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %282

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %34 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 15
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %4, align 4
  br label %282

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %46 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 14
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %4, align 4
  br label %282

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %10, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %58 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 12
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %4, align 4
  br label %282

63:                                               ; preds = %51
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %70 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 11
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %4, align 4
  br label %282

75:                                               ; preds = %63
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %82 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 10
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  store i32 %86, i32* %4, align 4
  br label %282

87:                                               ; preds = %75
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %94 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  store i32 %98, i32* %4, align 4
  br label %282

99:                                               ; preds = %87
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %10, align 4
  %102 = icmp ne i32 %100, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %106 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 7
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  store i32 %110, i32* %4, align 4
  br label %282

111:                                              ; preds = %99
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %10, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** %7, align 8
  %117 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %118 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  store i32 %122, i32* %4, align 4
  br label %282

123:                                              ; preds = %111
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %10, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %130 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %133)
  store i32 %134, i32* %4, align 4
  br label %282

135:                                              ; preds = %123
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %10, align 4
  %138 = icmp ne i32 %136, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %142 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %145)
  store i32 %146, i32* %4, align 4
  br label %282

147:                                              ; preds = %135
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %10, align 4
  %150 = icmp ne i32 %148, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  %153 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %154 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, i8*, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %157)
  store i32 %158, i32* %4, align 4
  br label %282

159:                                              ; preds = %147
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %10, align 4
  %162 = icmp ne i32 %160, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %159
  %164 = load i8*, i8** %7, align 8
  %165 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %166 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, i8*, ...) @sprintf(i8* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %169)
  store i32 %170, i32* %4, align 4
  br label %282

171:                                              ; preds = %159
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %10, align 4
  %174 = icmp ne i32 %172, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %7, align 8
  %177 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %178 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %181)
  store i32 %182, i32* %4, align 4
  br label %282

183:                                              ; preds = %171
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %10, align 4
  %186 = icmp ne i32 %184, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  store i32 %189, i32* %4, align 4
  br label %282

190:                                              ; preds = %183
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %278, %190
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %194 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %281

197:                                              ; preds = %191
  %198 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %199 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %198, i32 0, i32 2
  %200 = load %struct.vc_map**, %struct.vc_map*** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %200, i64 %202
  %204 = load %struct.vc_map*, %struct.vc_map** %203, align 8
  store %struct.vc_map* %204, %struct.vc_map** %13, align 8
  %205 = load %struct.vc_map*, %struct.vc_map** %13, align 8
  %206 = icmp ne %struct.vc_map* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %197
  br label %278

208:                                              ; preds = %197
  store %struct.atm_vcc* null, %struct.atm_vcc** %12, align 8
  %209 = load %struct.vc_map*, %struct.vc_map** %13, align 8
  %210 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %209, i32 0, i32 0
  %211 = load %struct.atm_vcc*, %struct.atm_vcc** %210, align 8
  %212 = icmp ne %struct.atm_vcc* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load %struct.vc_map*, %struct.vc_map** %13, align 8
  %215 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %214, i32 0, i32 0
  %216 = load %struct.atm_vcc*, %struct.atm_vcc** %215, align 8
  store %struct.atm_vcc* %216, %struct.atm_vcc** %12, align 8
  br label %217

217:                                              ; preds = %213, %208
  %218 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %219 = icmp ne %struct.atm_vcc* %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  br label %278

221:                                              ; preds = %217
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %10, align 4
  %224 = icmp ne i32 %222, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %278

226:                                              ; preds = %221
  %227 = load i8*, i8** %7, align 8
  store i8* %227, i8** %14, align 8
  %228 = load i8*, i8** %14, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %231 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %234 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i8*, i8*, ...) @sprintf(i8* %228, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %229, i32 %232, i32 %235)
  %237 = load i8*, i8** %14, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8* %239, i8** %14, align 8
  %240 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %241 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %245 = mul nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %242, %246
  store i64 %247, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %248

248:                                              ; preds = %263, %226
  %249 = load i32, i32* %9, align 4
  %250 = icmp slt i32 %249, 8
  br i1 %250, label %251, label %266

251:                                              ; preds = %248
  %252 = load i8*, i8** %14, align 8
  %253 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %254 = load i64, i64* %11, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = add i64 %254, %256
  %258 = call i32 @read_sram(%struct.idt77252_dev* %253, i64 %257)
  %259 = call i32 (i8*, i8*, ...) @sprintf(i8* %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %258)
  %260 = load i8*, i8** %14, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  store i8* %262, i8** %14, align 8
  br label %263

263:                                              ; preds = %251
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  br label %248

266:                                              ; preds = %248
  %267 = load i8*, i8** %14, align 8
  %268 = call i32 (i8*, i8*, ...) @sprintf(i8* %267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %269 = load i8*, i8** %14, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %14, align 8
  %272 = load i8*, i8** %14, align 8
  %273 = load i8*, i8** %7, align 8
  %274 = ptrtoint i8* %272 to i64
  %275 = ptrtoint i8* %273 to i64
  %276 = sub i64 %274, %275
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %4, align 4
  br label %282

278:                                              ; preds = %225, %220, %207
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %9, align 4
  br label %191

281:                                              ; preds = %191
  store i32 0, i32* %4, align 4
  br label %282

282:                                              ; preds = %281, %266, %187, %175, %163, %151, %139, %127, %115, %103, %91, %79, %67, %55, %43, %31, %24
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @read_sram(%struct.idt77252_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
