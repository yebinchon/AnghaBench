; ModuleID = '/home/carl/AnghaBench/htop/extr_OpenFilesScreen.c_OpenFilesScreen_getProcessData.c'
source_filename = "/home/carl/AnghaBench/htop/extr_OpenFilesScreen.c_OpenFilesScreen_getProcessData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"lsof\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32)* @OpenFilesScreen_getProcessData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @OpenFilesScreen_getProcessData(i32 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %16 = getelementptr inbounds [1025 x i8], [1025 x i8]* %4, i64 0, i64 0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @xSnprintf(i8* %16, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i8* @xCalloc(i32 1, i32 24)
  %20 = bitcast i8* %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = call i32 @pipe(i32* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %2, align 8
  br label %138

30:                                               ; preds = %1
  %31 = call i32 (...) @fork()
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %2, align 8
  br label %138

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @close(i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @STDOUT_FILENO, align 4
  %48 = call i32 @dup2(i32 %46, i32 %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* @O_WRONLY, align 4
  %53 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %41
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @STDERR_FILENO, align 4
  %61 = call i32 @dup2(i32 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @close(i32 %62)
  %64 = getelementptr inbounds [1025 x i8], [1025 x i8]* %4, i64 0, i64 0
  %65 = call i32 @execlp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %66 = call i32 @exit(i32 127) #3
  unreachable

67:                                               ; preds = %38
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @close(i32 %69)
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @fdopen(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %73, i32** %11, align 8
  br label %74

74:                                               ; preds = %104, %67
  %75 = load i32*, i32** %11, align 8
  %76 = call i8* @String_readLine(i32* %75)
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %116

80:                                               ; preds = %74
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  store i8 %83, i8* %13, align 1
  %84 = load i8, i8* %13, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 102
  br i1 %86, label %87, label %104

87:                                               ; preds = %80
  %88 = call i8* @xCalloc(i32 1, i32 16)
  %89 = bitcast i8* %88 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %14, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = icmp eq %struct.TYPE_6__* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %95, align 8
  br label %100

96:                                               ; preds = %87
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %6, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %7, align 8
  br label %104

104:                                              ; preds = %100, %80
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = call i32 @xStrdup(i8* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i8, i8* %13, align 1
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @free(i8* %114)
  br label %74

116:                                              ; preds = %79
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @waitpid(i32 %117, i32* %15, i32 0)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %2, align 8
  br label %138

124:                                              ; preds = %116
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @WIFEXITED(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  br label %136

131:                                              ; preds = %124
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @WEXITSTATUS(i32 %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %128
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %137, %struct.TYPE_5__** %2, align 8
  br label %138

138:                                              ; preds = %136, %120, %34, %26
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %139
}

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @xCalloc(i32, i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i8* @String_readLine(i32*) #1

declare dso_local i32 @xStrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
