; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_get_random_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_get_random_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_state = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_state*, i8*, i32)* @drbg_get_random_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_get_random_bytes(%struct.drbg_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbg_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drbg_state* %0, %struct.drbg_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @get_random_bytes(i8* %10, i32 %11)
  %13 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @drbg_fips_continuous_test(%struct.drbg_state* %13, i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %18, %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %9, label %29

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @get_random_bytes(i8*, i32) #1

declare dso_local i32 @drbg_fips_continuous_test(%struct.drbg_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
