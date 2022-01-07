; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_nvram.c_atari_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_nvram.c_atari_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtc_lock = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NVRAM_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atari_nvram_read(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %12 = call i32 (...) @__nvram_check_checksum()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %34, %18
  %22 = load i64, i64* %6, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @NVRAM_BYTES, align 8
  %27 = icmp slt i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = load i64, i64* %9, align 8
  %32 = call signext i8 @__nvram_read_byte(i64 %31)
  %33 = load i8*, i8** %8, align 8
  store i8 %32, i8* %33, align 1
  br label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  br label %21

41:                                               ; preds = %28
  %42 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %43 = load i64, i64* %9, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %41, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__nvram_check_checksum(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local signext i8 @__nvram_read_byte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
