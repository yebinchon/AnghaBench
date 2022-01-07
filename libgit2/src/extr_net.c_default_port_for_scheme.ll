; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_net.c_default_port_for_scheme.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_net.c_default_port_for_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@DEFAULT_PORT_HTTP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@DEFAULT_PORT_HTTPS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@DEFAULT_PORT_GIT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@DEFAULT_PORT_SSH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @default_port_for_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @default_port_for_scheme(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8*, i8** @DEFAULT_PORT_HTTP, align 8
  store i8* %8, i8** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i8*, i8** @DEFAULT_PORT_HTTPS, align 8
  store i8* %14, i8** %2, align 8
  br label %31

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8*, i8** @DEFAULT_PORT_GIT, align 8
  store i8* %20, i8** %2, align 8
  br label %31

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** @DEFAULT_PORT_SSH, align 8
  store i8* %26, i8** %2, align 8
  br label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  store i8* null, i8** %2, align 8
  br label %31

31:                                               ; preds = %30, %25, %19, %13, %7
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
