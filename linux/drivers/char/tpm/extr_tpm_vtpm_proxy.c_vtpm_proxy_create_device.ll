; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vtpm_proxy_new_dev = type { i32, i32, i32, i32, i32 }
%struct.proxy_dev = type { i32, %struct.TYPE_4__* }

@VTPM_PROXY_FLAGS_ALL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"[vtpms]\00", align 1
@vtpm_proxy_fops = common dso_local global i32 0, align 4
@VTPM_PROXY_FLAG_TPM2 = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.vtpm_proxy_new_dev*)* @vtpm_proxy_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @vtpm_proxy_create_device(%struct.vtpm_proxy_new_dev* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vtpm_proxy_new_dev*, align 8
  %4 = alloca %struct.proxy_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  store %struct.vtpm_proxy_new_dev* %0, %struct.vtpm_proxy_new_dev** %3, align 8
  %8 = load %struct.vtpm_proxy_new_dev*, %struct.vtpm_proxy_new_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vtpm_proxy_new_dev, %struct.vtpm_proxy_new_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VTPM_PROXY_FLAGS_ALL, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.proxy_dev* @ERR_PTR(i32 %17)
  %19 = bitcast %struct.proxy_dev* %18 to %struct.file*
  store %struct.file* %19, %struct.file** %2, align 8
  br label %113

20:                                               ; preds = %1
  %21 = call %struct.proxy_dev* (...) @vtpm_proxy_create_proxy_dev()
  store %struct.proxy_dev* %21, %struct.proxy_dev** %4, align 8
  %22 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %23 = call i64 @IS_ERR(%struct.proxy_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %27 = call %struct.proxy_dev* @ERR_CAST(%struct.proxy_dev* %26)
  %28 = bitcast %struct.proxy_dev* %27 to %struct.file*
  store %struct.file* %28, %struct.file** %2, align 8
  br label %113

29:                                               ; preds = %20
  %30 = load %struct.vtpm_proxy_new_dev*, %struct.vtpm_proxy_new_dev** %3, align 8
  %31 = getelementptr inbounds %struct.vtpm_proxy_new_dev, %struct.vtpm_proxy_new_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %34 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @O_RDWR, align 4
  %36 = call i32 @get_unused_fd_flags(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %5, align 4
  br label %107

41:                                               ; preds = %29
  %42 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %43 = load i32, i32* @O_RDWR, align 4
  %44 = call %struct.proxy_dev* @anon_inode_getfile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* @vtpm_proxy_fops, %struct.proxy_dev* %42, i32 %43)
  %45 = bitcast %struct.proxy_dev* %44 to %struct.file*
  store %struct.file* %45, %struct.file** %7, align 8
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = bitcast %struct.file* %46 to %struct.proxy_dev*
  %48 = call i64 @IS_ERR(%struct.proxy_dev* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.file*, %struct.file** %7, align 8
  %52 = bitcast %struct.file* %51 to %struct.proxy_dev*
  %53 = call i32 @PTR_ERR(%struct.proxy_dev* %52)
  store i32 %53, i32* %5, align 4
  br label %104

54:                                               ; preds = %41
  %55 = load %struct.file*, %struct.file** %7, align 8
  %56 = bitcast %struct.file* %55 to %struct.proxy_dev*
  %57 = call i32 @vtpm_proxy_fops_open(%struct.proxy_dev* %56)
  %58 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %59 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @VTPM_PROXY_FLAG_TPM2, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %66 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %67 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %54
  %73 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %74 = call i32 @vtpm_proxy_work_start(%struct.proxy_dev* %73)
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.vtpm_proxy_new_dev*, %struct.vtpm_proxy_new_dev** %3, align 8
  %77 = getelementptr inbounds %struct.vtpm_proxy_new_dev, %struct.vtpm_proxy_new_dev* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %79 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MAJOR(i32 %83)
  %85 = load %struct.vtpm_proxy_new_dev*, %struct.vtpm_proxy_new_dev** %3, align 8
  %86 = getelementptr inbounds %struct.vtpm_proxy_new_dev, %struct.vtpm_proxy_new_dev* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %88 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @MINOR(i32 %92)
  %94 = load %struct.vtpm_proxy_new_dev*, %struct.vtpm_proxy_new_dev** %3, align 8
  %95 = getelementptr inbounds %struct.vtpm_proxy_new_dev, %struct.vtpm_proxy_new_dev* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %97 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vtpm_proxy_new_dev*, %struct.vtpm_proxy_new_dev** %3, align 8
  %102 = getelementptr inbounds %struct.vtpm_proxy_new_dev, %struct.vtpm_proxy_new_dev* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %103, %struct.file** %2, align 8
  br label %113

104:                                              ; preds = %50
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @put_unused_fd(i32 %105)
  br label %107

107:                                              ; preds = %104, %39
  %108 = load %struct.proxy_dev*, %struct.proxy_dev** %4, align 8
  %109 = call i32 @vtpm_proxy_delete_proxy_dev(%struct.proxy_dev* %108)
  %110 = load i32, i32* %5, align 4
  %111 = call %struct.proxy_dev* @ERR_PTR(i32 %110)
  %112 = bitcast %struct.proxy_dev* %111 to %struct.file*
  store %struct.file* %112, %struct.file** %2, align 8
  br label %113

113:                                              ; preds = %107, %72, %25, %15
  %114 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %114
}

declare dso_local %struct.proxy_dev* @ERR_PTR(i32) #1

declare dso_local %struct.proxy_dev* @vtpm_proxy_create_proxy_dev(...) #1

declare dso_local i64 @IS_ERR(%struct.proxy_dev*) #1

declare dso_local %struct.proxy_dev* @ERR_CAST(%struct.proxy_dev*) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.proxy_dev* @anon_inode_getfile(i8*, i32*, %struct.proxy_dev*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.proxy_dev*) #1

declare dso_local i32 @vtpm_proxy_fops_open(%struct.proxy_dev*) #1

declare dso_local i32 @vtpm_proxy_work_start(%struct.proxy_dev*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @vtpm_proxy_delete_proxy_dev(%struct.proxy_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
