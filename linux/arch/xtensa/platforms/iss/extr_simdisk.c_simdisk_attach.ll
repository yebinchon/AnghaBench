; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_attach.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simdisk = type { i32, i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SIMDISK: Can't open %s: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"SIMDISK: %s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.simdisk*, i8*)* @simdisk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simdisk_attach(%struct.simdisk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.simdisk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.simdisk* %0, %struct.simdisk** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kstrdup(i8* %7, i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %82

15:                                               ; preds = %2
  %16 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %17 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %16, i32 0, i32 3
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %20 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %71

26:                                               ; preds = %15
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @O_RDWR, align 4
  %29 = call i32 @simc_open(i8* %27, i32 %28, i32 0)
  %30 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %31 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %33 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %71

42:                                               ; preds = %26
  %43 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %44 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SEEK_END, align 4
  %47 = call i32 @simc_lseek(i32 %45, i32 0, i32 %46)
  %48 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %49 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %51 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %54 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SECTOR_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = call i32 @set_capacity(%struct.TYPE_2__* %52, i32 %57)
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %61 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %63 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %68 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %69)
  br label %71

71:                                               ; preds = %42, %36, %23
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @kfree(i8* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %79 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %78, i32 0, i32 3
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @simc_open(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @simc_lseek(i32, i32, i32) #1

declare dso_local i32 @set_capacity(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
