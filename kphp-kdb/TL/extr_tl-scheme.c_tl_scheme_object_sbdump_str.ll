; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_sbdump_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_sbdump_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_buffer = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tl_scheme_object_bdump_str:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"  %c\00", align 1
@expand_utf8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_buffer*, i8*)* @tl_scheme_object_sbdump_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_scheme_object_sbdump_str(%struct.tl_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.tl_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.tl_buffer* %0, %struct.tl_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @verbosity, align 4
  %7 = icmp sge i32 %6, 4
  br i1 %7, label %8, label %45

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %22, %8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  br label %12

25:                                               ; preds = %12
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %39, %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %29

42:                                               ; preds = %29
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %2
  %46 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %47 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %46, i8 signext 34)
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %103, %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %106

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %82 [
    i32 10, label %57
    i32 13, label %62
    i32 9, label %67
    i32 92, label %72
    i32 34, label %77
  ]

57:                                               ; preds = %53
  %58 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %59 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %58, i8 signext 92)
  %60 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %61 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %60, i8 signext 110)
  br label %102

62:                                               ; preds = %53
  %63 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %64 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %63, i8 signext 92)
  %65 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %66 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %65, i8 signext 114)
  br label %102

67:                                               ; preds = %53
  %68 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %69 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %68, i8 signext 92)
  %70 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %71 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %70, i8 signext 116)
  br label %102

72:                                               ; preds = %53
  %73 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %74 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %73, i8 signext 92)
  %75 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %76 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %75, i8 signext 92)
  br label %102

77:                                               ; preds = %53
  %78 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %79 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %78, i8 signext 92)
  %80 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %81 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %80, i8 signext 34)
  br label %102

82:                                               ; preds = %53
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @isprint(i8 signext %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @expand_utf8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %91, i8 signext %93)
  br label %101

95:                                               ; preds = %87
  %96 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = call i32 @tl_string_buffer_printf(%struct.tl_buffer* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %90
  br label %102

102:                                              ; preds = %101, %77, %72, %67, %62, %57
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  br label %49

106:                                              ; preds = %49
  %107 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %108 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %107, i8 signext 34)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @tl_string_buffer_append_char(%struct.tl_buffer*, i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @tl_string_buffer_printf(%struct.tl_buffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
