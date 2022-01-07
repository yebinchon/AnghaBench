; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_try_exit.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_try_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QQSTRING_INTERP_END = common dso_local global i32 0, align 4
@INVALID_CHARACTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @try_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_exit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %8, align 1
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %16 [
    i32 129, label %11
    i32 130, label %12
    i32 131, label %13
    i32 128, label %14
  ]

11:                                               ; preds = %3
  store i32 41, i32* %9, align 4
  store i8 41, i8* %8, align 1
  br label %18

12:                                               ; preds = %3
  store i32 93, i32* %9, align 4
  store i8 93, i8* %8, align 1
  br label %18

13:                                               ; preds = %3
  store i32 125, i32* %9, align 4
  store i8 125, i8* %8, align 1
  br label %18

14:                                               ; preds = %3
  store i8 41, i8* %8, align 1
  %15 = load i32, i32* @QQSTRING_INTERP_END, align 4
  store i32 %15, i32* %9, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @INVALID_CHARACTER, align 4
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %14, %13, %12, %11
  %19 = load i8, i8* %8, align 1
  %20 = call i32 @assert(i8 signext %19)
  %21 = load i8, i8* %8, align 1
  %22 = sext i8 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @yy_pop_state(i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @INVALID_CHARACTER, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %25, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i8 signext) #1

declare dso_local i32 @yy_pop_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
