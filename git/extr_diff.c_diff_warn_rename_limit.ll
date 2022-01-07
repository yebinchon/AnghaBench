; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_warn_rename_limit.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_warn_rename_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@degrade_cc_to_c_warning = common dso_local global i32 0, align 4
@rename_limit_warning = common dso_local global i32 0, align 4
@rename_limit_advice = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_warn_rename_limit(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 @fflush(i32 %7)
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @degrade_cc_to_c_warning, align 4
  %13 = call i32 @_(i32 %12)
  %14 = call i32 (i32, ...) @warning(i32 %13)
  br label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @rename_limit_warning, align 4
  %20 = call i32 @_(i32 %19)
  %21 = call i32 (i32, ...) @warning(i32 %20)
  br label %23

22:                                               ; preds = %15
  br label %33

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 0, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @rename_limit_advice, align 4
  %29 = call i32 @_(i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32, ...) @warning(i32 %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %27, %24
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @warning(i32, ...) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
