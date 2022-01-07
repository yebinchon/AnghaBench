; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_apply_window_in_core.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_apply_window_in_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"invalid delta: does not copy all inline data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*)* @apply_window_in_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_window_in_core(%struct.window* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.window* %0, %struct.window** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.window*, %struct.window** %3, align 8
  %7 = getelementptr inbounds %struct.window, %struct.window* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.window*, %struct.window** %3, align 8
  %13 = getelementptr inbounds %struct.window, %struct.window* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.window*, %struct.window** %3, align 8
  %17 = getelementptr inbounds %struct.window, %struct.window* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  %22 = icmp ne i8* %11, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %10
  %24 = load %struct.window*, %struct.window** %3, align 8
  %25 = call i64 @execute_one_instruction(%struct.window* %24, i8** %4, i64* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %39

28:                                               ; preds = %23
  br label %10

29:                                               ; preds = %10
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.window*, %struct.window** %3, align 8
  %32 = getelementptr inbounds %struct.window, %struct.window* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %27
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @execute_one_instruction(%struct.window*, i8**, i64*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
