; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_commons.c_verify_panels.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_commons.c_verify_panels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%v\00", align 1
@TOTAL_MODULES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"VIRTUAL_HOSTS\00", align 1
@VIRTUAL_HOSTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"REMOTE_USER\00", align 1
@REMOTE_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_panels() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %40

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 4
  %8 = call i32 @strstr(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @TOTAL_MODULES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i64 @str_inarray(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @VIRTUAL_HOSTS, align 4
  %21 = call i32 @remove_module(i32 %20)
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %22, %10, %6
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 4
  %25 = call i32 @strstr(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @TOTAL_MODULES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @str_inarray(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @REMOTE_USER, align 4
  %38 = call i32 @remove_module(i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %5, %39, %27, %23
  ret void
}

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i64 @str_inarray(i8*, i32, i32) #1

declare dso_local i32 @remove_module(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
