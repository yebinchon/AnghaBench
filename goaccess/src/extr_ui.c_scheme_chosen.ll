; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_scheme_chosen.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_scheme_chosen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@STD_GREEN = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Monochrome\00", align 1
@MONOCHROME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Monokai\00", align 1
@MONOKAI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Custom Scheme\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scheme_chosen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scheme_chosen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @free_color_lists()
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @STD_GREEN, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  store i32 1, i32* %3, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @MONOCHROME, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  store i32 1, i32* %3, align 4
  br label %29

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @MONOKAI, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  store i32 1, i32* %3, align 4
  br label %28

22:                                               ; preds = %16
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %14
  br label %30

30:                                               ; preds = %29, %8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @init_colors(i32 %31)
  ret void
}

declare dso_local i32 @free_color_lists(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @init_colors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
