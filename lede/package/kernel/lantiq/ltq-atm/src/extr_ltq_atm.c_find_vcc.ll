; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_find_vcc.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_find_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.atm_vcc* }
%struct.atm_vcc = type { i32 }

@MAX_PVC_NUMBER = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @find_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_vcc(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_PVC_NUMBER, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_atm_priv_data, i32 0, i32 0), align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_atm_priv_data, i32 0, i32 1), align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %20, align 8
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %23 = icmp eq %struct.atm_vcc* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %15, %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %6

32:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
