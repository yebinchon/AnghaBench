; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_events.c_get_mods_name.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_events.c_get_mods_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_mods_name.name = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c" no mods\00", align 1
@GLFW_MOD_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" shift\00", align 1
@GLFW_MOD_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" control\00", align 1
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" alt\00", align 1
@GLFW_MOD_SUPER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" super\00", align 1
@GLFW_MOD_CAPS_LOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c" capslock-on\00", align 1
@GLFW_MOD_NUM_LOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c" numlock-on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_mods_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_mods_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %50

7:                                                ; preds = %1
  store i8 0, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_mods_name.name, i64 0, i64 0), align 16
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GLFW_MOD_SHIFT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_mods_name.name, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GLFW_MOD_CONTROL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_mods_name.name, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @GLFW_MOD_ALT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_mods_name.name, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @GLFW_MOD_SUPER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_mods_name.name, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @GLFW_MOD_CAPS_LOCK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_mods_name.name, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @GLFW_MOD_NUM_LOCK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_mods_name.name, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_mods_name.name, i64 0, i64 0), i8** %2, align 8
  br label %50

50:                                               ; preds = %49, %6
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
