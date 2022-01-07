; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_add6.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_add6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }
%struct.in6_addr = type { i64* }

@AF_INET6 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"overflow during 'add'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*, %struct.cidr*)* @cidr_add6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_add6(%struct.cidr* %0, %struct.cidr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cidr*, align 8
  %5 = alloca %struct.cidr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cidr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  store %struct.cidr* %0, %struct.cidr** %4, align 8
  store %struct.cidr* %1, %struct.cidr** %5, align 8
  store i64 15, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.cidr*, %struct.cidr** %4, align 8
  %13 = call %struct.cidr* @cidr_clone(%struct.cidr* %12)
  store %struct.cidr* %13, %struct.cidr** %9, align 8
  %14 = load %struct.cidr*, %struct.cidr** %9, align 8
  %15 = getelementptr inbounds %struct.cidr, %struct.cidr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.in6_addr* %16, %struct.in6_addr** %10, align 8
  %17 = load %struct.cidr*, %struct.cidr** %5, align 8
  %18 = getelementptr inbounds %struct.cidr, %struct.cidr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.in6_addr* %19, %struct.in6_addr** %11, align 8
  %20 = load %struct.cidr*, %struct.cidr** %4, align 8
  %21 = getelementptr inbounds %struct.cidr, %struct.cidr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.cidr*, %struct.cidr** %5, align 8
  %27 = getelementptr inbounds %struct.cidr, %struct.cidr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %2
  store i32 0, i32* %3, align 4
  br label %81

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %70, %32
  %34 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %35 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %39, %45
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %46, %47
  %49 = icmp uge i64 %48, 256
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %8, align 8
  %54 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %55 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %59, %60
  %62 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %63 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %61
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %33
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %6, align 8
  %73 = icmp ugt i64 %71, 0
  br i1 %73, label %33, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

80:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %77, %31
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.cidr* @cidr_clone(%struct.cidr*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
