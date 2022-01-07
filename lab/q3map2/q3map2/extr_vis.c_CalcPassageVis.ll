; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_CalcPassageVis.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_CalcPassageVis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"\0A--- CreatePassages (%d) ---\0A\00", align 1
@numportals = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@CreatePassages = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\0A--- PassageFlow (%d) ---\0A\00", align 1
@PassageFlow = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalcPassageVis() #0 {
  %1 = call i32 (...) @PassageMemory()
  %2 = load i32, i32* @numportals, align 4
  %3 = mul nsw i32 %2, 2
  %4 = call i32 @Sys_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @numportals, align 4
  %6 = mul nsw i32 %5, 2
  %7 = load i32, i32* @qtrue, align 4
  %8 = load i32, i32* @CreatePassages, align 4
  %9 = call i32 @RunThreadsOnIndividual(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @numportals, align 4
  %11 = mul nsw i32 %10, 2
  %12 = call i32 @Sys_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @numportals, align 4
  %14 = mul nsw i32 %13, 2
  %15 = load i32, i32* @qtrue, align 4
  %16 = load i32, i32* @PassageFlow, align 4
  %17 = call i32 @RunThreadsOnIndividual(i32 %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @PassageMemory(...) #1

declare dso_local i32 @Sys_Printf(i8*, i32) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
