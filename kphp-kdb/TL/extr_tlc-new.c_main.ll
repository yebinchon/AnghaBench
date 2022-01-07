; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlc-new.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlc-new.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.tree = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Eho:ve:w:\00", align 1
@output_expressions = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@schema_version = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@dynamic_data_buffer_size = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Error in parse:\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Parse ok\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Fail\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.parse*, align 8
  %10 = alloca %struct.tree*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = call i32 (...) @set_debug_handlers()
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %34 [
    i32 69, label %19
    i32 111, label %22
    i32 104, label %24
    i32 101, label %26
    i32 119, label %28
    i32 118, label %31
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @output_expressions, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @output_expressions, align 4
  br label %34

22:                                               ; preds = %17
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** %7, align 8
  br label %34

24:                                               ; preds = %17
  %25 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %93

26:                                               ; preds = %17
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %8, align 8
  br label %34

28:                                               ; preds = %17
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i32 @atoi(i8* %29)
  store i32 %30, i32* @schema_version, align 4
  br label %34

31:                                               ; preds = %17
  %32 = load i64, i64* @verbosity, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @verbosity, align 8
  br label %34

34:                                               ; preds = %17, %31, %28, %26, %22, %19
  br label %12

35:                                               ; preds = %12
  store i32 1073741824, i32* @dynamic_data_buffer_size, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @optind, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %35
  %43 = call i32 (...) @init_dyn_data()
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* @optind, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call %struct.parse* @tl_init_parse_file(i8* %48)
  store %struct.parse* %49, %struct.parse** %9, align 8
  %50 = load %struct.parse*, %struct.parse** %9, align 8
  %51 = icmp ne %struct.parse* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %93

53:                                               ; preds = %42
  %54 = load %struct.parse*, %struct.parse** %9, align 8
  %55 = call %struct.tree* @tl_parse_lex(%struct.parse* %54)
  store %struct.tree* %55, %struct.tree** %10, align 8
  %56 = icmp ne %struct.tree* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (...) @tl_print_parse_error()
  store i32 0, i32* %3, align 4
  br label %93

61:                                               ; preds = %53
  %62 = load i64, i64* @verbosity, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.tree*, %struct.tree** %10, align 8
  %69 = call i32 @tl_parse(%struct.tree* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* @verbosity, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %71
  store i32 1, i32* %3, align 4
  br label %93

78:                                               ; preds = %67
  %79 = load i64, i64* @verbosity, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @vkext_write(i8* %90)
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %77, %57, %52, %24
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local %struct.parse* @tl_init_parse_file(i8*) #1

declare dso_local %struct.tree* @tl_parse_lex(%struct.parse*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @tl_print_parse_error(...) #1

declare dso_local i32 @tl_parse(%struct.tree*) #1

declare dso_local i32 @vkext_write(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
