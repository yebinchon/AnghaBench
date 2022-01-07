; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix-snapshot.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix-snapshot.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@main_opts = common dso_local global i32 0, align 4
@CLI_OPT_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"litdump\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"generate\00", align 1
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Error: unknown command: %s\0A\0A\00", align 1
@JERRY_STANDALONE_EXIT_CODE_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@JERRY_STANDALONE_EXIT_CODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @main_opts, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 %10, 1
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = call i8* @cli_init(i32 %9, i32 %11, i8** %13)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = call i32 @cli_consume_option(%struct.TYPE_9__* %6)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %74, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CLI_OPT_END, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %71 [
    i32 128, label %23
    i32 129, label %24
  ]

23:                                               ; preds = %21
  br label %73

24:                                               ; preds = %21
  %25 = call i8* @cli_consume_string(%struct.TYPE_9__* %6)
  store i8* %25, i8** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %73

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @process_merge(%struct.TYPE_9__* %6, i32 %35, i8* %38)
  store i32 %39, i32* %3, align 4
  br label %87

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @process_literal_dump(%struct.TYPE_9__* %6, i32 %45, i8* %48)
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %40
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @process_generate(%struct.TYPE_9__* %6, i32 %55, i8* %58)
  store i32 %59, i32* %3, align 4
  br label %87

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @jerry_port_log(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @print_commands(i8* %68)
  %70 = load i32, i32* @JERRY_STANDALONE_EXIT_CODE_FAIL, align 4
  store i32 %70, i32* %3, align 4
  br label %87

71:                                               ; preds = %21
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %72, align 8
  br label %73

73:                                               ; preds = %71, %29, %23
  br label %74

74:                                               ; preds = %73
  %75 = call i32 @cli_consume_option(%struct.TYPE_9__* %6)
  store i32 %75, i32* %7, align 4
  br label %17

76:                                               ; preds = %17
  %77 = call i64 @check_cli_error(%struct.TYPE_9__* %6)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @JERRY_STANDALONE_EXIT_CODE_FAIL, align 4
  store i32 %80, i32* %3, align 4
  br label %87

81:                                               ; preds = %76
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @print_commands(i8* %84)
  %86 = load i32, i32* @JERRY_STANDALONE_EXIT_CODE_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %79, %62, %54, %44, %34
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i8* @cli_init(i32, i32, i8**) #1

declare dso_local i32 @cli_consume_option(%struct.TYPE_9__*) #1

declare dso_local i8* @cli_consume_string(%struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @process_merge(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @process_literal_dump(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @process_generate(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @jerry_port_log(i32, i8*, i8*) #1

declare dso_local i32 @print_commands(i8*) #1

declare dso_local i64 @check_cli_error(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
