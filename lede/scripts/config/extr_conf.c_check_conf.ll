; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_conf.c_check_conf.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_conf.c_check_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.menu*, %struct.menu*, %struct.symbol* }
%struct.symbol = type { i64 }

@yes = common dso_local global i64 0, align 8
@input_mode = common dso_local global i64 0, align 8
@listnewconfig = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@CONFIG_ = common dso_local global i8* null, align 8
@olddefconfig = common dso_local global i64 0, align 8
@conf_cnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"*\0A* Restart config...\0A*\0A\00", align 1
@rootEntry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @check_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_conf(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.menu*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %5 = load %struct.menu*, %struct.menu** %2, align 8
  %6 = call i32 @menu_is_visible(%struct.menu* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %84

9:                                                ; preds = %1
  %10 = load %struct.menu*, %struct.menu** %2, align 8
  %11 = getelementptr inbounds %struct.menu, %struct.menu* %10, i32 0, i32 2
  %12 = load %struct.symbol*, %struct.symbol** %11, align 8
  store %struct.symbol* %12, %struct.symbol** %3, align 8
  %13 = load %struct.symbol*, %struct.symbol** %3, align 8
  %14 = icmp ne %struct.symbol* %13, null
  br i1 %14, label %15, label %71

15:                                               ; preds = %9
  %16 = load %struct.symbol*, %struct.symbol** %3, align 8
  %17 = call i32 @sym_has_value(%struct.symbol* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %71, label %19

19:                                               ; preds = %15
  %20 = load %struct.symbol*, %struct.symbol** %3, align 8
  %21 = call i64 @sym_is_changable(%struct.symbol* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load %struct.symbol*, %struct.symbol** %3, align 8
  %25 = call i64 @sym_is_choice(%struct.symbol* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load %struct.symbol*, %struct.symbol** %3, align 8
  %29 = call i64 @sym_get_tristate_value(%struct.symbol* %28)
  %30 = load i64, i64* @yes, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %27, %19
  %33 = load i64, i64* @input_mode, align 8
  %34 = load i64, i64* @listnewconfig, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load %struct.symbol*, %struct.symbol** %3, align 8
  %38 = getelementptr inbounds %struct.symbol, %struct.symbol* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.symbol*, %struct.symbol** %3, align 8
  %43 = call i32 @sym_is_choice_value(%struct.symbol* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** @CONFIG_, align 8
  %47 = load %struct.symbol*, %struct.symbol** %3, align 8
  %48 = getelementptr inbounds %struct.symbol, %struct.symbol* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %41, %36
  br label %69

52:                                               ; preds = %32
  %53 = load i64, i64* @input_mode, align 8
  %54 = load i64, i64* @olddefconfig, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* @conf_cnt, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @conf_cnt, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.menu*, %struct.menu** %2, align 8
  %65 = call i32 @menu_get_parent_menu(%struct.menu* %64)
  store i32 %65, i32* @rootEntry, align 4
  %66 = load i32, i32* @rootEntry, align 4
  %67 = call i32 @conf(i32 %66)
  br label %68

68:                                               ; preds = %63, %52
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %27, %23
  br label %71

71:                                               ; preds = %70, %15, %9
  %72 = load %struct.menu*, %struct.menu** %2, align 8
  %73 = getelementptr inbounds %struct.menu, %struct.menu* %72, i32 0, i32 1
  %74 = load %struct.menu*, %struct.menu** %73, align 8
  store %struct.menu* %74, %struct.menu** %4, align 8
  br label %75

75:                                               ; preds = %80, %71
  %76 = load %struct.menu*, %struct.menu** %4, align 8
  %77 = icmp ne %struct.menu* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.menu*, %struct.menu** %4, align 8
  call void @check_conf(%struct.menu* %79)
  br label %80

80:                                               ; preds = %78
  %81 = load %struct.menu*, %struct.menu** %4, align 8
  %82 = getelementptr inbounds %struct.menu, %struct.menu* %81, i32 0, i32 0
  %83 = load %struct.menu*, %struct.menu** %82, align 8
  store %struct.menu* %83, %struct.menu** %4, align 8
  br label %75

84:                                               ; preds = %8, %75
  ret void
}

declare dso_local i32 @menu_is_visible(%struct.menu*) #1

declare dso_local i32 @sym_has_value(%struct.symbol*) #1

declare dso_local i64 @sym_is_changable(%struct.symbol*) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i64 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i32 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @menu_get_parent_menu(%struct.menu*) #1

declare dso_local i32 @conf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
