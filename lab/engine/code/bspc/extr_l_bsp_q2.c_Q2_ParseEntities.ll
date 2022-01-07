; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_Q2_ParseEntities.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_Q2_ParseEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_entities = common dso_local global i64 0, align 8
@dentdata = common dso_local global i32 0, align 4
@entdatasize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"*Quake2 bsp file\00", align 1
@SCFL_NOSTRINGWHITESPACES = common dso_local global i32 0, align 4
@SCFL_NOSTRINGESCAPECHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_ParseEntities() #0 {
  %1 = alloca i32*, align 8
  store i64 0, i64* @num_entities, align 8
  %2 = load i32, i32* @dentdata, align 4
  %3 = load i32, i32* @entdatasize, align 4
  %4 = call i32* @LoadScriptMemory(i32 %2, i32 %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = load i32, i32* @SCFL_NOSTRINGWHITESPACES, align 4
  %7 = load i32, i32* @SCFL_NOSTRINGESCAPECHARS, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @SetScriptFlags(i32* %5, i32 %8)
  br label %10

10:                                               ; preds = %14, %0
  %11 = load i32*, i32** %1, align 8
  %12 = call i64 @ParseEntity(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %10

15:                                               ; preds = %10
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @FreeScript(i32* %16)
  ret void
}

declare dso_local i32* @LoadScriptMemory(i32, i32, i8*) #1

declare dso_local i32 @SetScriptFlags(i32*, i32) #1

declare dso_local i64 @ParseEntity(i32*) #1

declare dso_local i32 @FreeScript(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
