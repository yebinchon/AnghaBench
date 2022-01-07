; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_next_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_next_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { %struct.grep_pat* }
%struct.grep_pat = type { i32, %struct.grep_pat* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, i8*, i8*, i32, %struct.TYPE_4__*, i32)* @next_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_match(%struct.grep_opt* %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_4__* %4, i32 %5) #0 {
  %7 = alloca %struct.grep_opt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.grep_pat*, align 8
  %14 = alloca i32, align 4
  store %struct.grep_opt* %0, %struct.grep_opt** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %6
  %23 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %24 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %23, i32 0, i32 0
  %25 = load %struct.grep_pat*, %struct.grep_pat** %24, align 8
  store %struct.grep_pat* %25, %struct.grep_pat** %13, align 8
  br label %26

26:                                               ; preds = %45, %22
  %27 = load %struct.grep_pat*, %struct.grep_pat** %13, align 8
  %28 = icmp ne %struct.grep_pat* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load %struct.grep_pat*, %struct.grep_pat** %13, align 8
  %31 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %43 [
    i32 130, label %33
    i32 128, label %33
    i32 129, label %33
  ]

33:                                               ; preds = %29, %29, %29
  %34 = load %struct.grep_pat*, %struct.grep_pat** %13, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @match_next_pattern(%struct.grep_pat* %34, i8* %35, i8* %36, i32 %37, %struct.TYPE_4__* %38, i32 %39)
  %41 = load i32, i32* %14, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %14, align 4
  br label %44

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.grep_pat*, %struct.grep_pat** %13, align 8
  %47 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %46, i32 0, i32 1
  %48 = load %struct.grep_pat*, %struct.grep_pat** %47, align 8
  store %struct.grep_pat* %48, %struct.grep_pat** %13, align 8
  br label %26

49:                                               ; preds = %26
  br label %50

50:                                               ; preds = %49, %6
  %51 = load i32, i32* %14, align 4
  ret i32 %51
}

declare dso_local i32 @match_next_pattern(%struct.grep_pat*, i8*, i8*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
