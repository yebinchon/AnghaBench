; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_needs_bounce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_needs_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@.str = private unnamed_addr constant [47 x i8] c"DMA mapping too big (requested %#x mask %#Lx)\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i64)* @needs_bounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_bounce(%struct.device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %79

19:                                               ; preds = %12
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %63

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 1
  %31 = load i64, i64* %9, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %24
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %46)
  %48 = load i32, i32* @E2BIG, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %79

50:                                               ; preds = %36, %24
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %52, %53
  %55 = sub i64 %54, 1
  %56 = or i64 %51, %55
  %57 = load i64, i64* %9, align 8
  %58 = xor i64 %57, -1
  %59 = and i64 %56, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %79

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %19
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.device*, i64, i64)**
  %70 = load i32 (%struct.device*, i64, i64)*, i32 (%struct.device*, i64, i64)** %69, align 8
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 %70(%struct.device* %71, i64 %72, i64 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %63, %61, %40, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
