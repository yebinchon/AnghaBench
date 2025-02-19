; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecrdsa.c_get_curve_by_oid.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecrdsa.c_get_curve_by_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_curve = type { i32 }

@gost_cp256a = common dso_local global %struct.ecc_curve zeroinitializer, align 4
@gost_cp256b = common dso_local global %struct.ecc_curve zeroinitializer, align 4
@gost_cp256c = common dso_local global %struct.ecc_curve zeroinitializer, align 4
@gost_tc512a = common dso_local global %struct.ecc_curve zeroinitializer, align 4
@gost_tc512b = common dso_local global %struct.ecc_curve zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecc_curve* (i32)* @get_curve_by_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecc_curve* @get_curve_by_oid(i32 %0) #0 {
  %2 = alloca %struct.ecc_curve*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 137, label %5
    i32 133, label %5
    i32 136, label %6
    i32 132, label %6
    i32 135, label %7
    i32 131, label %7
    i32 130, label %8
    i32 129, label %9
    i32 134, label %10
    i32 128, label %10
  ]

5:                                                ; preds = %1, %1
  store %struct.ecc_curve* @gost_cp256a, %struct.ecc_curve** %2, align 8
  br label %12

6:                                                ; preds = %1, %1
  store %struct.ecc_curve* @gost_cp256b, %struct.ecc_curve** %2, align 8
  br label %12

7:                                                ; preds = %1, %1
  store %struct.ecc_curve* @gost_cp256c, %struct.ecc_curve** %2, align 8
  br label %12

8:                                                ; preds = %1
  store %struct.ecc_curve* @gost_tc512a, %struct.ecc_curve** %2, align 8
  br label %12

9:                                                ; preds = %1
  store %struct.ecc_curve* @gost_tc512b, %struct.ecc_curve** %2, align 8
  br label %12

10:                                               ; preds = %1, %1
  br label %11

11:                                               ; preds = %1, %10
  store %struct.ecc_curve* null, %struct.ecc_curve** %2, align 8
  br label %12

12:                                               ; preds = %11, %9, %8, %7, %6, %5
  %13 = load %struct.ecc_curve*, %struct.ecc_curve** %2, align 8
  ret %struct.ecc_curve* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
