; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-quark/extr_imr.c_imr_dbgfs_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-quark/extr_imr.c_imr_dbgfs_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.imr_device* }
%struct.imr_device = type { i32, i32 }
%struct.imr_regs = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IMR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"imr%02i: base=%pa, end=%pa, size=0x%08zx rmask=0x%08x, wmask=0x%08x, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"enabled \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@IMR_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unlocked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @imr_dbgfs_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imr_dbgfs_state_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imr_device*, align 8
  %9 = alloca %struct.imr_regs, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.imr_device*, %struct.imr_device** %13, align 8
  store %struct.imr_device* %14, %struct.imr_device** %8, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.imr_device*, %struct.imr_device** %8, align 8
  %18 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %71, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.imr_device*, %struct.imr_device** %8, align 8
  %23 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %20
  %27 = load %struct.imr_device*, %struct.imr_device** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @imr_read(%struct.imr_device* %27, i32 %28, %struct.imr_regs* %9)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %74

33:                                               ; preds = %26
  %34 = call i64 @imr_is_enabled(%struct.imr_regs* %9)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @imr_to_phys(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @imr_to_phys(i32 %41)
  %43 = load i32, i32* @IMR_MASK, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %10, align 8
  br label %51

50:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %50, %36
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %9, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %9, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @imr_is_enabled(%struct.imr_regs* %9)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %63 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IMR_LOCK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %70 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %53, i32* %5, i32* %6, i64 %54, i32 %56, i32 %58, i8* %62, i8* %69)
  br label %71

71:                                               ; preds = %51
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %20

74:                                               ; preds = %32, %20
  %75 = load %struct.imr_device*, %struct.imr_device** %8, align 8
  %76 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imr_read(%struct.imr_device*, i32, %struct.imr_regs*) #1

declare dso_local i64 @imr_is_enabled(%struct.imr_regs*) #1

declare dso_local i32 @imr_to_phys(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32*, i32*, i64, i32, i32, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
