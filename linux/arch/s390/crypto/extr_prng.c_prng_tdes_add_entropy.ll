; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_prng.c_prng_tdes_add_entropy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_prng.c_prng_tdes_add_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CPACF_KMC_PRNG = common dso_local global i32 0, align 4
@prng_data = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prng_tdes_add_entropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prng_tdes_add_entropy() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 16
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = load i32, i32* @CPACF_KMC_PRNG, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prng_data, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %13 = bitcast i32* %12 to i8*
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @cpacf_kmc(i32 %7, i32 %11, i8* %13, i8* %15, i32 16)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prng_data, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %22 = call i32 @memcpy(i32 %20, i32* %21, i32 16)
  br label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %2, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %3

26:                                               ; preds = %3
  ret void
}

declare dso_local i32 @cpacf_kmc(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
