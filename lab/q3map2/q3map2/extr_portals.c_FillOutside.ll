; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_portals.c_FillOutside.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_portals.c_FillOutside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_outside = common dso_local global i64 0, align 8
@c_inside = common dso_local global i64 0, align 8
@c_solid = common dso_local global i64 0, align 8
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"--- FillOutside ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%9d solid leafs\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%9d leafs filled\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%9d inside leafs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FillOutside(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* @c_outside, align 8
  store i64 0, i64* @c_inside, align 8
  store i64 0, i64* @c_solid, align 8
  %3 = load i32, i32* @SYS_VRB, align 4
  %4 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @FillOutside_r(i32* %5)
  %7 = load i32, i32* @SYS_VRB, align 4
  %8 = load i64, i64* @c_solid, align 8
  %9 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* @c_outside, align 8
  %11 = call i32 @Sys_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @SYS_VRB, align 4
  %13 = load i64, i64* @c_inside, align 8
  %14 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %13)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @FillOutside_r(i32*) #1

declare dso_local i32 @Sys_Printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
