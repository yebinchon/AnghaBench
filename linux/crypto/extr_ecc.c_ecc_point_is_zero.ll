; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_point_is_zero.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_point_is_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_point = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecc_point*)* @ecc_point_is_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecc_point_is_zero(%struct.ecc_point* %0) #0 {
  %2 = alloca %struct.ecc_point*, align 8
  store %struct.ecc_point* %0, %struct.ecc_point** %2, align 8
  %3 = load %struct.ecc_point*, %struct.ecc_point** %2, align 8
  %4 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ecc_point*, %struct.ecc_point** %2, align 8
  %7 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @vli_is_zero(i32 %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ecc_point*, %struct.ecc_point** %2, align 8
  %13 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ecc_point*, %struct.ecc_point** %2, align 8
  %16 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @vli_is_zero(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %11, %1
  %21 = phi i1 [ false, %1 ], [ %19, %11 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i64 @vli_is_zero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
