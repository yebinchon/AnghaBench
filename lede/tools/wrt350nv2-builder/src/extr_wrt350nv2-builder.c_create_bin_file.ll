; ModuleID = '/home/carl/AnghaBench/lede/tools/wrt350nv2-builder/src/extr_wrt350nv2-builder.c_create_bin_file.c'
source_filename = "/home/carl/AnghaBench/lede/tools/wrt350nv2-builder/src/extr_wrt350nv2-builder.c_create_bin_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@KERNEL_CODE_OFFSET = common dso_local global i32 0, align 4
@FLASH_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"create_bin_file: can not allocate %i bytes\0A\00", align 1
@mtd_image = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ROOTFS_MIN_OFFSET = common dso_local global i32 0, align 4
@mtd_kernel = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@mtd_rootfs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@mtd_uboot = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"create_bin_file: unknown mtd %i\0A\00", align 1
@DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"adding mtd %s file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"input file %s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"input file %s: smaller than before *doh*\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"mtd %s input file %s is too small (0x%08lX), adding 0x%08X random bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c" padding offset 0x%08X length 0x%08X\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"adding rootfs special data\0A\00", align 1
@PRODUCT_ID_OFFSET = common dso_local global i32 0, align 4
@product_id = common dso_local global i32 0, align 4
@PROTOCOL_ID_OFFSET = common dso_local global i32 0, align 4
@protocol_id = common dso_local global i32 0, align 4
@FW_VERSION_OFFSET = common dso_local global i32 0, align 4
@fw_version = common dso_local global i32 0, align 4
@rootfs_unknown = common dso_local global i32 0, align 4
@SIGN_OFFSET = common dso_local global i32 0, align 4
@sign = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"adding u-boot special data\0A\00", align 1
@BOOT_ADDR_BASE_OFF = common dso_local global i32 0, align 4
@PID_OFFSET = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"adding checksum byte\0A\00", align 1
@DEBUG_LVL2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c" checksum 0x%016lX (%li)\0A\00", align 1
@NODE_BASE_OFF = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c" byte 0x%02X\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"writing file %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"output file %s: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"output file %s: unspecified write error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_bin_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %15 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %16 = load i32, i32* @FLASH_SIZE, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i8* @malloc(i32 %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %22 = load i32, i32* @FLASH_SIZE, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %30

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %27 = load i32, i32* @FLASH_SIZE, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @memset(i8* %25, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %277, label %33

33:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %273, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 4
  br i1 %36, label %37, label %276

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %61 [
    i32 1, label %39
    i32 2, label %45
    i32 3, label %46
    i32 4, label %57
  ]

39:                                               ; preds = %37
  store %struct.TYPE_6__* @mtd_image, %struct.TYPE_6__** %6, align 8
  %40 = load i32, i32* @ROOTFS_MIN_OFFSET, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %8, align 4
  br label %64

45:                                               ; preds = %37
  store %struct.TYPE_6__* @mtd_kernel, %struct.TYPE_6__** %6, align 8
  br label %64

46:                                               ; preds = %37
  store %struct.TYPE_6__* @mtd_rootfs, %struct.TYPE_6__** %6, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @ROOTFS_MIN_OFFSET, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mtd_kernel, i32 0, i32 1), align 4
  %52 = sub nsw i32 %50, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %8, align 4
  br label %64

57:                                               ; preds = %37
  store %struct.TYPE_6__* @mtd_uboot, %struct.TYPE_6__** %6, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %37
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i32 1, i32* %3, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %57, %46, %45, %39
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %276

68:                                               ; preds = %64
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %273

74:                                               ; preds = %68
  %75 = load i32, i32* @DEBUG, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @lprintf(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %78, i8* %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %141

85:                                               ; preds = %74
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 24
  %88 = sext i32 %87 to i64
  %89 = and i64 255, %88
  %90 = trunc i64 %89 to i8
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %92, %95
  %97 = sub nsw i32 %96, 16
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %91, i64 %98
  store i8 %90, i8* %99, align 1
  %100 = load i32, i32* %7, align 4
  %101 = ashr i32 %100, 16
  %102 = sext i32 %101 to i64
  %103 = and i64 255, %102
  %104 = trunc i64 %103 to i8
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %106, %109
  %111 = sub nsw i32 %110, 15
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %105, i64 %112
  store i8 %104, i8* %113, align 1
  %114 = load i32, i32* %7, align 4
  %115 = ashr i32 %114, 8
  %116 = sext i32 %115 to i64
  %117 = and i64 255, %116
  %118 = trunc i64 %117 to i8
  %119 = load i8*, i8** %4, align 8
  %120 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %120, %123
  %125 = sub nsw i32 %124, 14
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %119, i64 %126
  store i8 %118, i8* %127, align 1
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = and i64 255, %129
  %131 = trunc i64 %130 to i8
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %133, %136
  %138 = sub nsw i32 %137, 13
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %132, i64 %139
  store i8 %131, i8* %140, align 1
  br label %141

141:                                              ; preds = %85, %74
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32* @fopen(i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %145, i32** %10, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* @errno, align 4
  store i32 %149, i32* %3, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i8* @strerror(i32 %153)
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %152, i8* %154)
  br label %194

156:                                              ; preds = %141
  %157 = load i8*, i8** %4, align 8
  %158 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %158, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %157, i64 %163
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @fread(i8* %164, i32 %167, i32 1, i32* %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp slt i32 %170, 1
  br i1 %171, label %172, label %191

172:                                              ; preds = %156
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @ferror(i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i32*, i32** %10, align 8
  %178 = call i32 @ferror(i32* %177)
  store i32 %178, i32* %3, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %3, align 4
  %183 = call i8* @strerror(i32 %182)
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %181, i8* %183)
  br label %190

185:                                              ; preds = %172
  store i32 1, i32* %3, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %185, %176
  br label %191

191:                                              ; preds = %190, %156
  %192 = load i32*, i32** %10, align 8
  %193 = call i32 @fclose(i32* %192)
  br label %194

194:                                              ; preds = %191, %148
  %195 = load i32, i32* %8, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* %8, align 4
  %199 = and i32 %198, 65535
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %197, %194
  %204 = load i32, i32* %8, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %272

206:                                              ; preds = %203
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i8* %209, i8* %212, i32 %215, i32 %216)
  %218 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %218, %221
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %222, %225
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* @DEBUG, align 4
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (i32, i8*, ...) @lprintf(i32 %229, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %230, i32 %231)
  %233 = load i8*, i8** %9, align 8
  %234 = call i32* @fopen(i8* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %234, i32** %10, align 8
  %235 = load i32*, i32** %10, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %243, label %237

237:                                              ; preds = %206
  %238 = load i32, i32* @errno, align 4
  store i32 %238, i32* %3, align 4
  %239 = load i8*, i8** %9, align 8
  %240 = load i32, i32* %3, align 4
  %241 = call i8* @strerror(i32 %240)
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %239, i8* %241)
  br label %269

243:                                              ; preds = %206
  %244 = load i8*, i8** %4, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i32, i32* %8, align 4
  %249 = load i32*, i32** %10, align 8
  %250 = call i32 @fread(i8* %247, i32 %248, i32 1, i32* %249)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %253, label %268

253:                                              ; preds = %243
  %254 = load i32*, i32** %10, align 8
  %255 = call i32 @ferror(i32* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = load i32*, i32** %10, align 8
  %259 = call i32 @ferror(i32* %258)
  store i32 %259, i32* %3, align 4
  %260 = load i8*, i8** %9, align 8
  %261 = load i32, i32* %3, align 4
  %262 = call i8* @strerror(i32 %261)
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %260, i8* %262)
  br label %267

264:                                              ; preds = %253
  store i32 1, i32* %3, align 4
  %265 = load i8*, i8** %9, align 8
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %265)
  br label %267

267:                                              ; preds = %264, %257
  br label %268

268:                                              ; preds = %267, %243
  br label %269

269:                                              ; preds = %268, %237
  %270 = load i32*, i32** %10, align 8
  %271 = call i32 @fclose(i32* %270)
  br label %272

272:                                              ; preds = %269, %203
  br label %273

273:                                              ; preds = %272, %73
  %274 = load i32, i32* %5, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %5, align 4
  br label %34

276:                                              ; preds = %67, %34
  br label %277

277:                                              ; preds = %276, %30
  %278 = load i32, i32* %3, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %394, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* @DEBUG, align 4
  %282 = call i32 (i32, i8*, ...) @lprintf(i32 %281, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %283 = load i8*, i8** %4, align 8
  %284 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %285 = load i32, i32* @PRODUCT_ID_OFFSET, align 4
  %286 = add nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %283, i64 %287
  %289 = load i32, i32* @product_id, align 4
  %290 = call i32 @memcpy(i8* %288, i32 %289, i32 2)
  %291 = load i8*, i8** %4, align 8
  %292 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %293 = load i32, i32* @PROTOCOL_ID_OFFSET, align 4
  %294 = add nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %291, i64 %295
  %297 = load i32, i32* @protocol_id, align 4
  %298 = call i32 @memcpy(i8* %296, i32 %297, i32 2)
  %299 = load i8*, i8** %4, align 8
  %300 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %301 = load i32, i32* @FW_VERSION_OFFSET, align 4
  %302 = add nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %299, i64 %303
  %305 = load i32, i32* @fw_version, align 4
  %306 = call i32 @memcpy(i8* %304, i32 %305, i32 2)
  %307 = load i8*, i8** %4, align 8
  %308 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %309 = load i32, i32* @FW_VERSION_OFFSET, align 4
  %310 = add nsw i32 %308, %309
  %311 = add nsw i32 %310, 2
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %307, i64 %312
  %314 = load i32, i32* @rootfs_unknown, align 4
  %315 = call i32 @memcpy(i8* %313, i32 %314, i32 2)
  %316 = load i8*, i8** %4, align 8
  %317 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %318 = load i32, i32* @SIGN_OFFSET, align 4
  %319 = add nsw i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %316, i64 %320
  %322 = load i32, i32* @sign, align 4
  %323 = call i32 @memcpy(i8* %321, i32 %322, i32 8)
  %324 = load i32, i32* @DEBUG, align 4
  %325 = call i32 (i32, i8*, ...) @lprintf(i32 %324, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %326 = load i8*, i8** %4, align 8
  %327 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %328 = load i32, i32* @BOOT_ADDR_BASE_OFF, align 4
  %329 = add nsw i32 %327, %328
  %330 = load i32, i32* @PID_OFFSET, align 4
  %331 = add nsw i32 %329, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %326, i64 %332
  %334 = load i32, i32* @pid, align 4
  %335 = call i32 @memcpy(i8* %333, i32 %334, i32 70)
  %336 = load i8*, i8** %4, align 8
  %337 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %338 = load i32, i32* @BOOT_ADDR_BASE_OFF, align 4
  %339 = add nsw i32 %337, %338
  %340 = load i32, i32* @PID_OFFSET, align 4
  %341 = add nsw i32 %339, %340
  %342 = add nsw i32 %341, 57
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %336, i64 %343
  %345 = load i32, i32* @fw_version, align 4
  %346 = call i32 @memcpy(i8* %344, i32 %345, i32 2)
  %347 = load i32, i32* @DEBUG, align 4
  %348 = call i32 (i32, i8*, ...) @lprintf(i32 %347, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i64 0, i64* %12, align 8
  store i32 0, i32* %5, align 4
  br label %349

349:                                              ; preds = %364, %280
  %350 = load i32, i32* %5, align 4
  %351 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %352 = load i32, i32* @FLASH_SIZE, align 4
  %353 = add nsw i32 %351, %352
  %354 = icmp slt i32 %350, %353
  br i1 %354, label %355, label %367

355:                                              ; preds = %349
  %356 = load i8*, i8** %4, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %356, i64 %358
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i64
  %362 = load i64, i64* %12, align 8
  %363 = add i64 %362, %361
  store i64 %363, i64* %12, align 8
  br label %364

364:                                              ; preds = %355
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %5, align 4
  br label %349

367:                                              ; preds = %349
  %368 = load i32, i32* @DEBUG_LVL2, align 4
  %369 = load i64, i64* %12, align 8
  %370 = load i64, i64* %12, align 8
  %371 = call i32 (i32, i8*, ...) @lprintf(i32 %368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 %369, i64 %370)
  %372 = load i64, i64* %12, align 8
  %373 = xor i64 %372, -1
  %374 = add i64 %373, 1
  %375 = trunc i64 %374 to i8
  %376 = load i8*, i8** %4, align 8
  %377 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %378 = load i32, i32* @NODE_BASE_OFF, align 4
  %379 = add nsw i32 %377, %378
  %380 = add nsw i32 %379, 25
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %376, i64 %381
  store i8 %375, i8* %382, align 1
  %383 = load i32, i32* @DEBUG, align 4
  %384 = load i8*, i8** %4, align 8
  %385 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %386 = load i32, i32* @NODE_BASE_OFF, align 4
  %387 = add nsw i32 %385, %386
  %388 = add nsw i32 %387, 25
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %384, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = call i32 (i32, i8*, ...) @lprintf(i32 %383, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %392)
  br label %394

394:                                              ; preds = %367, %277
  %395 = load i32, i32* %3, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %439, label %397

397:                                              ; preds = %394
  %398 = load i32, i32* @DEBUG, align 4
  %399 = load i8*, i8** %2, align 8
  %400 = call i32 (i32, i8*, ...) @lprintf(i32 %398, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %399)
  %401 = load i8*, i8** %2, align 8
  %402 = call i32* @fopen(i8* %401, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32* %402, i32** %14, align 8
  %403 = load i32*, i32** %14, align 8
  %404 = icmp ne i32* %403, null
  br i1 %404, label %411, label %405

405:                                              ; preds = %397
  %406 = load i32, i32* @errno, align 4
  store i32 %406, i32* %3, align 4
  %407 = load i8*, i8** %2, align 8
  %408 = load i32, i32* %3, align 4
  %409 = call i8* @strerror(i32 %408)
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %407, i8* %409)
  br label %438

411:                                              ; preds = %397
  %412 = load i8*, i8** %4, align 8
  %413 = load i32, i32* @KERNEL_CODE_OFFSET, align 4
  %414 = load i32, i32* @FLASH_SIZE, align 4
  %415 = add nsw i32 %413, %414
  %416 = load i32*, i32** %14, align 8
  %417 = call i32 @fwrite(i8* %412, i32 %415, i32 1, i32* %416)
  store i32 %417, i32* %11, align 4
  %418 = load i32, i32* %11, align 4
  %419 = icmp slt i32 %418, 1
  br i1 %419, label %420, label %435

420:                                              ; preds = %411
  %421 = load i32*, i32** %14, align 8
  %422 = call i32 @ferror(i32* %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %420
  %425 = load i32*, i32** %14, align 8
  %426 = call i32 @ferror(i32* %425)
  store i32 %426, i32* %3, align 4
  %427 = load i8*, i8** %2, align 8
  %428 = load i32, i32* %3, align 4
  %429 = call i8* @strerror(i32 %428)
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %427, i8* %429)
  br label %434

431:                                              ; preds = %420
  store i32 1, i32* %3, align 4
  %432 = load i8*, i8** %2, align 8
  %433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* %432)
  br label %434

434:                                              ; preds = %431, %424
  br label %435

435:                                              ; preds = %434, %411
  %436 = load i32*, i32** %14, align 8
  %437 = call i32 @fclose(i32* %436)
  br label %438

438:                                              ; preds = %435, %405
  br label %439

439:                                              ; preds = %438, %394
  %440 = load i32, i32* %3, align 4
  ret i32 %440
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
