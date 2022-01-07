; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/swarm/extr_rtc_xicor1241.c_xicor_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/swarm/extr_rtc_xicor1241.c_xicor_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@rtc_lock = common dso_local global i32 0, align 4
@X1241REG_SR = common dso_local global i32 0, align 4
@X1241REG_SR_WEL = common dso_local global i32 0, align 4
@X1241REG_SR_RWEL = common dso_local global i32 0, align 4
@X1241REG_SC = common dso_local global i32 0, align 4
@X1241REG_MN = common dso_local global i32 0, align 4
@X1241REG_DT = common dso_local global i32 0, align 4
@X1241REG_MO = common dso_local global i32 0, align 4
@X1241REG_YR = common dso_local global i32 0, align 4
@X1241REG_Y2K = common dso_local global i32 0, align 4
@X1241REG_HR = common dso_local global i32 0, align 4
@X1241REG_HR_MIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xicor_set_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @rtc_time64_to_tm(i32 %6, %struct.rtc_time* %3)
  %8 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1900
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %11)
  %13 = load i32, i32* @X1241REG_SR, align 4
  %14 = load i32, i32* @X1241REG_SR_WEL, align 4
  %15 = call i32 @xicor_write(i32 %13, i32 %14)
  %16 = load i32, i32* @X1241REG_SR, align 4
  %17 = load i32, i32* @X1241REG_SR_WEL, align 4
  %18 = load i32, i32* @X1241REG_SR_RWEL, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @xicor_write(i32 %16, i32 %19)
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @bin2bcd(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @X1241REG_SC, align 4
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xicor_write(i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @bin2bcd(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @X1241REG_MN, align 4
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @xicor_write(i32 %35, i32 %37)
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @bin2bcd(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @X1241REG_DT, align 4
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xicor_write(i32 %44, i32 %46)
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @bin2bcd(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @X1241REG_MO, align 4
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xicor_write(i32 %56, i32 %58)
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 100
  store i32 %62, i32* %4, align 4
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %64, 100
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @X1241REG_YR, align 4
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @xicor_write(i32 %66, i32 %68)
  %70 = load i32, i32* @X1241REG_Y2K, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @xicor_write(i32 %70, i32 %71)
  %73 = load i32, i32* @X1241REG_HR, align 4
  %74 = call i32 @xicor_read(i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @X1241REG_HR_MIL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %1
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @bin2bcd(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, -64
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 63
  %90 = or i32 %86, %89
  store i32 %90, i32* %4, align 4
  br label %113

91:                                               ; preds = %1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, -64
  store i32 %93, i32* %4, align 4
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %95, 12
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, 32
  store i32 %99, i32* %4, align 4
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 12
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %91
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @bin2bcd(i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %103, %79
  %114 = load i32, i32* @X1241REG_HR, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @xicor_write(i32 %114, i32 %115)
  %117 = load i32, i32* @X1241REG_SR, align 4
  %118 = call i32 @xicor_write(i32 %117, i32 0)
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %119)
  ret i32 0
}

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xicor_write(i32, i32) #1

declare dso_local i8* @bin2bcd(i32) #1

declare dso_local i32 @xicor_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
