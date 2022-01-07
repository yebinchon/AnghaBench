; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_show_commit_msg.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_show_commit_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32 }
%struct.strbuf = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @graph_show_commit_msg(%struct.git_graph* %0, i32* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.git_graph*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %8 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %11 = call i32 @graph_show_strbuf(%struct.git_graph* %8, i32* %9, %struct.strbuf* %10)
  %12 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %13 = icmp ne %struct.git_graph* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %54

15:                                               ; preds = %3
  %16 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br label %33

33:                                               ; preds = %20, %15
  %34 = phi i1 [ false, %15 ], [ %32, %20 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %37 = call i32 @graph_is_commit_finished(%struct.git_graph* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @putc(i8 signext 10, i32* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %47 = call i32 @graph_show_remainder(%struct.git_graph* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @putc(i8 signext 10, i32* %51)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %14, %53, %33
  ret void
}

declare dso_local i32 @graph_show_strbuf(%struct.git_graph*, i32*, %struct.strbuf*) #1

declare dso_local i32 @graph_is_commit_finished(%struct.git_graph*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @graph_show_remainder(%struct.git_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
