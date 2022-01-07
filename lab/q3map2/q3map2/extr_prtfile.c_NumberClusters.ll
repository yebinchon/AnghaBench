; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_prtfile.c_NumberClusters.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_prtfile.c_NumberClusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@num_visclusters = common dso_local global i64 0, align 8
@num_visportals = common dso_local global i64 0, align 8
@num_solidfaces = common dso_local global i64 0, align 8
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"--- NumberClusters ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%9d visclusters\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%9d visportals\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%9d solidfaces\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NumberClusters(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* @num_visclusters, align 8
  store i64 0, i64* @num_visportals, align 8
  store i64 0, i64* @num_solidfaces, align 8
  %3 = load i32, i32* @SYS_VRB, align 4
  %4 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @NumberLeafs_r(i32 %7)
  %9 = load i32, i32* @SYS_VRB, align 4
  %10 = load i64, i64* @num_visclusters, align 8
  %11 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @SYS_VRB, align 4
  %13 = load i64, i64* @num_visportals, align 8
  %14 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @SYS_VRB, align 4
  %16 = load i64, i64* @num_solidfaces, align 8
  %17 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %16)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @NumberLeafs_r(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
