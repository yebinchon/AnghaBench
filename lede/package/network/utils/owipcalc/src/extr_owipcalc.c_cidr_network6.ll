; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_network6.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_network6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*)* @cidr_network6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_network6(%struct.cidr* %0) #0 {
  %2 = alloca %struct.cidr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cidr*, align 8
  store %struct.cidr* %0, %struct.cidr** %2, align 8
  %5 = load %struct.cidr*, %struct.cidr** %2, align 8
  %6 = call %struct.cidr* @cidr_clone(%struct.cidr* %5)
  store %struct.cidr* %6, %struct.cidr** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.cidr*, %struct.cidr** %4, align 8
  %10 = getelementptr inbounds %struct.cidr, %struct.cidr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 128, %11
  %13 = sdiv i32 %12, 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %7
  %16 = load %struct.cidr*, %struct.cidr** %4, align 8
  %17 = getelementptr inbounds %struct.cidr, %struct.cidr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 15, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.cidr*, %struct.cidr** %4, align 8
  %30 = getelementptr inbounds %struct.cidr, %struct.cidr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 128, %31
  %33 = srem i32 %32, 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.cidr*, %struct.cidr** %4, align 8
  %37 = getelementptr inbounds %struct.cidr, %struct.cidr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 128, %38
  %40 = srem i32 %39, 8
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = xor i32 %42, -1
  %44 = load %struct.cidr*, %struct.cidr** %4, align 8
  %45 = getelementptr inbounds %struct.cidr, %struct.cidr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 15, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %43
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %35, %28
  ret i32 1
}

declare dso_local %struct.cidr* @cidr_clone(%struct.cidr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
