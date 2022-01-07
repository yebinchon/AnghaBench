; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/bvme6000/extr_config.c_bvme6000_hwclk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/bvme6000/extr_config.c_bvme6000_hwclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@BVME_RTC_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bvme6000_hwclk(i32 %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load i32, i32* @BVME_RTC_BASE, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_2__*
  store volatile %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 192
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %6, align 1
  %15 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 64, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %87

19:                                               ; preds = %2
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = srem i32 %22, 4
  %24 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @bin2bcd(i32 %30)
  %32 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @bin2bcd(i32 %36)
  %38 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @bin2bcd(i32 %42)
  %44 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @bin2bcd(i32 %48)
  %50 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i8* @bin2bcd(i32 %55)
  %57 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = srem i32 %61, 100
  %63 = call i8* @bin2bcd(i32 %62)
  %64 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %19
  %71 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = call i8* @bin2bcd(i32 %75)
  %77 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %70, %19
  %80 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = srem i32 %82, 4
  %84 = or i32 %83, 8
  %85 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %160

87:                                               ; preds = %2
  br label %88

88:                                               ; preds = %149, %87
  %89 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @bcd2bin(i8* %91)
  %93 = trunc i64 %92 to i32
  %94 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 7
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @bcd2bin(i8* %98)
  %100 = trunc i64 %99 to i32
  %101 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 6
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @bcd2bin(i8* %105)
  %107 = trunc i64 %106 to i32
  %108 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 5
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @bcd2bin(i8* %112)
  %114 = trunc i64 %113 to i32
  %115 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @bcd2bin(i8* %119)
  %121 = sub nsw i64 %120, 1
  %122 = trunc i64 %121 to i32
  %123 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %124 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @bcd2bin(i8* %127)
  %129 = trunc i64 %128 to i32
  %130 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %131 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %133 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 70
  br i1 %135, label %136, label %141

136:                                              ; preds = %88
  %137 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %138 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 100
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %136, %88
  %142 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @bcd2bin(i8* %144)
  %146 = sub nsw i64 %145, 1
  %147 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %148 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %147, i32 0, i32 6
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %141
  %150 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %151 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @bcd2bin(i8* %156)
  %158 = icmp ne i64 %153, %157
  br i1 %158, label %88, label %159

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %79
  %161 = load i8, i8* %6, align 1
  %162 = zext i8 %161 to i32
  %163 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  ret i32 0
}

declare dso_local i8* @bin2bcd(i32) #1

declare dso_local i64 @bcd2bin(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
