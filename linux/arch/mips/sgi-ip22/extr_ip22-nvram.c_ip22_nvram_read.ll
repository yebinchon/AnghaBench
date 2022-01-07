; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-nvram.c_ip22_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-nvram.c_ip22_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@hpc3c0 = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @ip22_nvram_read(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  %5 = call i64 (...) @ip22_is_fullhouse()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hpc3c0, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %3, align 4
  %11 = call zeroext i16 @ip22_eeprom_read(i32* %9, i32 %10)
  store i16 %11, i16* %2, align 2
  br label %38

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hpc3c0, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %4, align 2
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hpc3c0, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = or i32 %27, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %2, align 2
  br label %38

38:                                               ; preds = %12, %7
  %39 = load i16, i16* %2, align 2
  ret i16 %39
}

declare dso_local i64 @ip22_is_fullhouse(...) #1

declare dso_local zeroext i16 @ip22_eeprom_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
