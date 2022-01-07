; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32, i32, i32 }

@__const.pcd_reset.expect = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 1, i32 20, i32 235], align 16
@HZ = common dso_local global i32 0, align 4
@PCD_RESET_TMO = common dso_local global i32 0, align 4
@IDE_BUSY = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Reset (%d) signature = \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%3x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" (incorrect)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcd_unit*)* @pcd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_reset(%struct.pcd_unit* %0) #0 {
  %2 = alloca %struct.pcd_unit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  store %struct.pcd_unit* %0, %struct.pcd_unit** %2, align 8
  %7 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([5 x i32]* @__const.pcd_reset.expect to i8*), i64 20, i1 false)
  %8 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %9 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pi_connect(i32 %10)
  %12 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %13 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %14 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 16, %15
  %17 = add nsw i32 160, %16
  %18 = call i32 @write_reg(%struct.pcd_unit* %12, i32 6, i32 %17)
  %19 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %20 = call i32 @write_reg(%struct.pcd_unit* %19, i32 7, i32 8)
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 20, %21
  %23 = sdiv i32 %22, 1000
  %24 = call i32 @pcd_sleep(i32 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %38, %1
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @PCD_RESET_TMO, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %32 = call i32 @status_reg(%struct.pcd_unit* %31)
  %33 = load i32, i32* @IDE_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load i32, i32* @HZ, align 4
  %40 = sdiv i32 %39, 10
  %41 = call i32 @pcd_sleep(i32 %40)
  br label %25

42:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 5
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @read_reg(%struct.pcd_unit* %47, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %50, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load i64, i64* @verbose, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %67 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %80, %65
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 5
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @read_reg(%struct.pcd_unit* %75, i32 %77)
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %71

83:                                               ; preds = %71
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %62
  %91 = load %struct.pcd_unit*, %struct.pcd_unit** %2, align 8
  %92 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pi_disconnect(i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 1
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pi_connect(i32) #2

declare dso_local i32 @write_reg(%struct.pcd_unit*, i32, i32) #2

declare dso_local i32 @pcd_sleep(i32) #2

declare dso_local i32 @status_reg(%struct.pcd_unit*) #2

declare dso_local i32 @read_reg(%struct.pcd_unit*, i32) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @pi_disconnect(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
