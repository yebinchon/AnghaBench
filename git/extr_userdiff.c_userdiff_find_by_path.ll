; ModuleID = '/home/carl/AnghaBench/git/extr_userdiff.c_userdiff_find_by_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_userdiff.c_userdiff_find_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.userdiff_driver = type { i32 }
%struct.index_state = type { i32 }

@userdiff_find_by_path.check = internal global %struct.attr_check* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@driver_true = common dso_local global %struct.userdiff_driver zeroinitializer, align 4
@driver_false = common dso_local global %struct.userdiff_driver zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.userdiff_driver* @userdiff_find_by_path(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca %struct.userdiff_driver*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.attr_check*, %struct.attr_check** @userdiff_find_by_path.check, align 8
  %7 = icmp ne %struct.attr_check* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call %struct.attr_check* @attr_check_initl(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.attr_check* %9, %struct.attr_check** @userdiff_find_by_path.check, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %3, align 8
  br label %56

14:                                               ; preds = %10
  %15 = load %struct.index_state*, %struct.index_state** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.attr_check*, %struct.attr_check** @userdiff_find_by_path.check, align 8
  %18 = call i32 @git_check_attr(%struct.index_state* %15, i8* %16, %struct.attr_check* %17)
  %19 = load %struct.attr_check*, %struct.attr_check** @userdiff_find_by_path.check, align 8
  %20 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ATTR_TRUE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store %struct.userdiff_driver* @driver_true, %struct.userdiff_driver** %3, align 8
  br label %56

28:                                               ; preds = %14
  %29 = load %struct.attr_check*, %struct.attr_check** @userdiff_find_by_path.check, align 8
  %30 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ATTR_FALSE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store %struct.userdiff_driver* @driver_false, %struct.userdiff_driver** %3, align 8
  br label %56

38:                                               ; preds = %28
  %39 = load %struct.attr_check*, %struct.attr_check** @userdiff_find_by_path.check, align 8
  %40 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ATTR_UNSET(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %3, align 8
  br label %56

48:                                               ; preds = %38
  %49 = load %struct.attr_check*, %struct.attr_check** @userdiff_find_by_path.check, align 8
  %50 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.userdiff_driver* @userdiff_find_by_name(i32 %54)
  store %struct.userdiff_driver* %55, %struct.userdiff_driver** %3, align 8
  br label %56

56:                                               ; preds = %48, %47, %37, %27, %13
  %57 = load %struct.userdiff_driver*, %struct.userdiff_driver** %3, align 8
  ret %struct.userdiff_driver* %57
}

declare dso_local %struct.attr_check* @attr_check_initl(i8*, i32*) #1

declare dso_local i32 @git_check_attr(%struct.index_state*, i8*, %struct.attr_check*) #1

declare dso_local i64 @ATTR_TRUE(i32) #1

declare dso_local i64 @ATTR_FALSE(i32) #1

declare dso_local i64 @ATTR_UNSET(i32) #1

declare dso_local %struct.userdiff_driver* @userdiff_find_by_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
