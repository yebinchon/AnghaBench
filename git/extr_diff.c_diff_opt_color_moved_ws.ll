; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_color_moved_ws.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_color_moved_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.diff_options* }
%struct.diff_options = type { i32 }

@COLOR_MOVED_WS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid mode '%s' in --color-moved-ws\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_color_moved_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_color_moved_ws(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.option*, %struct.option** %5, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  %12 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  store %struct.diff_options* %12, %struct.diff_options** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %17 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @parse_color_moved_ws(i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @COLOR_MOVED_WS_ERROR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @error(i32 %26, i8* %27)
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %32 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %25, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @parse_color_moved_ws(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
