; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.pd_unit* }
%struct.pd_unit = type { i32 }

@pd_identify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @pd_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_revalidate(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.pd_unit*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i32 0, i32 0
  %6 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  store %struct.pd_unit* %6, %struct.pd_unit** %3, align 8
  %7 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %8 = load i32, i32* @pd_identify, align 4
  %9 = call i64 @pd_special_command(%struct.pd_unit* %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %13 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %14 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @set_capacity(%struct.gendisk* %12, i32 %15)
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %19 = call i32 @set_capacity(%struct.gendisk* %18, i32 0)
  br label %20

20:                                               ; preds = %17, %11
  ret i32 0
}

declare dso_local i64 @pd_special_command(%struct.pd_unit*, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
