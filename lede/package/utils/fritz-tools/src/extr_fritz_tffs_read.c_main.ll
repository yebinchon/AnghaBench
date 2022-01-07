; ModuleID = '/home/carl/AnghaBench/lede/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tffs_entry = type { i32 }
%struct.tffs_key_name_table = type { i32, i32* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@input_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ERROR: Failed to open tffs input file %s\0A\00", align 1
@tffs_size = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"ERROR: Failed read tffs file %s\0A\00", align 1
@TFFS_ID_TABLE_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"ERROR: No name table found in tffs file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"       Is byte-swapping (-b) required?\0A\00", align 1
@print_all_key_names = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@show_all = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tffs_entry, align 4
  %10 = alloca %struct.tffs_key_name_table, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @basename(i8* %14)
  store i32 %15, i32* @progname, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @parse_options(i32 %16, i8** %17)
  %19 = load i8*, i8** @input_file, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** @input_file, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %98

27:                                               ; preds = %2
  %28 = load i64, i64* @tffs_size, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @SEEK_END, align 4
  %33 = call i32 @fseek(i32* %31, i64 0, i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @ftell(i32* %34)
  store i64 %35, i64* @tffs_size, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @fseek(i32* %36, i64 0, i32 %37)
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i64, i64* @tffs_size, align 8
  %41 = call i32* @malloc(i64 %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* @tffs_size, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @fread(i32* %42, i32 1, i64 %43, i32* %44)
  %46 = load i64, i64* @tffs_size, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @input_file, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %93

52:                                               ; preds = %39
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @TFFS_ID_TABLE_NAME, align 4
  %55 = call i32 @find_entry(i32* %53, i32 %54, %struct.tffs_entry* %9)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** @input_file, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %93

63:                                               ; preds = %52
  %64 = call i32 @parse_key_names(%struct.tffs_entry* %9, %struct.tffs_key_name_table* %10)
  %65 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** @input_file, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %89

72:                                               ; preds = %63
  %73 = load i64, i64* @print_all_key_names, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = call i32 @show_all_key_names(%struct.tffs_key_name_table* %10)
  %77 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %77, i32* %6, align 4
  br label %88

78:                                               ; preds = %72
  %79 = load i64, i64* @show_all, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @show_all_key_value_pairs(i32* %82, %struct.tffs_key_name_table* %10)
  store i32 %83, i32* %6, align 4
  br label %87

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @show_matching_key_value(i32* %85, %struct.tffs_key_name_table* %10)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %75
  br label %89

89:                                               ; preds = %88, %68
  %90 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %10, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @free(i32* %91)
  br label %93

93:                                               ; preds = %89, %57, %48
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @fclose(i32* %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @free(i32* %96)
  br label %98

98:                                               ; preds = %93, %23
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @parse_options(i32, i8**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @find_entry(i32*, i32, %struct.tffs_entry*) #1

declare dso_local i32 @parse_key_names(%struct.tffs_entry*, %struct.tffs_key_name_table*) #1

declare dso_local i32 @show_all_key_names(%struct.tffs_key_name_table*) #1

declare dso_local i32 @show_all_key_value_pairs(i32*, %struct.tffs_key_name_table*) #1

declare dso_local i32 @show_matching_key_value(i32*, %struct.tffs_key_name_table*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
