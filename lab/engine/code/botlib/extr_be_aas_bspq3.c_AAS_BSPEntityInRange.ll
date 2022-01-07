; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_bspq3.c_AAS_BSPEntityInRange.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_bspq3.c_AAS_BSPEntityInRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i8*)* }

@bspworld = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@botimport = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bsp entity out of range\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_BSPEntityInRange(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bspworld, i32 0, i32 0), align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6, %1
  %11 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @botimport, i32 0, i32 0), align 8
  %12 = load i32, i32* @PRT_MESSAGE, align 4
  %13 = call i32 %11(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %6
  %16 = load i32, i32* @qtrue, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
