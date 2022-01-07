; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_diag_mac.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_diag_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sthyi_sctns = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.diag204_x_phys_block = type { %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DED_WEIGHT = common dso_local global i32 0, align 4
@MAC_CNT_VLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sthyi_sctns*, %struct.diag204_x_phys_block*, i8*)* @fill_diag_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_diag_mac(%struct.sthyi_sctns* %0, %struct.diag204_x_phys_block* %1, i8* %2) #0 {
  %4 = alloca %struct.sthyi_sctns*, align 8
  %5 = alloca %struct.diag204_x_phys_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sthyi_sctns* %0, %struct.sthyi_sctns** %4, align 8
  store %struct.diag204_x_phys_block* %1, %struct.diag204_x_phys_block** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %75, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.diag204_x_phys_block*, %struct.diag204_x_phys_block** %5, align 8
  %11 = getelementptr inbounds %struct.diag204_x_phys_block, %struct.diag204_x_phys_block* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %8
  %16 = load %struct.diag204_x_phys_block*, %struct.diag204_x_phys_block** %5, align 8
  %17 = getelementptr inbounds %struct.diag204_x_phys_block, %struct.diag204_x_phys_block* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @cpu_id(i32 %23, i8* %24)
  switch i32 %25, label %74 [
    i32 129, label %26
    i32 128, label %50
  ]

26:                                               ; preds = %15
  %27 = load %struct.diag204_x_phys_block*, %struct.diag204_x_phys_block** %5, align 8
  %28 = getelementptr inbounds %struct.diag204_x_phys_block, %struct.diag204_x_phys_block* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DED_WEIGHT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %4, align 8
  %39 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %49

43:                                               ; preds = %26
  %44 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %4, align 8
  %45 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %37
  br label %74

50:                                               ; preds = %15
  %51 = load %struct.diag204_x_phys_block*, %struct.diag204_x_phys_block** %5, align 8
  %52 = getelementptr inbounds %struct.diag204_x_phys_block, %struct.diag204_x_phys_block* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DED_WEIGHT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %4, align 8
  %63 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %73

67:                                               ; preds = %50
  %68 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %4, align 8
  %69 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %15, %73, %49
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %8

78:                                               ; preds = %8
  %79 = load i32, i32* @MAC_CNT_VLD, align 4
  %80 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %4, align 8
  %81 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  ret void
}

declare dso_local i32 @cpu_id(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
