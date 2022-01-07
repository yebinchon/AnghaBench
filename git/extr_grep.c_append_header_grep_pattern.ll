; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_append_header_grep_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_append_header_grep_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i32 }
%struct.grep_pat = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"header\00", align 1
@GREP_PATTERN_HEAD = common dso_local global i32 0, align 4
@GREP_HEADER_REFLOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_header_grep_pattern(%struct.grep_opt* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.grep_opt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.grep_pat*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = load i32, i32* @GREP_PATTERN_HEAD, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.grep_pat* @create_grep_pat(i8* %8, i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %11, i32 %12)
  store %struct.grep_pat* %13, %struct.grep_pat** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GREP_HEADER_REFLOG, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %19 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %22 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %21, i32 0, i32 1
  %23 = load %struct.grep_pat*, %struct.grep_pat** %7, align 8
  %24 = call i32 @do_append_grep_pat(i32* %22, %struct.grep_pat* %23)
  ret void
}

declare dso_local %struct.grep_pat* @create_grep_pat(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_append_grep_pat(i32*, %struct.grep_pat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
