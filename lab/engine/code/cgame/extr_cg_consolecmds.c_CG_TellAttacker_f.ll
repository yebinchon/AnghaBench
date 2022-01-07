; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_consolecmds.c_CG_TellAttacker_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_consolecmds.c_CG_TellAttacker_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"tell %i %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_TellAttacker_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_TellAttacker_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca [128 x i8], align 16
  %4 = call i32 (...) @CG_LastAttacker()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %17

8:                                                ; preds = %0
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %10 = call i32 @trap_Args(i8* %9, i32 128)
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %12 = load i32, i32* %1, align 4
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %14 = call i32 @Com_sprintf(i8* %11, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %16 = call i32 @trap_SendClientCommand(i8* %15)
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @CG_LastAttacker(...) #1

declare dso_local i32 @trap_Args(i8*, i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @trap_SendClientCommand(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
