; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_show_funcname_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_show_funcname_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32 }
%struct.grep_source = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_opt*, %struct.grep_source*, i8*, i32)* @show_funcname_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_funcname_line(%struct.grep_opt* %0, %struct.grep_source* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.grep_opt*, align 8
  %6 = alloca %struct.grep_source*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %5, align 8
  store %struct.grep_source* %1, %struct.grep_source** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %61, %4
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.grep_source*, %struct.grep_source** %6, align 8
  %13 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ugt i8* %11, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %10
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %18, i8** %7, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %33, %16
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.grep_source*, %struct.grep_source** %6, align 8
  %22 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ugt i8* %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ false, %19 ], [ %30, %25 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %7, align 8
  br label %19

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, -1
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %41 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ule i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %62

45:                                               ; preds = %36
  %46 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %47 = load %struct.grep_source*, %struct.grep_source** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @match_funcname(%struct.grep_opt* %46, %struct.grep_source* %47, i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.grep_source*, %struct.grep_source** %6, align 8
  %57 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @show_line(%struct.grep_opt* %53, i8* %54, i8* %55, i32 %58, i32 %59, i32 0, i8 signext 61)
  br label %62

61:                                               ; preds = %45
  br label %10

62:                                               ; preds = %52, %44, %10
  ret void
}

declare dso_local i64 @match_funcname(%struct.grep_opt*, %struct.grep_source*, i8*, i8*) #1

declare dso_local i32 @show_line(%struct.grep_opt*, i8*, i8*, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
