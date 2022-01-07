; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_macio_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_macio_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_chip = type { i32, %struct.device_node* }
%struct.device_node = type { %struct.device_node* }

@MAX_MACIO_CHIPS = common dso_local global i32 0, align 4
@macio_chips = common dso_local global %struct.macio_chip* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.macio_chip* @macio_find(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.macio_chip*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %55, %2
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %59

10:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %52, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX_MACIO_CHIPS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.macio_chip*, %struct.macio_chip** @macio_chips, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %16, i64 %18
  %20 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %19, i32 0, i32 1
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi i1 [ false, %11 ], [ %22, %15 ]
  br i1 %24, label %25, label %55

25:                                               ; preds = %23
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = load %struct.macio_chip*, %struct.macio_chip** @macio_chips, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %27, i64 %29
  %31 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %30, i32 0, i32 1
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  %33 = icmp eq %struct.device_node* %26, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.macio_chip*, %struct.macio_chip** @macio_chips, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %38, i64 %40
  %42 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37, %34
  %47 = load %struct.macio_chip*, %struct.macio_chip** @macio_chips, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %47, i64 %49
  store %struct.macio_chip* %50, %struct.macio_chip** %3, align 8
  br label %60

51:                                               ; preds = %37, %25
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %11

55:                                               ; preds = %23
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = getelementptr inbounds %struct.device_node, %struct.device_node* %56, i32 0, i32 0
  %58 = load %struct.device_node*, %struct.device_node** %57, align 8
  store %struct.device_node* %58, %struct.device_node** %4, align 8
  br label %7

59:                                               ; preds = %7
  store %struct.macio_chip* null, %struct.macio_chip** %3, align 8
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.macio_chip*, %struct.macio_chip** %3, align 8
  ret %struct.macio_chip* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
