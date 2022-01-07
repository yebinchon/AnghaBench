; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_chip_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_chip_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.tpm_chip = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_12__, %struct.TYPE_12__, i32, %struct.tpm_class_ops*, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_10__*, %struct.device*, i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i8* }
%struct.device = type { i32 }
%struct.tpm_class_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@idr_lock = common dso_local global i32 0, align 4
@dev_nums_idr = common dso_local global i32 0, align 4
@TPM_NUM_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No available tpm device numbers\0A\00", align 1
@tpm_class = common dso_local global %struct.TYPE_10__* null, align 8
@tpm_class_shutdown = common dso_local global i32 0, align 4
@tpm_dev_release = common dso_local global i32 0, align 4
@tpmrm_class = common dso_local global %struct.TYPE_10__* null, align 8
@tpm_devs_release = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@MISC_MAJOR = common dso_local global i32 0, align 4
@TPM_MINOR = common dso_local global i32 0, align 4
@tpm_devt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"tpm%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tpmrm%d\00", align 1
@TPM_CHIP_FLAG_VIRTUAL = common dso_local global i32 0, align 4
@tpm_fops = common dso_local global i32 0, align 4
@tpmrm_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tpm_chip* @tpm_chip_alloc(%struct.device* %0, %struct.tpm_class_ops* %1) #0 {
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tpm_class_ops*, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tpm_class_ops* %1, %struct.tpm_class_ops** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 152, i32 %8)
  %10 = bitcast i8* %9 to %struct.tpm_chip*
  store %struct.tpm_chip* %10, %struct.tpm_chip** %6, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %12 = icmp eq %struct.tpm_chip* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.tpm_chip* @ERR_PTR(i32 %15)
  store %struct.tpm_chip* %16, %struct.tpm_chip** %3, align 8
  br label %216

17:                                               ; preds = %2
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 11
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %22 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %21, i32 0, i32 10
  %23 = call i32 @init_rwsem(i32* %22)
  %24 = load %struct.tpm_class_ops*, %struct.tpm_class_ops** %5, align 8
  %25 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %26 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %25, i32 0, i32 9
  store %struct.tpm_class_ops* %24, %struct.tpm_class_ops** %26, align 8
  %27 = call i32 @mutex_lock(i32* @idr_lock)
  %28 = load i32, i32* @TPM_NUM_DEVICES, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @idr_alloc(i32* @dev_nums_idr, i32* null, i32 0, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = call i32 @mutex_unlock(i32* @idr_lock)
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %38 = call i32 @kfree(%struct.tpm_chip* %37)
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.tpm_chip* @ERR_PTR(i32 %39)
  store %struct.tpm_chip* %40, %struct.tpm_chip** %3, align 8
  br label %216

41:                                               ; preds = %17
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %44 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %46 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %45, i32 0, i32 3
  %47 = call i32 @device_initialize(%struct.TYPE_11__* %46)
  %48 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %49 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %48, i32 0, i32 4
  %50 = call i32 @device_initialize(%struct.TYPE_11__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tpm_class, align 8
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %53 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %54, align 8
  %55 = load i32, i32* @tpm_class_shutdown, align 4
  %56 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %57 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* @tpm_dev_release, align 4
  %62 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %63 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %67 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  store %struct.device* %65, %struct.device** %68, align 8
  %69 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %70 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %73 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 8
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %77 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  store %struct.device* %75, %struct.device** %78, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tpmrm_class, align 8
  %80 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %81 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %82, align 8
  %83 = load i32, i32* @tpm_devs_release, align 4
  %84 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %85 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  %87 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %88 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %41
  %94 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %95 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %94, i32 0, i32 3
  %96 = call i32 @get_device(%struct.TYPE_11__* %95)
  br label %97

97:                                               ; preds = %93, %41
  %98 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %99 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i32, i32* @MISC_MAJOR, align 4
  %104 = load i32, i32* @TPM_MINOR, align 4
  %105 = call i8* @MKDEV(i32 %103, i32 %104)
  %106 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %107 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  br label %119

109:                                              ; preds = %97
  %110 = load i32, i32* @tpm_devt, align 4
  %111 = call i32 @MAJOR(i32 %110)
  %112 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %113 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @MKDEV(i32 %111, i32 %114)
  %116 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %117 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  br label %119

119:                                              ; preds = %109, %102
  %120 = load i32, i32* @tpm_devt, align 4
  %121 = call i32 @MAJOR(i32 %120)
  %122 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %123 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TPM_NUM_DEVICES, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i8* @MKDEV(i32 %121, i32 %126)
  %128 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %129 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  %131 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %132 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %131, i32 0, i32 3
  %133 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %134 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dev_set_name(%struct.TYPE_11__* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %119
  br label %207

140:                                              ; preds = %119
  %141 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %142 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %141, i32 0, i32 4
  %143 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %144 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dev_set_name(%struct.TYPE_11__* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %207

150:                                              ; preds = %140
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = icmp ne %struct.device* %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @TPM_CHIP_FLAG_VIRTUAL, align 4
  %155 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %156 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %150
  %160 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %161 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %160, i32 0, i32 7
  %162 = call i32 @cdev_init(%struct.TYPE_12__* %161, i32* @tpm_fops)
  %163 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %164 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %163, i32 0, i32 6
  %165 = call i32 @cdev_init(%struct.TYPE_12__* %164, i32* @tpmrm_fops)
  %166 = load i8*, i8** @THIS_MODULE, align 8
  %167 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %168 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i8* %166, i8** %169, align 8
  %170 = load i8*, i8** @THIS_MODULE, align 8
  %171 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %172 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  %174 = load i32, i32* @PAGE_SIZE, align 4
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i8* @kzalloc(i32 %174, i32 %175)
  %177 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %178 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  store i8* %176, i8** %179, align 8
  %180 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %181 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %159
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %7, align 4
  br label %207

188:                                              ; preds = %159
  %189 = load i32, i32* @PAGE_SIZE, align 4
  %190 = load i32, i32* @GFP_KERNEL, align 4
  %191 = call i8* @kzalloc(i32 %189, i32 %190)
  %192 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %193 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  %195 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %196 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %188
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %7, align 4
  br label %207

203:                                              ; preds = %188
  %204 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %205 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %204, i32 0, i32 2
  store i32 -1, i32* %205, align 8
  %206 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  store %struct.tpm_chip* %206, %struct.tpm_chip** %3, align 8
  br label %216

207:                                              ; preds = %200, %185, %149, %139
  %208 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %209 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %208, i32 0, i32 4
  %210 = call i32 @put_device(%struct.TYPE_11__* %209)
  %211 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %212 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %211, i32 0, i32 3
  %213 = call i32 @put_device(%struct.TYPE_11__* %212)
  %214 = load i32, i32* %7, align 4
  %215 = call %struct.tpm_chip* @ERR_PTR(i32 %214)
  store %struct.tpm_chip* %215, %struct.tpm_chip** %3, align 8
  br label %216

216:                                              ; preds = %207, %203, %34, %13
  %217 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  ret %struct.tpm_chip* %217
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.tpm_chip* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @kfree(%struct.tpm_chip*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_11__*) #1

declare dso_local i32 @get_device(%struct.TYPE_11__*) #1

declare dso_local i8* @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
