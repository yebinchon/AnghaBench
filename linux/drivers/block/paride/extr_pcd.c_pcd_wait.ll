; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32 }

@PCD_SPIN = common dso_local global i32 0, align 4
@PCD_DELAY = common dso_local global i32 0, align 4
@IDE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: %s %s: alt=0x%x stat=0x%x err=0x%x loop=%d phase=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcd_unit*, i32, i32, i8*, i8*)* @pcd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_wait(%struct.pcd_unit* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcd_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pcd_unit* %0, %struct.pcd_unit** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %38, %5
  %18 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %19 = call i32 @status_reg(%struct.pcd_unit* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @PCD_SPIN, align 4
  %35 = icmp slt i32 %32, %34
  br label %36

36:                                               ; preds = %31, %26, %23
  %37 = phi i1 [ false, %26 ], [ false, %23 ], [ %35, %31 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, i32* @PCD_DELAY, align 4
  %40 = call i32 @udelay(i32 %39)
  br label %17

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @IDE_ERR, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @PCD_SPIN, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48, %41
  %53 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %54 = call i32 @read_reg(%struct.pcd_unit* %53, i32 7)
  store i32 %54, i32* %15, align 4
  %55 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %56 = call i32 @read_reg(%struct.pcd_unit* %55, i32 1)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %58 = call i32 @read_reg(%struct.pcd_unit* %57, i32 2)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @PCD_SPIN, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = or i32 %63, 256
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %70 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %71, i8* %72, i8* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %68, %65
  %81 = load i32, i32* %15, align 4
  %82 = shl i32 %81, 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %6, align 4
  br label %86

85:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @status_reg(%struct.pcd_unit*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_reg(%struct.pcd_unit*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
