; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_contains6.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_contains6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32* }

@printed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*, %struct.cidr*)* @cidr_contains6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_contains6(%struct.cidr* %0, %struct.cidr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cidr*, align 8
  %5 = alloca %struct.cidr*, align 8
  %6 = alloca %struct.cidr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cidr* %0, %struct.cidr** %4, align 8
  store %struct.cidr* %1, %struct.cidr** %5, align 8
  %13 = load %struct.cidr*, %struct.cidr** %4, align 8
  %14 = call %struct.cidr* @cidr_clone(%struct.cidr* %13)
  store %struct.cidr* %14, %struct.cidr** %6, align 8
  %15 = load %struct.cidr*, %struct.cidr** %6, align 8
  %16 = getelementptr inbounds %struct.cidr, %struct.cidr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.in6_addr* %17, %struct.in6_addr** %7, align 8
  %18 = load %struct.cidr*, %struct.cidr** %5, align 8
  %19 = getelementptr inbounds %struct.cidr, %struct.cidr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.in6_addr* %20, %struct.in6_addr** %8, align 8
  %21 = load %struct.cidr*, %struct.cidr** %6, align 8
  %22 = getelementptr inbounds %struct.cidr, %struct.cidr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 128, %23
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.cidr*, %struct.cidr** %6, align 8
  %27 = getelementptr inbounds %struct.cidr, %struct.cidr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 128, %28
  %30 = srem i32 %29, 8
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = xor i32 %32, -1
  store i32 %33, i32* %10, align 4
  %34 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %35 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 15, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %45 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 15, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load i64, i64* @printed, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %2
  %59 = load %struct.cidr*, %struct.cidr** %5, align 8
  %60 = getelementptr inbounds %struct.cidr, %struct.cidr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cidr*, %struct.cidr** %6, align 8
  %63 = getelementptr inbounds %struct.cidr, %struct.cidr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 15
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %75 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %74, i32 0, i32 0
  %76 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %77 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %76, i32 0, i32 0
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 15, %78
  %80 = call i32 @memcmp(i32** %75, i32** %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73, %70
  %83 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %86

84:                                               ; preds = %73, %66, %58
  %85 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.cidr* @cidr_clone(%struct.cidr*) #1

declare dso_local i32 @qprintf(i8*) #1

declare dso_local i32 @memcmp(i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
