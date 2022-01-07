; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_dst.c_tr2_dst_get_trace_fd.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_dst.c_tr2_dst_get_trace_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr2_dst = type { i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@PREFIX_AF_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tr2_dst_get_trace_fd(%struct.tr2_dst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tr2_dst*, align 8
  %4 = alloca i8*, align 8
  store %struct.tr2_dst* %0, %struct.tr2_dst** %3, align 8
  %5 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %6 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %11 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  br label %103

13:                                               ; preds = %1
  %14 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %15 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %17 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @tr2_sysenv_get(i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30, %26, %22, %13
  %35 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %36 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %38 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %2, align 4
  br label %103

40:                                               ; preds = %30
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @STDERR_FILENO, align 4
  %50 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %51 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %53 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %2, align 4
  br label %103

55:                                               ; preds = %44
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @isdigit(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @atoi(i8* %65)
  %67 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %68 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %70 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %2, align 4
  br label %103

72:                                               ; preds = %59, %55
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @is_absolute_path(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @is_directory(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @tr2_dst_try_auto_path(%struct.tr2_dst* %81, i8* %82)
  store i32 %83, i32* %2, align 4
  br label %103

84:                                               ; preds = %76
  %85 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @tr2_dst_try_path(%struct.tr2_dst* %85, i8* %86)
  store i32 %87, i32* %2, align 4
  br label %103

88:                                               ; preds = %72
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @PREFIX_AF_UNIX, align 4
  %91 = call i64 @starts_with(i8* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @tr2_dst_try_unix_domain_socket(%struct.tr2_dst* %94, i8* %95)
  store i32 %96, i32* %2, align 4
  br label %103

97:                                               ; preds = %88
  %98 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @tr2_dst_malformed_warning(%struct.tr2_dst* %98, i8* %99)
  %101 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %102 = call i32 @tr2_dst_trace_disable(%struct.tr2_dst* %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %93, %84, %80, %64, %48, %34, %9
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i8* @tr2_sysenv_get(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i64 @is_directory(i8*) #1

declare dso_local i32 @tr2_dst_try_auto_path(%struct.tr2_dst*, i8*) #1

declare dso_local i32 @tr2_dst_try_path(%struct.tr2_dst*, i8*) #1

declare dso_local i64 @starts_with(i8*, i32) #1

declare dso_local i32 @tr2_dst_try_unix_domain_socket(%struct.tr2_dst*, i8*) #1

declare dso_local i32 @tr2_dst_malformed_warning(%struct.tr2_dst*, i8*) #1

declare dso_local i32 @tr2_dst_trace_disable(%struct.tr2_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
