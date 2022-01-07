; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_handle_mem_options.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_handle_mem_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"memmap=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mem=\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hugepages\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to allocate space for tmp_cmdline\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Only '--' specified in cmdline\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"memmap\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"nopentium\00", align 1
@mem_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_mem_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_mem_options() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = call i64 (...) @get_cmd_line_ptr()
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %2, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %0
  %16 = load i8*, i8** %1, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @strstr(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %98

24:                                               ; preds = %19, %15, %0
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, 1
  %27 = call i8* @malloc(i64 %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %1, align 8
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @memcpy(i8* %33, i8* %34, i64 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %3, align 8
  store i8* %40, i8** %1, align 8
  %41 = load i8*, i8** %1, align 8
  %42 = call i8* @skip_spaces(i8* %41)
  store i8* %42, i8** %1, align 8
  br label %43

43:                                               ; preds = %93, %82, %32
  %44 = load i8*, i8** %1, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %94

47:                                               ; preds = %43
  %48 = load i8*, i8** %1, align 8
  %49 = call i8* @next_arg(i8* %48, i8** %4, i8** %5)
  store i8* %49, i8** %1, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %95

58:                                               ; preds = %52, %47
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @mem_avoid_memmap(i8* %63)
  br label %93

65:                                               ; preds = %58
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @strstr(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @parse_gb_huge_pages(i8* %70, i8* %71)
  br label %92

73:                                               ; preds = %65
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %43

83:                                               ; preds = %77
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @memparse(i8* %84, i8** %7)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %95

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* @mem_limit, align 4
  br label %91

91:                                               ; preds = %89, %73
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %62
  br label %43

94:                                               ; preds = %43
  br label %95

95:                                               ; preds = %94, %88, %56
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @free(i8* %96)
  br label %98

98:                                               ; preds = %95, %23
  ret void
}

declare dso_local i64 @get_cmd_line_ptr(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i8* @next_arg(i8*, i8**, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mem_avoid_memmap(i8*) #1

declare dso_local i32 @parse_gb_huge_pages(i8*, i8*) #1

declare dso_local i32 @memparse(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
