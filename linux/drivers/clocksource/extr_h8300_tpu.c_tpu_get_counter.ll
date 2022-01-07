; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_tpu.c_tpu_get_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_tpu.c_tpu_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpu_priv = type { i64 }

@TSR = common dso_local global i64 0, align 8
@TCFV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpu_priv*, i64*)* @tpu_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpu_get_counter(%struct.tpu_priv* %0, i64* %1) #0 {
  %3 = alloca %struct.tpu_priv*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpu_priv* %0, %struct.tpu_priv** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %11 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread8(i64 %14)
  %16 = load i32, i32* @TCFV, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %64, %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %21 = call i64 @read_tcnt32(%struct.tpu_priv* %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %23 = call i64 @read_tcnt32(%struct.tpu_priv* %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %25 = call i64 @read_tcnt32(%struct.tpu_priv* %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %27 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TSR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @ioread8(i64 %30)
  %32 = load i32, i32* @TCFV, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %64, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %50, %46
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ult i64 %59, %60
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ false, %54 ], [ %61, %58 ]
  br label %64

64:                                               ; preds = %62, %50, %42, %34
  %65 = phi i1 [ true, %50 ], [ true, %42 ], [ true, %34 ], [ %63, %62 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %18, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = load i64*, i64** %4, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @read_tcnt32(%struct.tpu_priv*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
