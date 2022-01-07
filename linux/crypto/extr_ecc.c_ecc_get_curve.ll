; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_get_curve.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_get_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_curve = type { i32 }

@fips_enabled = common dso_local global i32 0, align 4
@nist_p192 = common dso_local global %struct.ecc_curve zeroinitializer, align 4
@nist_p256 = common dso_local global %struct.ecc_curve zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecc_curve* (i32)* @ecc_get_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecc_curve* @ecc_get_curve(i32 %0) #0 {
  %2 = alloca %struct.ecc_curve*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 129, label %5
    i32 128, label %10
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @fips_enabled, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, %struct.ecc_curve* null, %struct.ecc_curve* @nist_p192
  store %struct.ecc_curve* %9, %struct.ecc_curve** %2, align 8
  br label %12

10:                                               ; preds = %1
  store %struct.ecc_curve* @nist_p256, %struct.ecc_curve** %2, align 8
  br label %12

11:                                               ; preds = %1
  store %struct.ecc_curve* null, %struct.ecc_curve** %2, align 8
  br label %12

12:                                               ; preds = %11, %10, %5
  %13 = load %struct.ecc_curve*, %struct.ecc_curve** %2, align 8
  ret %struct.ecc_curve* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
