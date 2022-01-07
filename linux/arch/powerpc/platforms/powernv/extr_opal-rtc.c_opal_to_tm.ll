; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-rtc.c_opal_to_tm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-rtc.c_opal_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.rtc_time*)* @opal_to_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_to_tm(i32 %0, i32 %1, %struct.rtc_time* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtc_time*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rtc_time* %2, %struct.rtc_time** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 24
  %9 = call i32 @bcd2bin(i32 %8)
  %10 = mul nsw i32 %9, 100
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = call i32 @bcd2bin(i32 %13)
  %15 = add nsw i32 %10, %14
  %16 = sub nsw i32 %15, 1900
  %17 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = call i32 @bcd2bin(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @bcd2bin(i32 %27)
  %29 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 56
  %33 = and i32 %32, 255
  %34 = call i32 @bcd2bin(i32 %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 48
  %39 = and i32 %38, 255
  %40 = call i32 @bcd2bin(i32 %39)
  %41 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 40
  %45 = and i32 %44, 255
  %46 = call i32 @bcd2bin(i32 %45)
  %47 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 6
  store i32 -1, i32* %50, align 4
  ret void
}

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
