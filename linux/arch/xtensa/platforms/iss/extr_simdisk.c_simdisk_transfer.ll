; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simdisk = type { i64, i32, i32 }

@SECTOR_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Beyond-end %s (%ld %ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"SIMDISK: IO error %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.simdisk*, i64, i64, i8*, i32)* @simdisk_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simdisk_transfer(%struct.simdisk* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.simdisk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.simdisk* %0, %struct.simdisk** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @SECTOR_SHIFT, align 8
  %16 = shl i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @SECTOR_SHIFT, align 8
  %19 = shl i64 %17, %18
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.simdisk*, %struct.simdisk** %6, align 8
  %22 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %5
  %26 = load %struct.simdisk*, %struct.simdisk** %6, align 8
  %27 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub i64 %28, %29
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25, %5
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @pr_notice(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %37, i64 %38, i64 %39)
  br label %94

41:                                               ; preds = %25
  %42 = load %struct.simdisk*, %struct.simdisk** %6, align 8
  %43 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  br label %45

45:                                               ; preds = %80, %41
  %46 = load i64, i64* %12, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %45
  %49 = load %struct.simdisk*, %struct.simdisk** %6, align 8
  %50 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* @SEEK_SET, align 4
  %54 = call i32 @simc_lseek(i32 %51, i64 %52, i32 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @READ_ONCE(i8 signext %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load %struct.simdisk*, %struct.simdisk** %6, align 8
  %62 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i64 @simc_write(i32 %63, i8* %64, i64 %65)
  store i64 %66, i64* %13, align 8
  br label %74

67:                                               ; preds = %48
  %68 = load %struct.simdisk*, %struct.simdisk** %6, align 8
  %69 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @simc_read(i32 %70, i8* %71, i64 %72)
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %67, %60
  %75 = load i64, i64* %13, align 8
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %90

80:                                               ; preds = %74
  %81 = load i64, i64* %13, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %9, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %12, align 8
  br label %45

90:                                               ; preds = %77, %45
  %91 = load %struct.simdisk*, %struct.simdisk** %6, align 8
  %92 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %90, %33
  ret void
}

declare dso_local i32 @pr_notice(i8*, i8*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @simc_lseek(i32, i64, i32) #1

declare dso_local i32 @READ_ONCE(i8 signext) #1

declare dso_local i64 @simc_write(i32, i8*, i64) #1

declare dso_local i64 @simc_read(i32, i8*, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
