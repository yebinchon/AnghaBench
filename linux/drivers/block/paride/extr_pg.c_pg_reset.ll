; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i32, i32 }

@__const.pg_reset.expect = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 1, i32 20, i32 235], align 16
@HZ = common dso_local global i32 0, align 4
@PG_RESET_TMO = common dso_local global i32 0, align 4
@STAT_BUSY = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Reset (%d) signature = \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%3x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" (incorrect)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pg*)* @pg_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_reset(%struct.pg* %0) #0 {
  %2 = alloca %struct.pg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i32], align 16
  store %struct.pg* %0, %struct.pg** %2, align 8
  %8 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([5 x i32]* @__const.pg_reset.expect to i8*), i64 20, i1 false)
  %9 = load %struct.pg*, %struct.pg** %2, align 8
  %10 = getelementptr inbounds %struct.pg, %struct.pg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pi_connect(i32 %11)
  %13 = load %struct.pg*, %struct.pg** %2, align 8
  %14 = load %struct.pg*, %struct.pg** %2, align 8
  %15 = call i32 @DRIVE(%struct.pg* %14)
  %16 = call i32 @write_reg(%struct.pg* %13, i32 6, i32 %15)
  %17 = load %struct.pg*, %struct.pg** %2, align 8
  %18 = call i32 @write_reg(%struct.pg* %17, i32 7, i32 8)
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 20, %19
  %21 = sdiv i32 %20, 1000
  %22 = call i32 @pg_sleep(i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %36, %1
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @PG_RESET_TMO, align 4
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.pg*, %struct.pg** %2, align 8
  %30 = call i32 @status_reg(%struct.pg* %29)
  %31 = load i32, i32* @STAT_BUSY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @pg_sleep(i32 1)
  br label %23

38:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %50, %38
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 5
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.pg*, %struct.pg** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @read_reg(%struct.pg* %43, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %39

53:                                               ; preds = %39
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %56 = call i64 @memcmp(i32* %54, i32* %55, i32 20)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 -1, i32 0
  store i32 %59, i32* %5, align 4
  %60 = load i64, i64* @verbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %53
  %63 = load %struct.pg*, %struct.pg** %2, align 8
  %64 = getelementptr inbounds %struct.pg, %struct.pg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %77, %62
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 5
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %68

80:                                               ; preds = %68
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %53
  %88 = load %struct.pg*, %struct.pg** %2, align 8
  %89 = getelementptr inbounds %struct.pg, %struct.pg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pi_disconnect(i32 %90)
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pi_connect(i32) #2

declare dso_local i32 @write_reg(%struct.pg*, i32, i32) #2

declare dso_local i32 @DRIVE(%struct.pg*) #2

declare dso_local i32 @pg_sleep(i32) #2

declare dso_local i32 @status_reg(%struct.pg*) #2

declare dso_local i32 @read_reg(%struct.pg*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @pi_disconnect(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
