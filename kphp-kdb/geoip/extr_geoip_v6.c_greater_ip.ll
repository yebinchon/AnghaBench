; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_greater_ip.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_greater_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6 = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @greater_ip(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipv6, align 8
  %5 = alloca %struct.ipv6, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %4, i32 0, i32 0
  store i64* %0, i64** %7, align 8
  %8 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %5, i32 0, i32 0
  store i64* %1, i64** %8, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %4, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %5, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %18, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %47

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %4, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %5, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %47

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %9

46:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %41, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
