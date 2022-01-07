; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_crng_slow_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_crng_slow_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@crng_slow_load.lfsr = internal global i8 1, align 1
@CHACHA_KEY_SIZE = common dso_local global i32 0, align 4
@primary_crng = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@crng_init = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @crng_slow_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crng_slow_load(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @CHACHA_KEY_SIZE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @primary_crng, i32 0, i32 1), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_trylock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @primary_crng, i32 0, i32 0), i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

21:                                               ; preds = %2
  %22 = load i64, i64* @crng_init, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @primary_crng, i32 0, i32 0), i64 %25)
  store i32 0, i32* %3, align 4
  br label %101

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %27
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %95, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %98

40:                                               ; preds = %36
  %41 = load i8, i8* @crng_slow_load.lfsr, align 1
  store i8 %41, i8* %7, align 1
  %42 = load i8, i8* @crng_slow_load.lfsr, align 1
  %43 = zext i8 %42 to i32
  %44 = ashr i32 %43, 1
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* @crng_slow_load.lfsr, align 1
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load i8, i8* @crng_slow_load.lfsr, align 1
  %52 = zext i8 %51 to i32
  %53 = xor i32 %52, 225
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* @crng_slow_load.lfsr, align 1
  br label %55

55:                                               ; preds = %50, %40
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @CHACHA_KEY_SIZE, align 4
  %59 = urem i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %7, align 1
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %5, align 8
  %67 = urem i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @crng_slow_load.lfsr, align 1
  %72 = zext i8 %71 to i32
  %73 = xor i32 %70, %72
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @CHACHA_KEY_SIZE, align 4
  %77 = urem i32 %75, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = xor i32 %81, %73
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load i8, i8* %7, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 3
  %87 = load i8, i8* %7, align 1
  %88 = zext i8 %87 to i32
  %89 = ashr i32 %88, 5
  %90 = or i32 %86, %89
  %91 = load i8, i8* @crng_slow_load.lfsr, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* @crng_slow_load.lfsr, align 1
  br label %95

95:                                               ; preds = %55
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %36

98:                                               ; preds = %36
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @primary_crng, i32 0, i32 0), i64 %99)
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %24, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
