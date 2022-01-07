; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_dns313-header.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_dns313-header.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Too few arguments.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s <infile> <outfile>\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"INFILE: %s, size: %08x bytes\0A\00", align 1
@HEADER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Allocate %08x bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"OOM: could not allocate buffer\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"ERROR: could not open input file\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"ERROR: could not read entire file\0A\00", align 1
@OFFSET_MAGIC = common dso_local global i32 0, align 4
@IH_MAGIC = common dso_local global i32 0, align 4
@OFFSET_TIME = common dso_local global i32 0, align 4
@OFFSET_SIZE = common dso_local global i32 0, align 4
@OFFSET_LOAD = common dso_local global i32 0, align 4
@OFFSET_EP = common dso_local global i32 0, align 4
@OFFSET_OS = common dso_local global i64 0, align 8
@OFFSET_ARCH = common dso_local global i64 0, align 8
@OFFSET_TYPE = common dso_local global i64 0, align 8
@OFFSET_COMP = common dso_local global i64 0, align 8
@OFFSET_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"kernel.img\00", align 1
@NAME_LEN = common dso_local global i32 0, align 4
@OFFSET_MODEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"dns-313v3\00", align 1
@MODEL_LEN = common dso_local global i32 0, align 4
@OFFSET_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"2.01b04\00", align 1
@VERSION_LEN = common dso_local global i32 0, align 4
@OFFSET_MAC = common dso_local global i64 0, align 8
@OFFSET_DCRC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"data checksum: 0x%08x\0A\00", align 1
@OFFSET_HCRC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"header checksum: 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"OUTFILE: %s, size: %08x bytes\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"ERROR: could not open output file\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"ERROR: could not write complete output file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @stat(i8* %35, %struct.stat* %8)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %3, align 4
  br label %248

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = srem i32 %44, 4
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @HEADER_SIZE, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %17, align 8
  %56 = call i8* @malloc(i64 %55)
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %41
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %248

61:                                               ; preds = %41
  %62 = load i8*, i8** %14, align 8
  %63 = load i64, i64* %17, align 8
  %64 = call i32 @memset(i8* %62, i32 0, i64 %63)
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* @O_RDONLY, align 4
  %67 = call i32 (i8*, i32, ...) @open(i8* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %248

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* @HEADER_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @read(i32 %73, i8* %77, i32 %78)
  store i64 %79, i64* %18, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %248

86:                                               ; preds = %72
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @close(i32 %87)
  %89 = load i8*, i8** %14, align 8
  store i8* %89, i8** %15, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* @OFFSET_MAGIC, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* @IH_MAGIC, align 4
  %95 = call i32 @be_wr(i8* %93, i32 %94)
  %96 = load i8*, i8** %14, align 8
  %97 = load i32, i32* @OFFSET_TIME, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = call i32 @be_wr(i8* %99, i32 1275491212)
  %101 = load i8*, i8** %14, align 8
  %102 = load i32, i32* @OFFSET_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @be_wr(i8* %104, i32 %105)
  %107 = load i8*, i8** %14, align 8
  %108 = load i32, i32* @OFFSET_LOAD, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = call i32 @be_wr(i8* %110, i32 32768)
  %112 = load i8*, i8** %14, align 8
  %113 = load i32, i32* @OFFSET_EP, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = call i32 @be_wr(i8* %115, i32 32768)
  %117 = load i8*, i8** %14, align 8
  %118 = load i64, i64* @OFFSET_OS, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 5, i8* %119, align 1
  %120 = load i8*, i8** %14, align 8
  %121 = load i64, i64* @OFFSET_ARCH, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8 2, i8* %122, align 1
  %123 = load i8*, i8** %14, align 8
  %124 = load i64, i64* @OFFSET_TYPE, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 2, i8* %125, align 1
  %126 = load i8*, i8** %14, align 8
  %127 = load i64, i64* @OFFSET_COMP, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8 1, i8* %128, align 1
  %129 = load i8*, i8** %14, align 8
  %130 = load i32, i32* @OFFSET_NAME, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* @NAME_LEN, align 4
  %134 = call i32 @strncpy(i8* %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  %135 = load i8*, i8** %14, align 8
  %136 = load i32, i32* @OFFSET_NAME, align 4
  %137 = load i32, i32* @NAME_LEN, align 4
  %138 = add nsw i32 %136, %137
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %135, i64 %140
  store i8 0, i8* %141, align 1
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* @OFFSET_MODEL, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i32, i32* @MODEL_LEN, align 4
  %147 = call i32 @strncpy(i8* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  %148 = load i8*, i8** %14, align 8
  %149 = load i32, i32* @OFFSET_MODEL, align 4
  %150 = load i32, i32* @MODEL_LEN, align 4
  %151 = add nsw i32 %149, %150
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %148, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i8*, i8** %14, align 8
  %156 = load i32, i32* @OFFSET_VERSION, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i32, i32* @VERSION_LEN, align 4
  %160 = call i32 @strncpy(i8* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %159)
  %161 = load i8*, i8** %14, align 8
  %162 = load i32, i32* @OFFSET_VERSION, align 4
  %163 = load i32, i32* @VERSION_LEN, align 4
  %164 = add nsw i32 %162, %163
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %161, i64 %166
  store i8 0, i8* %167, align 1
  %168 = load i8*, i8** %14, align 8
  %169 = load i64, i64* @OFFSET_MAC, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8 0, i8* %170, align 1
  %171 = load i8*, i8** %14, align 8
  %172 = load i64, i64* @OFFSET_MAC, align 8
  %173 = add i64 %172, 1
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  store i8 -128, i8* %174, align 1
  %175 = load i8*, i8** %14, align 8
  %176 = load i64, i64* @OFFSET_MAC, align 8
  %177 = add i64 %176, 2
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  store i8 -56, i8* %178, align 1
  %179 = load i8*, i8** %14, align 8
  %180 = load i64, i64* @OFFSET_MAC, align 8
  %181 = add i64 %180, 3
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8 22, i8* %182, align 1
  %183 = load i8*, i8** %14, align 8
  %184 = load i64, i64* @OFFSET_MAC, align 8
  %185 = add i64 %184, 4
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 -127, i8* %186, align 1
  %187 = load i8*, i8** %14, align 8
  %188 = load i64, i64* @OFFSET_MAC, align 8
  %189 = add i64 %188, 5
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 104, i8* %190, align 1
  %191 = load i8*, i8** %14, align 8
  %192 = load i32, i32* @HEADER_SIZE, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @crc32(i32 0, i8* %194, i32 %195)
  store i32 %196, i32* %16, align 4
  %197 = load i8*, i8** %14, align 8
  %198 = load i32, i32* @OFFSET_DCRC, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @be_wr(i8* %200, i32 %201)
  %203 = load i32, i32* %16, align 4
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %203)
  %205 = load i8*, i8** %14, align 8
  %206 = load i32, i32* @HEADER_SIZE, align 4
  %207 = call i32 @crc32(i32 0, i8* %205, i32 %206)
  store i32 %207, i32* %16, align 4
  %208 = load i8*, i8** %14, align 8
  %209 = load i32, i32* @OFFSET_HCRC, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @be_wr(i8* %211, i32 %212)
  %214 = load i32, i32* %16, align 4
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %214)
  %216 = load i8*, i8** %13, align 8
  %217 = load i64, i64* %17, align 8
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %216, i64 %217)
  %219 = load i8*, i8** %13, align 8
  %220 = load i32, i32* @O_RDWR, align 4
  %221 = load i32, i32* @O_CREAT, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @O_TRUNC, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @S_IRWXU, align 4
  %226 = load i32, i32* @S_IRGRP, align 4
  %227 = or i32 %225, %226
  %228 = call i32 (i8*, i32, ...) @open(i8* %219, i32 %224, i32 %227)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %86
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %248

233:                                              ; preds = %86
  %234 = load i32, i32* %7, align 4
  %235 = load i8*, i8** %14, align 8
  %236 = load i64, i64* %17, align 8
  %237 = call i64 @write(i32 %234, i8* %235, i64 %236)
  store i64 %237, i64* %18, align 8
  %238 = load i64, i64* %18, align 8
  %239 = load i64, i64* %17, align 8
  %240 = icmp ult i64 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %233
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %248

243:                                              ; preds = %233
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @close(i32 %244)
  %246 = load i8*, i8** %14, align 8
  %247 = call i32 @free(i8* %246)
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %243, %241, %231, %84, %70, %59, %39
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @be_wr(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
