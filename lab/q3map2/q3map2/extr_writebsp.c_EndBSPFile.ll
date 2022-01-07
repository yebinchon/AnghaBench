; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EndBSPFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EndBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"--- EndBSPFile ---\0A\00", align 1
@numEntities = common dso_local global i32 0, align 4
@numBSPEntities = common dso_local global i32 0, align 4
@source = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.bsp\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Writing %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EndBSPFile() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = load i32, i32* @SYS_VRB, align 4
  %3 = call i32 @Sys_FPrintf(i32 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @EmitPlanes()
  %5 = load i32, i32* @numEntities, align 4
  store i32 %5, i32* @numBSPEntities, align 4
  %6 = call i32 (...) @UnparseEntities()
  %7 = load i8*, i8** @source, align 8
  %8 = call i32 @WriteSurfaceExtraFile(i8* %7)
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = load i8*, i8** @source, align 8
  %11 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %13 = call i32 @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %15 = call i32 @WriteBSPFile(i8* %14)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32 @EmitPlanes(...) #1

declare dso_local i32 @UnparseEntities(...) #1

declare dso_local i32 @WriteSurfaceExtraFile(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @Sys_Printf(i8*, i8*) #1

declare dso_local i32 @WriteBSPFile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
