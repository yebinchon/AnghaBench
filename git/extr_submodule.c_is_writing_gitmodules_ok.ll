; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_is_writing_gitmodules_ok.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_is_writing_gitmodules_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@GITMODULES_FILE = common dso_local global i32 0, align 4
@GITMODULES_INDEX = common dso_local global i32 0, align 4
@GITMODULES_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_writing_gitmodules_ok() #0 {
  %1 = alloca %struct.object_id, align 4
  %2 = load i32, i32* @GITMODULES_FILE, align 4
  %3 = call i64 @file_exists(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @GITMODULES_INDEX, align 4
  %7 = call i64 @get_oid(i32 %6, %struct.object_id* %1)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* @GITMODULES_HEAD, align 4
  %11 = call i64 @get_oid(i32 %10, %struct.object_id* %1)
  %12 = icmp slt i64 %11, 0
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br label %15

15:                                               ; preds = %13, %0
  %16 = phi i1 [ true, %0 ], [ %14, %13 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @file_exists(i32) #1

declare dso_local i64 @get_oid(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
