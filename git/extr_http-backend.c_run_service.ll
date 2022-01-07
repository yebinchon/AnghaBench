; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_run_service.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_run_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"HTTP_CONTENT_ENCODING\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"REMOTE_USER\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"REMOTE_ADDR\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"x-gzip\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"GIT_COMMITTER_NAME\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"GIT_COMMITTER_NAME=%s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"GIT_COMMITTER_EMAIL\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"GIT_COMMITTER_EMAIL=%s@http.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @run_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_service(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.child_process, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %15 = call i64 (...) @get_content_length()
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %32

23:                                               ; preds = %18, %2
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %26, %23
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43, %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %50 = icmp ne i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 5
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 5
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i8**, i8*** %3, align 8
  %65 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i8** %64, i8*** %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %10, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %68, %63
  %75 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  store i32 -1, i32* %75, align 8
  br label %76

76:                                               ; preds = %74, %71
  %77 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 2
  store i32 1, i32* %77, align 4
  %78 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 3
  store i32 1, i32* %78, align 8
  %79 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  store i32 1, i32* %79, align 4
  %80 = call i64 @start_command(%struct.child_process* %9)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @exit(i32 1) #4
  unreachable

84:                                               ; preds = %76
  %85 = call i32 @close(i32 1)
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i8**, i8*** %3, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @inflate_request(i8* %91, i32 %93, i32 %94, i64 %95)
  br label %123

97:                                               ; preds = %84
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8**, i8*** %3, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @copy_request(i8* %103, i32 %105, i64 %106)
  br label %122

108:                                              ; preds = %97
  %109 = load i64, i64* %10, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i8**, i8*** %3, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @pipe_fixed_length(i8* %114, i32 %116, i64 %117)
  br label %121

119:                                              ; preds = %108
  %120 = call i32 @close(i32 0)
  br label %121

121:                                              ; preds = %119, %111
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %88
  %124 = call i64 @finish_command(%struct.child_process* %9)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 @exit(i32 1) #4
  unreachable

128:                                              ; preds = %123
  ret void
}

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_content_length(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @argv_array_pushf(i32*, i8*, i8*, ...) #1

declare dso_local i64 @start_command(%struct.child_process*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @close(i32) #1

declare dso_local i32 @inflate_request(i8*, i32, i32, i64) #1

declare dso_local i32 @copy_request(i8*, i32, i64) #1

declare dso_local i32 @pipe_fixed_length(i8*, i32, i64) #1

declare dso_local i64 @finish_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
