; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_expand_notes_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_expand_notes_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"refs/notes/\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"notes/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_notes_ref(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %3 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %4 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @starts_with(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @starts_with(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %17 = call i32 @strbuf_insert(%struct.strbuf* %16, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  br label %21

18:                                               ; preds = %9
  %19 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %20 = call i32 @strbuf_insert(%struct.strbuf* %19, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %8, %21
  ret void
}

declare dso_local i64 @starts_with(i32, i8*) #1

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
