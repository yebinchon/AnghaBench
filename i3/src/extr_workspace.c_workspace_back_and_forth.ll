; ModuleID = '/home/carl/AnghaBench/i3/src/extr_workspace.c_workspace_back_and_forth.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_workspace.c_workspace_back_and_forth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@previous_workspace_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"No previous workspace name set. Not switching.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_back_and_forth() #0 {
  %1 = load i32, i32* @previous_workspace_name, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 @DLOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @previous_workspace_name, align 4
  %7 = call i32 @workspace_show_by_name(i32 %6)
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @workspace_show_by_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
