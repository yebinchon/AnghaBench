; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_runner-unix.c_process_start.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_runner-unix.c_process_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"UV_USE_VALGRIND\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"valgrind\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"--leak-check=full\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"--show-reachable=yes\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"--error-exitcode=125\00", align 1
@executable_path = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"UV_TEST_RUNNER_FD\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"setenv\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@environ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"execve()\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"EOF expected but got data.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_start(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [16 x i8*], align 16
  %14 = alloca [2 x i32], align 4
  %15 = alloca [8 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %12, align 8
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %4
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @atoi(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i32, i32* %17, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %17, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %17, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %36
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %17, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %40
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %41, align 8
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %17, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %44
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %48
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %49, align 8
  br label %50

50:                                               ; preds = %29, %25, %22, %4
  %51 = load i8*, i8** @executable_path, align 8
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %17, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %54
  store i8* %51, i8** %55, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %59
  store i8* %56, i8** %60, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %64
  store i8* %61, i8** %65, align 8
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %68
  store i8* null, i8** %69, align 8
  %70 = call i32* (...) @tmpfile()
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @fileno(i32* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %50
  %76 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %178

77:                                               ; preds = %50
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %82 = call i64 @pipe(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %178

86:                                               ; preds = %80
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @snprintf(i8* %87, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %92 = call i64 @setenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %91, i32 1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %178

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = call i64 (...) @fork()
  store i64 %102, i64* %18, align 8
  %103 = load i64, i64* %18, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %178

107:                                              ; preds = %97
  %108 = load i64, i64* %18, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @closefd(i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @STDOUT_FILENO, align 4
  %120 = call i32 @dup2(i32 %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @STDERR_FILENO, align 4
  %123 = call i32 @dup2(i32 %121, i32 %122)
  %124 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 0
  %125 = load i8*, i8** %124, align 16
  %126 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 0
  %127 = load i32, i32* @environ, align 4
  %128 = call i32 @execve(i8* %125, i8** %126, i32 %127)
  %129 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %130 = call i32 @_exit(i32 127) #3
  unreachable

131:                                              ; preds = %107
  %132 = load i64, i64* %18, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @strdup(i8* %135)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i32* %139, i32** %141, align 8
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %178

145:                                              ; preds = %131
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @closefd(i32 %147)
  %149 = call i32 @unsetenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %150

150:                                              ; preds = %161, %145
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @read(i32 %152, i32* %17, i32 1)
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %16, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i64, i64* @errno, align 8
  %159 = load i64, i64* @EINTR, align 8
  %160 = icmp eq i64 %158, %159
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi i1 [ false, %154 ], [ %160, %157 ]
  br i1 %162, label %150, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @closefd(i32 %165)
  %167 = load i32, i32* %16, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %178

171:                                              ; preds = %163
  %172 = load i32, i32* %16, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* @stderr, align 4
  %176 = call i32 @fprintf(i32 %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %178

177:                                              ; preds = %171
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %174, %169, %144, %105, %94, %84, %75
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32* @tmpfile(...) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @closefd(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execve(i8*, i8**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
