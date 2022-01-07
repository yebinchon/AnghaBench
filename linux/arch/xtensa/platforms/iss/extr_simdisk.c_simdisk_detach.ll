; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_detach.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simdisk = type { i64, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SIMDISK: error closing %s: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SIMDISK: %s detached from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.simdisk*)* @simdisk_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simdisk_detach(%struct.simdisk* %0) #0 {
  %2 = alloca %struct.simdisk*, align 8
  %3 = alloca i32, align 4
  store %struct.simdisk* %0, %struct.simdisk** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %5 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %4, i32 0, i32 2
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %8 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %16 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %52

19:                                               ; preds = %14
  %20 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %21 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @simc_close(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %27 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %28, i32 %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %51

33:                                               ; preds = %19
  %34 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %35 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %40 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32* %41)
  %43 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %44 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 8
  %45 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %46 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %50 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %33, %25
  br label %52

52:                                               ; preds = %51, %14
  br label %53

53:                                               ; preds = %52, %11
  %54 = load %struct.simdisk*, %struct.simdisk** %2, align 8
  %55 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @simc_close(i32) #1

declare dso_local i32 @pr_err(i8*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
