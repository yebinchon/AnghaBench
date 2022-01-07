; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_lg2.c_main.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_lg2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i32, i32, i8** }
%struct.TYPE_3__ = type { i8*, i32, i64 }

@ARGS_INFO_INIT = common dso_local global %struct.args_info zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@commands = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to open repository '%s'\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Command not found: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.args_info, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast %struct.args_info* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.args_info* @ARGS_INFO_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @usage(i8* %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = call i32 (...) @git_libgit2_init()
  %22 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %55, %20
  %24 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 45
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %59

43:                                               ; preds = %29
  %44 = call i64 @optional_str_arg(i8** %8, %struct.args_info* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %55

47:                                               ; preds = %43
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %59

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %46
  %56 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %23

59:                                               ; preds = %51, %42, %23
  %60 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @usage(i8* %68)
  br label %70

70:                                               ; preds = %65, %59
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %74

74:                                               ; preds = %73, %70
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %121, %74
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %78 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %77)
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds %struct.args_info, %struct.args_info* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strcmp(i8* %87, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %121

96:                                               ; preds = %80
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @git_repository_open_ext(i32** %7, i8* %104, i32 0, i32* null)
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @check_lg2(i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %103, %96
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = bitcast %struct.args_info* %6 to { i64, i8** }*
  %116 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %115, i32 0, i32 1
  %119 = load i8**, i8*** %118, align 8
  %120 = call i32 @run_command(i32 %113, i32* %114, i64 %117, i8** %119)
  store i32 %120, i32* %9, align 4
  br label %130

121:                                              ; preds = %95
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %75

124:                                              ; preds = %75
  %125 = load i32, i32* @stderr, align 4
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @fprintf(i32 %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %124, %108
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @git_repository_free(i32* %131)
  %133 = call i32 (...) @git_libgit2_shutdown()
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @git_libgit2_init(...) #2

declare dso_local i64 @optional_str_arg(i8**, %struct.args_info*, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @check_lg2(i32, i8*, i8*) #2

declare dso_local i32 @git_repository_open_ext(i32**, i8*, i32, i32*) #2

declare dso_local i32 @run_command(i32, i32*, i64, i8**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_libgit2_shutdown(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
