; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_atmel-rng.c_atmel_trng_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_atmel-rng.c_atmel_trng_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_trng = type { i64 }

@TRNG_KEY = common dso_local global i32 0, align 4
@TRNG_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_trng*)* @atmel_trng_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_trng_disable(%struct.atmel_trng* %0) #0 {
  %2 = alloca %struct.atmel_trng*, align 8
  store %struct.atmel_trng* %0, %struct.atmel_trng** %2, align 8
  %3 = load i32, i32* @TRNG_KEY, align 4
  %4 = load %struct.atmel_trng*, %struct.atmel_trng** %2, align 8
  %5 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TRNG_CR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 %3, i64 %8)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
