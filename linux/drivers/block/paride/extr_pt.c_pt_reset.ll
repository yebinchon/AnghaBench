; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32, %struct.pi_adapter* }
%struct.pi_adapter = type { i32 }

@__const.pt_reset.expect = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 1, i32 20, i32 235], align 16
@HZ = common dso_local global i32 0, align 4
@PT_RESET_TMO = common dso_local global i32 0, align 4
@STAT_BUSY = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Reset (%d) signature = \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%3x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" (incorrect)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_unit*)* @pt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_reset(%struct.pt_unit* %0) #0 {
  %2 = alloca %struct.pt_unit*, align 8
  %3 = alloca %struct.pi_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.pt_unit* %0, %struct.pt_unit** %2, align 8
  %8 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %9 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %8, i32 0, i32 1
  %10 = load %struct.pi_adapter*, %struct.pi_adapter** %9, align 8
  store %struct.pi_adapter* %10, %struct.pi_adapter** %3, align 8
  %11 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([5 x i32]* @__const.pt_reset.expect to i8*), i64 20, i1 false)
  %12 = load %struct.pi_adapter*, %struct.pi_adapter** %3, align 8
  %13 = call i32 @pi_connect(%struct.pi_adapter* %12)
  %14 = load %struct.pi_adapter*, %struct.pi_adapter** %3, align 8
  %15 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %16 = call i32 @DRIVE(%struct.pt_unit* %15)
  %17 = call i32 @write_reg(%struct.pi_adapter* %14, i32 6, i32 %16)
  %18 = load %struct.pi_adapter*, %struct.pi_adapter** %3, align 8
  %19 = call i32 @write_reg(%struct.pi_adapter* %18, i32 7, i32 8)
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 20, %20
  %22 = sdiv i32 %21, 1000
  %23 = call i32 @pt_sleep(i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %37, %1
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @PT_RESET_TMO, align 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.pi_adapter*, %struct.pi_adapter** %3, align 8
  %31 = call i32 @status_reg(%struct.pi_adapter* %30)
  %32 = load i32, i32* @STAT_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i1 [ false, %24 ], [ %34, %29 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load i32, i32* @HZ, align 4
  %39 = sdiv i32 %38, 10
  %40 = call i32 @pt_sleep(i32 %39)
  br label %24

41:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.pi_adapter*, %struct.pi_adapter** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @read_reg(%struct.pi_adapter* %46, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %49, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load i64, i64* @verbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %66 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %79, %64
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 5
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.pi_adapter*, %struct.pi_adapter** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @read_reg(%struct.pi_adapter* %74, i32 %76)
  %78 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %70

82:                                               ; preds = %70
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %61
  %90 = load %struct.pi_adapter*, %struct.pi_adapter** %3, align 8
  %91 = call i32 @pi_disconnect(%struct.pi_adapter* %90)
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pi_connect(%struct.pi_adapter*) #2

declare dso_local i32 @write_reg(%struct.pi_adapter*, i32, i32) #2

declare dso_local i32 @DRIVE(%struct.pt_unit*) #2

declare dso_local i32 @pt_sleep(i32) #2

declare dso_local i32 @status_reg(%struct.pi_adapter*) #2

declare dso_local i32 @read_reg(%struct.pi_adapter*, i32) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @pi_disconnect(%struct.pi_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
