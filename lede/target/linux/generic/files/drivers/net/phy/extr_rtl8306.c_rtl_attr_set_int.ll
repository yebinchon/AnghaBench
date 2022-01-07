; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_attr_set_int.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_attr_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32, i32, i64 }
%struct.switch_val = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rtl_phyregs = type { i32 }

@rtl_regs = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl_attr_set_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_attr_set_int(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_phyregs, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %10 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %11 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %17 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = add nsw i32 %12, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %22 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rtl_regs, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %24)
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %95

30:                                               ; preds = %3
  %31 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %32 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %37 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %41 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %95

47:                                               ; preds = %35, %30
  %48 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %49 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %86

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rtl_regs, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 22
  br i1 %59, label %60, label %86

60:                                               ; preds = %52
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rtl_regs, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %60
  %69 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %70 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %71 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rtl_phy_save(%struct.switch_dev* %69, i32 %72, %struct.rtl_phyregs* %9)
  %74 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %77 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @rtl_set(%struct.switch_dev* %74, i32 %75, i64 %79)
  %81 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %82 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %83 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @rtl_phy_restore(%struct.switch_dev* %81, i32 %84, %struct.rtl_phyregs* %9)
  br label %94

86:                                               ; preds = %60, %52, %47
  %87 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %90 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @rtl_set(%struct.switch_dev* %87, i32 %88, i64 %92)
  br label %94

94:                                               ; preds = %86, %68
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %44, %27
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @rtl_phy_save(%struct.switch_dev*, i32, %struct.rtl_phyregs*) #1

declare dso_local i32 @rtl_set(%struct.switch_dev*, i32, i64) #1

declare dso_local i32 @rtl_phy_restore(%struct.switch_dev*, i32, %struct.rtl_phyregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
