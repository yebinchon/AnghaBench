; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_msgr.c_mpic_msgr_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_msgr.c_mpic_msgr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic_msgr = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@mpic_msgr_count = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@msgrs_lock = common dso_local global i32 0, align 4
@mpic_msgrs = common dso_local global %struct.mpic_msgr** null, align 8
@MSGR_FREE = common dso_local global i64 0, align 8
@MSGR_INUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpic_msgr* @mpic_msgr_get(i32 %0) #0 {
  %2 = alloca %struct.mpic_msgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.mpic_msgr*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @EBUSY, align 4
  %7 = sub nsw i32 0, %6
  %8 = call %struct.mpic_msgr* @ERR_PTR(i32 %7)
  store %struct.mpic_msgr* %8, %struct.mpic_msgr** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @mpic_msgr_count, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mpic_msgr* @ERR_PTR(i32 %14)
  store %struct.mpic_msgr* %15, %struct.mpic_msgr** %2, align 8
  br label %37

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* @msgrs_lock, i64 %17)
  %19 = load %struct.mpic_msgr**, %struct.mpic_msgr*** @mpic_msgrs, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mpic_msgr*, %struct.mpic_msgr** %19, i64 %21
  %23 = load %struct.mpic_msgr*, %struct.mpic_msgr** %22, align 8
  store %struct.mpic_msgr* %23, %struct.mpic_msgr** %5, align 8
  %24 = load %struct.mpic_msgr*, %struct.mpic_msgr** %5, align 8
  %25 = getelementptr inbounds %struct.mpic_msgr, %struct.mpic_msgr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MSGR_FREE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load i64, i64* @MSGR_INUSE, align 8
  %31 = load %struct.mpic_msgr*, %struct.mpic_msgr** %5, align 8
  %32 = getelementptr inbounds %struct.mpic_msgr, %struct.mpic_msgr* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %16
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* @msgrs_lock, i64 %34)
  %36 = load %struct.mpic_msgr*, %struct.mpic_msgr** %5, align 8
  store %struct.mpic_msgr* %36, %struct.mpic_msgr** %2, align 8
  br label %37

37:                                               ; preds = %33, %12
  %38 = load %struct.mpic_msgr*, %struct.mpic_msgr** %2, align 8
  ret %struct.mpic_msgr* %38
}

declare dso_local %struct.mpic_msgr* @ERR_PTR(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
