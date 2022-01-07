; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_parse_update_recurse.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_parse_update_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RECURSE_SUBMODULES_ON = common dso_local global i32 0, align 4
@RECURSE_SUBMODULES_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bad %s argument: %s\00", align 1
@RECURSE_SUBMODULES_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @parse_update_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_update_recurse(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @git_parse_maybe_bool(i8* %8)
  switch i32 %9, label %14 [
    i32 1, label %10
    i32 0, label %12
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @RECURSE_SUBMODULES_ON, align 4
  store i32 %11, i32* %4, align 4
  br label %23

12:                                               ; preds = %3
  %13 = load i32, i32* @RECURSE_SUBMODULES_OFF, align 4
  store i32 %13, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* @RECURSE_SUBMODULES_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %12, %10
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @die(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
