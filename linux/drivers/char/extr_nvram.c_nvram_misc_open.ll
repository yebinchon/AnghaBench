; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_nvram.c_nvram_misc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_nvram.c_nvram_misc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.inode = type { i32 }
%struct.file = type { i32, i32 }

@nvram_state_lock = common dso_local global i32 0, align 4
@nvram_open_cnt = common dso_local global i64 0, align 8
@O_EXCL = common dso_local global i32 0, align 4
@nvram_open_mode = common dso_local global i32 0, align 4
@NVRAM_EXCL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@NVRAM_WRITE = common dso_local global i32 0, align 4
@arch_nvram_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @nvram_misc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvram_misc_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i32 @spin_lock(i32* @nvram_state_lock)
  %7 = load i64, i64* @nvram_open_cnt, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @O_EXCL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* @nvram_open_mode, align 4
  %18 = load i32, i32* @NVRAM_EXCL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %9
  %22 = call i32 @spin_unlock(i32* @nvram_state_lock)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %16
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @O_EXCL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @NVRAM_EXCL, align 4
  %34 = load i32, i32* @nvram_open_mode, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @nvram_open_mode, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FMODE_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @NVRAM_WRITE, align 4
  %45 = load i32, i32* @nvram_open_mode, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @nvram_open_mode, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i64, i64* @nvram_open_cnt, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* @nvram_open_cnt, align 8
  %50 = call i32 @spin_unlock(i32* @nvram_state_lock)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
