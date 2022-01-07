; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_output_eol.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_output_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOL_UNSET = common dso_local global i32 0, align 4
@EOL_CRLF = common dso_local global i32 0, align 4
@EOL_LF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"illegal crlf_action %d\00", align 1
@core_eol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @output_eol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_eol(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %24 [
    i32 132, label %5
    i32 130, label %7
    i32 129, label %9
    i32 128, label %11
    i32 134, label %11
    i32 133, label %13
    i32 131, label %15
    i32 135, label %15
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EOL_UNSET, align 4
  store i32 %6, i32* %2, align 4
  br label %29

7:                                                ; preds = %1
  %8 = load i32, i32* @EOL_CRLF, align 4
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32, i32* @EOL_LF, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @EOL_CRLF, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @EOL_LF, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1, %1
  %16 = call i32 (...) @text_eol_is_crlf()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @EOL_CRLF, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EOL_LF, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @warning(i32 %25, i32 %26)
  %28 = load i32, i32* @core_eol, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %22, %13, %11, %9, %7, %5
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @text_eol_is_crlf(...) #1

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
