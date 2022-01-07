; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/rtc-rv5c386a/src/extr_rtc.c_set_rtc_time.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/rtc-rv5c386a/src/extr_rtc.c_set_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_Y2K_MASK = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_I2C_ADDRESS = common dso_local global i32 0, align 4
@I2C_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*)* @set_rtc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rtc_time(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %3 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %4 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i8* @to_bcd(i32 %5)
  %7 = ptrtoint i8* %6 to i32
  %8 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %11 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @to_bcd(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @to_bcd(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @to_bcd(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i8* @to_bcd(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @to_bcd(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 256
  br i1 %49, label %50, label %60

50:                                               ; preds = %1
  %51 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 256
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @RTC_Y2K_MASK, align 4
  %56 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %50, %1
  %61 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %62 = call i32 (...) @i2c_start()
  %63 = load i32, i32* @RTC_I2C_ADDRESS, align 4
  %64 = load i32, i32* @I2C_WRITE_MASK, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @i2c_outb(i32 %65)
  %67 = call i32 @i2c_outb(i32 0)
  %68 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @i2c_outb(i32 %70)
  %72 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @i2c_outb(i32 %74)
  %76 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @i2c_outb(i32 %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @i2c_outb(i32 %82)
  %84 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @i2c_outb(i32 %86)
  %88 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @i2c_outb(i32 %90)
  %92 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %93 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @i2c_outb(i32 %94)
  %96 = call i32 (...) @i2c_stop()
  %97 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  ret void
}

declare dso_local i8* @to_bcd(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @i2c_start(...) #1

declare dso_local i32 @i2c_outb(i32) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
