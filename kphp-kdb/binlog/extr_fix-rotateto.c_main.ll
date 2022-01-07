; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_fix-rotateto.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_fix-rotateto.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.keep_bad_dest_file = internal global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"c:hku:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unimplemented option %c\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Bad destination file '%s' was succesfully deleted.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i64 (...) @getuid()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 10, i32* @maxconn, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = call i32 (...) @set_debug_handlers()
  br label %12

12:                                               ; preds = %44, %10
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %39 [
    i32 99, label %19
    i32 104, label %31
    i32 107, label %33
    i32 117, label %34
    i32 118, label %36
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i32 @atoi(i8* %20)
  store i32 %21, i32* @maxconn, align 4
  %22 = load i32, i32* @maxconn, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @maxconn, align 4
  %26 = load i32, i32* @MAX_CONNECTIONS, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @MAX_CONNECTIONS, align 4
  store i32 %29, i32* @maxconn, align 4
  br label %30

30:                                               ; preds = %28, %24
  br label %44

31:                                               ; preds = %17
  %32 = call i32 (...) @usage()
  br label %44

33:                                               ; preds = %17
  store i32 1, i32* @main.keep_bad_dest_file, align 4
  br label %44

34:                                               ; preds = %17
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** @username, align 8
  br label %44

36:                                               ; preds = %17
  %37 = load i32, i32* @verbosity, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @verbosity, align 4
  br label %44

39:                                               ; preds = %17
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 @exit(i32 2) #3
  unreachable

44:                                               ; preds = %36, %34, %33, %31, %30
  br label %12

45:                                               ; preds = %12
  %46 = load i32, i32* @optind, align 4
  %47 = add nsw i32 %46, 3
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* @maxconn, align 4
  %54 = add nsw i32 %53, 16
  %55 = call i64 @raise_file_rlimit(i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @maxconn, align 4
  %59 = add nsw i32 %58, 16
  %60 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %52
  %63 = load i8*, i8** @username, align 8
  %64 = call i64 @change_user(i8* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i8*, i8** @username, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i8*, i8** @username, align 8
  br label %72

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %71 ]
  %74 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %62
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* @optind, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* @optind, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* @optind, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @fix_rotate_to(i8* %81, i8* %87, i8* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %76
  %97 = load i32, i32* @main.keep_bad_dest_file, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %96
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @unlink(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %99
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* @optind, align 4
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %108, %99
  br label %117

117:                                              ; preds = %116, %96
  store i32 1, i32* %3, align 4
  br label %119

118:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %117
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @raise_file_rlimit(i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @fix_rotate_to(i8*, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
