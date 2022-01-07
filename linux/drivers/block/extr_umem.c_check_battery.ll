; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_check_battery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_check_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardinfo = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Battery %d now good\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Battery %d now FAILED\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Battery %d still FAILED after 5 hours\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardinfo*, i32, i32)* @check_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_battery(%struct.cardinfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cardinfo* %0, %struct.cardinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %10 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %8, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %3
  %19 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %20 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %31 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 8
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %39 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i64 %37, i64* %44, align 8
  %45 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %46 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %18
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %57 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @dev_printk(i32 %55, i32* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %64 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  br label %79

70:                                               ; preds = %18
  %71 = load i32, i32* @KERN_ERR, align 4
  %72 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %73 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @dev_printk(i32 %71, i32* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %70, %54
  store i32 1, i32* %4, align 4
  br label %136

80:                                               ; preds = %3
  %81 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %82 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %134, label %90

90:                                               ; preds = %80
  %91 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %92 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %134, label %100

100:                                              ; preds = %90
  %101 = load i64, i64* @jiffies, align 8
  %102 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %103 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @HZ, align 4
  %111 = mul nsw i32 %110, 60
  %112 = mul nsw i32 %111, 60
  %113 = mul nsw i32 %112, 5
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %109, %114
  %116 = call i64 @time_after_eq(i64 %101, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %100
  %119 = load i32, i32* @KERN_ERR, align 4
  %120 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %121 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 @dev_printk(i32 %119, i32* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %128 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  store i32 1, i32* %4, align 4
  br label %136

134:                                              ; preds = %100, %90, %80
  br label %135

135:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %118, %79
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
