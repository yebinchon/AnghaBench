; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer16.c_timer16_get_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer16.c_timer16_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer16_priv = type { i8, i64, i64 }

@TISRC = common dso_local global i64 0, align 8
@TCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.timer16_priv*)* @timer16_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @timer16_get_counter(%struct.timer16_priv* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timer16_priv*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.timer16_priv* %0, %struct.timer16_priv** %3, align 8
  %9 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %10 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TISRC, align 8
  %13 = add nsw i64 %11, %12
  %14 = call zeroext i8 @ioread8(i64 %13)
  %15 = zext i8 %14 to i32
  %16 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %17 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = and i32 %15, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  br label %22

22:                                               ; preds = %99, %1
  %23 = load i8, i8* %7, align 1
  store i8 %23, i8* %8, align 1
  %24 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %25 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TCNT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call zeroext i16 @ioread16be(i64 %28)
  store i16 %29, i16* %4, align 2
  %30 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %31 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCNT, align 8
  %34 = add nsw i64 %32, %33
  %35 = call zeroext i16 @ioread16be(i64 %34)
  store i16 %35, i16* %5, align 2
  %36 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %37 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TCNT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call zeroext i16 @ioread16be(i64 %40)
  store i16 %41, i16* %6, align 2
  %42 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %43 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TISRC, align 8
  %46 = add nsw i64 %44, %45
  %47 = call zeroext i8 @ioread8(i64 %46)
  %48 = zext i8 %47 to i32
  %49 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %50 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 8
  %52 = zext i8 %51 to i32
  %53 = and i32 %48, %52
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %7, align 1
  br label %55

55:                                               ; preds = %22
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %99, label %61

61:                                               ; preds = %55
  %62 = load i16, i16* %4, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* %5, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i16, i16* %4, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* %6, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %99, label %73

73:                                               ; preds = %67, %61
  %74 = load i16, i16* %5, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* %6, align 2
  %77 = zext i16 %76 to i32
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i16, i16* %5, align 2
  %81 = zext i16 %80 to i32
  %82 = load i16, i16* %4, align 2
  %83 = zext i16 %82 to i32
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %79, %73
  %86 = load i16, i16* %6, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, i16* %4, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i16, i16* %6, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, i16* %5, align 2
  %95 = zext i16 %94 to i32
  %96 = icmp slt i32 %93, %95
  br label %97

97:                                               ; preds = %91, %85
  %98 = phi i1 [ false, %85 ], [ %96, %91 ]
  br label %99

99:                                               ; preds = %97, %79, %67, %55
  %100 = phi i1 [ true, %79 ], [ true, %67 ], [ true, %55 ], [ %98, %97 ]
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %22, label %104

104:                                              ; preds = %99
  %105 = load i8, i8* %7, align 1
  %106 = icmp ne i8 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @likely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i16, i16* %5, align 2
  %113 = zext i16 %112 to i64
  store i64 %113, i64* %2, align 8
  br label %119

114:                                              ; preds = %104
  %115 = load i16, i16* %5, align 2
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %116, 65536
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %2, align 8
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i64, i64* %2, align 8
  ret i64 %120
}

declare dso_local zeroext i8 @ioread8(i64) #1

declare dso_local zeroext i16 @ioread16be(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
