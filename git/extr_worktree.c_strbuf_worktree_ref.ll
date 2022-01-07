; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_strbuf_worktree_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_strbuf_worktree_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32, i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"main-worktree/\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"worktrees/%s/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_worktree_ref(%struct.worktree* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.worktree*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  store %struct.worktree* %0, %struct.worktree** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @ref_type(i8* %7)
  switch i32 %8, label %34 [
    i32 128, label %9
    i32 129, label %9
    i32 132, label %32
    i32 130, label %32
    i32 131, label %33
  ]

9:                                                ; preds = %3, %3
  %10 = load %struct.worktree*, %struct.worktree** %4, align 8
  %11 = icmp ne %struct.worktree* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.worktree*, %struct.worktree** %4, align 8
  %14 = getelementptr inbounds %struct.worktree, %struct.worktree* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = load %struct.worktree*, %struct.worktree** %4, align 8
  %19 = call i32 @is_main_worktree(%struct.worktree* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %23 = call i32 @strbuf_addstr(%struct.strbuf* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %30

24:                                               ; preds = %17
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = load %struct.worktree*, %struct.worktree** %4, align 8
  %27 = getelementptr inbounds %struct.worktree, %struct.worktree* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strbuf_addf(%struct.strbuf* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %21
  br label %31

31:                                               ; preds = %30, %12, %9
  br label %34

32:                                               ; preds = %3, %3
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %3, %33, %32, %31
  %35 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %35, i8* %36)
  ret void
}

declare dso_local i32 @ref_type(i8*) #1

declare dso_local i32 @is_main_worktree(%struct.worktree*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
