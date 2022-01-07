; ModuleID = '/home/carl/AnghaBench/git/extr_ws.c_whitespace_rule.c'
source_filename = "/home/carl/AnghaBench/git/extr_ws.c_whitespace_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.index_state = type { i32 }

@whitespace_rule.attr_whitespace_rule = internal global %struct.attr_check* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@whitespace_rule_cfg = common dso_local global i32 0, align 4
@whitespace_rule_names = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whitespace_rule(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.attr_check*, %struct.attr_check** @whitespace_rule.attr_whitespace_rule, align 8
  %10 = icmp ne %struct.attr_check* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call %struct.attr_check* @attr_check_initl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.attr_check* %12, %struct.attr_check** @whitespace_rule.attr_whitespace_rule, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.index_state*, %struct.index_state** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.attr_check*, %struct.attr_check** @whitespace_rule.attr_whitespace_rule, align 8
  %17 = call i32 @git_check_attr(%struct.index_state* %14, i8* %15, %struct.attr_check* %16)
  %18 = load %struct.attr_check*, %struct.attr_check** @whitespace_rule.attr_whitespace_rule, align 8
  %19 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @ATTR_TRUE(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %13
  %28 = load i32, i32* @whitespace_rule_cfg, align 4
  %29 = call i32 @ws_tab_width(i32 %28)
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %61, %27
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @whitespace_rule_names, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @whitespace_rule_names, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @whitespace_rule_names, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @whitespace_rule_names, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %51, %43, %35
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %30

64:                                               ; preds = %30
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %82

66:                                               ; preds = %13
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @ATTR_FALSE(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @whitespace_rule_cfg, align 4
  %72 = call i32 @ws_tab_width(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %82

73:                                               ; preds = %66
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @ATTR_UNSET(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @whitespace_rule_cfg, align 4
  store i32 %78, i32* %3, align 4
  br label %82

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @parse_whitespace_rule(i8* %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %77, %70, %64
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.attr_check* @attr_check_initl(i8*, i32*) #1

declare dso_local i32 @git_check_attr(%struct.index_state*, i8*, %struct.attr_check*) #1

declare dso_local i64 @ATTR_TRUE(i8*) #1

declare dso_local i32 @ws_tab_width(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @ATTR_FALSE(i8*) #1

declare dso_local i64 @ATTR_UNSET(i8*) #1

declare dso_local i32 @parse_whitespace_rule(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
