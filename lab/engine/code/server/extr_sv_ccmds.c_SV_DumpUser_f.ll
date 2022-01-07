; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_DumpUser_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_DumpUser_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@com_sv_running = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Usage: dumpuser <userid>\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"userinfo\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"--------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_DumpUser_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_DumpUser_f() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_sv_running, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %25

8:                                                ; preds = %0
  %9 = call i32 (...) @Cmd_Argc()
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %25

13:                                               ; preds = %8
  %14 = call %struct.TYPE_4__* (...) @SV_GetPlayerByHandle()
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %1, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %25

18:                                               ; preds = %13
  %19 = call i32 @Com_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @Com_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Info_Print(i32 %23)
  br label %25

25:                                               ; preds = %18, %17, %11, %6
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local %struct.TYPE_4__* @SV_GetPlayerByHandle(...) #1

declare dso_local i32 @Info_Print(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
