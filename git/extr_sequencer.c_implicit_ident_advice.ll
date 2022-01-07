; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_implicit_ident_advice.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_implicit_ident_advice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"~/.gitconfig\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@implicit_ident_advice_config = common dso_local global i32 0, align 4
@implicit_ident_advice_noconfig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @implicit_ident_advice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @implicit_ident_advice() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i8* @expand_user_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %5, i8** %2, align 8
  %6 = call i8* @xdg_config_home(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @file_exists(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @file_exists(i8* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %10, %0
  %15 = phi i1 [ true, %0 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @implicit_ident_advice_config, align 4
  %25 = call i8* @_(i32 %24)
  store i8* %25, i8** %1, align 8
  br label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @implicit_ident_advice_noconfig, align 4
  %28 = call i8* @_(i32 %27)
  store i8* %28, i8** %1, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** %1, align 8
  ret i8* %30
}

declare dso_local i8* @expand_user_path(i8*, i32) #1

declare dso_local i8* @xdg_config_home(i8*) #1

declare dso_local i64 @file_exists(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
