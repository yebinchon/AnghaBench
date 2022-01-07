; ModuleID = '/home/carl/AnghaBench/i3/src/extr_workspace.c_workspace_back_and_forth_get.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_workspace.c_workspace_back_and_forth_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@previous_workspace_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No previous workspace name set.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @workspace_back_and_forth_get() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @previous_workspace_name, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @DLOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @previous_workspace_name, align 4
  %9 = call i32* @workspace_get(i32 %8, i32* null)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  store i32* %10, i32** %1, align 8
  br label %11

11:                                               ; preds = %7, %5
  %12 = load i32*, i32** %1, align 8
  ret i32* %12
}

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32* @workspace_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
