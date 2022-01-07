; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-tool.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-tool.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i8**)*, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"change the working directory\00", align 1
@BUG_exit_code = common dso_local global i32 0, align 4
@test_tool_usage = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Could not cd to '%s'\00", align 1
@cmds = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"there is no tool named '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [2 x %struct.option], align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %10 = call i32 @OPT_STRING(i8 signext 67, i32* null, i8** %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.option, %struct.option* %9, i64 1
  %13 = call i32 (...) @OPT_END()
  %14 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  store i32 99, i32* @BUG_exit_code, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %18 = load i32, i32* @test_tool_usage, align 4
  %19 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %20 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @parse_options(i32 %15, i8** %16, i32* null, %struct.option* %17, i32 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 (...) @die_usage()
  br label %27

27:                                               ; preds = %25, %2
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @chdir(i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %30, %27
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcmp(i32 %49, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %43
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @trace2_cmd_name(i32 %65)
  %67 = call i32 (...) @trace2_cmd_list_config()
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32 (i32, i8**)*, i32 (i32, i8**)** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = call i32 %73(i32 %74, i8** %75)
  store i32 %76, i32* %3, align 4
  br label %87

77:                                               ; preds = %43
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %38

81:                                               ; preds = %38
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = call i32 (...) @die_usage()
  br label %87

87:                                               ; preds = %81, %55
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @OPT_STRING(i8 signext, i32*, i8**, i8*, i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #1

declare dso_local i32 @die_usage(...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @trace2_cmd_name(i32) #1

declare dso_local i32 @trace2_cmd_list_config(...) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
