; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_external_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_external_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@external_diff.external_diff_cmd = internal global i8* null, align 8
@external_diff.done_preparing = internal global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GIT_EXTERNAL_DIFF\00", align 1
@external_diff_cmd_cfg = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @external_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @external_diff() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @external_diff.done_preparing, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i8*, i8** @external_diff.external_diff_cmd, align 8
  store i8* %5, i8** %1, align 8
  br label %15

6:                                                ; preds = %0
  %7 = call i32 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = call i8* @xstrdup_or_null(i32 %7)
  store i8* %8, i8** @external_diff.external_diff_cmd, align 8
  %9 = load i8*, i8** @external_diff.external_diff_cmd, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load i8*, i8** @external_diff_cmd_cfg, align 8
  store i8* %12, i8** @external_diff.external_diff_cmd, align 8
  br label %13

13:                                               ; preds = %11, %6
  store i32 1, i32* @external_diff.done_preparing, align 4
  %14 = load i8*, i8** @external_diff.external_diff_cmd, align 8
  store i8* %14, i8** %1, align 8
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i8*, i8** %1, align 8
  ret i8* %16
}

declare dso_local i8* @xstrdup_or_null(i32) #1

declare dso_local i32 @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
