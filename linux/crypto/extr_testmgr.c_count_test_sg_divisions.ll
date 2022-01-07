; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_count_test_sg_divisions.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_count_test_sg_divisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_sg_division = type { i64 }

@TEST_SG_TOTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_sg_division*)* @count_test_sg_divisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_test_sg_divisions(%struct.test_sg_division* %0) #0 {
  %2 = alloca %struct.test_sg_division*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.test_sg_division* %0, %struct.test_sg_division** %2, align 8
  %5 = load i32, i32* @TEST_SG_TOTAL, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.test_sg_division*, %struct.test_sg_division** %2, align 8
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %7, i64 %10
  %12 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = sub nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %6, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
