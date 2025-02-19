; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_source.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i32 }
%struct.grep_source = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grep_source(%struct.grep_opt* %0, %struct.grep_source* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grep_opt*, align 8
  %5 = alloca %struct.grep_source*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %4, align 8
  store %struct.grep_source* %1, %struct.grep_source** %5, align 8
  %6 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %7 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %12 = load %struct.grep_source*, %struct.grep_source** %5, align 8
  %13 = call i32 @grep_source_1(%struct.grep_opt* %11, %struct.grep_source* %12, i32 0)
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %16 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clr_hit_marker(i32 %17)
  %19 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %20 = load %struct.grep_source*, %struct.grep_source** %5, align 8
  %21 = call i32 @grep_source_1(%struct.grep_opt* %19, %struct.grep_source* %20, i32 1)
  %22 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %23 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @chk_hit_marker(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %32

28:                                               ; preds = %14
  %29 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %30 = load %struct.grep_source*, %struct.grep_source** %5, align 8
  %31 = call i32 @grep_source_1(%struct.grep_opt* %29, %struct.grep_source* %30, i32 0)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %27, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @grep_source_1(%struct.grep_opt*, %struct.grep_source*, i32) #1

declare dso_local i32 @clr_hit_marker(i32) #1

declare dso_local i32 @chk_hit_marker(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
