; ModuleID = '/home/carl/AnghaBench/i3/src/extr_commands.c_maybe_auto_back_and_forth_workspace.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_commands.c_maybe_auto_back_and_forth_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@focused = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Substituting workspace with back_and_forth, as it is focused.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @maybe_auto_back_and_forth_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_auto_back_and_forth_workspace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  store i32* %9, i32** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @focused, align 4
  %12 = call i32* @con_get_workspace(i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = call i32* (...) @workspace_back_and_forth_get()
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @DLOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %2, align 8
  br label %26

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32*, i32** %3, align 8
  store i32* %25, i32** %2, align 8
  br label %26

26:                                               ; preds = %24, %20, %8
  %27 = load i32*, i32** %2, align 8
  ret i32* %27
}

declare dso_local i32* @con_get_workspace(i32) #1

declare dso_local i32* @workspace_back_and_forth_get(...) #1

declare dso_local i32 @DLOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
