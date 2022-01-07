; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/sun3x/extr_time.c_sun3x_hwclk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/sun3x/extr_time.c_sun3x_hwclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mostek_dt = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SUN3X_EEPROM = common dso_local global i64 0, align 8
@M_CONTROL = common dso_local global i64 0, align 8
@C_WRITE = common dso_local global i32 0, align 4
@C_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun3x_hwclk(i32 %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.mostek_dt*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load i64, i64* @SUN3X_EEPROM, align 8
  %8 = load i64, i64* @M_CONTROL, align 8
  %9 = add nsw i64 %7, %8
  %10 = inttoptr i64 %9 to %struct.mostek_dt*
  store %struct.mostek_dt* %10, %struct.mostek_dt** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %2
  %16 = load i32, i32* @C_WRITE, align 4
  %17 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %18 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %17, i32 0, i32 0
  %19 = load volatile i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store volatile i32 %20, i32* %18, align 8
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @bin2bcd(i32 %23)
  %25 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %26 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %25, i32 0, i32 7
  store volatile i8* %24, i8** %26, align 8
  %27 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @bin2bcd(i32 %29)
  %31 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %32 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %31, i32 0, i32 6
  store volatile i8* %30, i8** %32, align 8
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @bin2bcd(i32 %35)
  %37 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %38 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %37, i32 0, i32 5
  store volatile i8* %36, i8** %38, align 8
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @bin2bcd(i32 %41)
  %43 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %44 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %43, i32 0, i32 4
  store volatile i8* %42, i8** %44, align 8
  %45 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @bin2bcd(i32 %47)
  %49 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %50 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %49, i32 0, i32 3
  store volatile i8* %48, i8** %50, align 8
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i8* @bin2bcd(i32 %54)
  %56 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %57 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %56, i32 0, i32 2
  store volatile i8* %55, i8** %57, align 8
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %60, 100
  %62 = call i8* @bin2bcd(i32 %61)
  %63 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %64 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %63, i32 0, i32 1
  store volatile i8* %62, i8** %64, align 8
  %65 = load i32, i32* @C_WRITE, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %68 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %67, i32 0, i32 0
  %69 = load volatile i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store volatile i32 %70, i32* %68, align 8
  br label %143

71:                                               ; preds = %2
  %72 = load i32, i32* @C_READ, align 4
  %73 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %74 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %73, i32 0, i32 0
  %75 = load volatile i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store volatile i32 %76, i32* %74, align 8
  %77 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %78 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %77, i32 0, i32 7
  %79 = load volatile i8*, i8** %78, align 8
  %80 = call i8* @bcd2bin(i8* %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %85 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %84, i32 0, i32 6
  %86 = load volatile i8*, i8** %85, align 8
  %87 = call i8* @bcd2bin(i8* %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %92 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %91, i32 0, i32 5
  %93 = load volatile i8*, i8** %92, align 8
  %94 = call i8* @bcd2bin(i8* %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %99 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %98, i32 0, i32 4
  %100 = load volatile i8*, i8** %99, align 8
  %101 = call i8* @bcd2bin(i8* %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %106 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %105, i32 0, i32 3
  %107 = load volatile i8*, i8** %106, align 8
  %108 = call i8* @bcd2bin(i8* %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %113 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %112, i32 0, i32 2
  %114 = load volatile i8*, i8** %113, align 8
  %115 = call i8* @bcd2bin(i8* %114)
  %116 = getelementptr i8, i8* %115, i64 -1
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %119 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %121 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %120, i32 0, i32 1
  %122 = load volatile i8*, i8** %121, align 8
  %123 = call i8* @bcd2bin(i8* %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @C_READ, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %130 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %129, i32 0, i32 0
  %131 = load volatile i32, i32* %130, align 8
  %132 = and i32 %131, %128
  store volatile i32 %132, i32* %130, align 8
  %133 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %134 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %135, 70
  br i1 %136, label %137, label %142

137:                                              ; preds = %71
  %138 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 100
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %137, %71
  br label %143

143:                                              ; preds = %142, %15
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @local_irq_restore(i64 %144)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @bin2bcd(i32) #1

declare dso_local i8* @bcd2bin(i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
