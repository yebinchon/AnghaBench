; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_append_cut_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_append_cut_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"Do not modify or remove the line above.\0AEverything below it will be ignored.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cut_line = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wt_status_append_cut_line(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %4 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %6 = load i32, i32* @cut_line, align 4
  %7 = call i32 @strbuf_commented_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %8, i8* %9, i32 %11)
  ret void
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strbuf_commented_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_add_commented_lines(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
