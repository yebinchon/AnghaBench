; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_main.c_S_Shutdown.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_main.c_S_Shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)* }

@si = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"music\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"stopmusic\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"s_list\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"s_stop\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"s_info\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Shutdown() #0 {
  %1 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @si, i32 0, i32 0), align 8
  %2 = icmp ne i32 (...)* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @si, i32 0, i32 0), align 8
  %5 = call i32 (...) %4()
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 @Com_Memset(%struct.TYPE_3__* @si, i32 0, i32 4)
  %8 = call i32 @Cmd_RemoveCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @Cmd_RemoveCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @Cmd_RemoveCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @Cmd_RemoveCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @Cmd_RemoveCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32 @Cmd_RemoveCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %14 = call i32 (...) @S_CodecShutdown()
  ret void
}

declare dso_local i32 @Com_Memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @Cmd_RemoveCommand(i8*) #1

declare dso_local i32 @S_CodecShutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
