; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_git_tree__parse_raw.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_git_tree__parse_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i8*, i32*, i8*, i8* }

@DEFAULT_TREE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to parse tree: can't parse filemode\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to parse tree: missing space after filemode\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to parse tree: object is corrupted\00", align 1
@UINT16_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to parse tree: can't parse filename\00", align 1
@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to parse tree: can't parse OID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_tree__parse_raw(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DEFAULT_TREE_SIZE, align 4
  %27 = call i32 @git_array_init_to_size(i32 %25, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @GIT_ERROR_CHECK_ARRAY(i32 %30)
  br label %32

32:                                               ; preds = %100, %3
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %132

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i64 @parse_mode(i8** %14, i8* %37, i32 %43, i8** %9)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46, %36
  %50 = call i32 @tree_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %50, i32* %4, align 4
  br label %133

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp uge i8* %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 32
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %51
  %62 = call i32 @tree_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %62, i32* %4, align 4
  br label %133

63:                                               ; preds = %55
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @memchr(i8* %64, i32 0, i32 %70)
  store i8* %71, i8** %13, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = call i32 @tree_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 %74, i32* %4, align 4
  br label %133

75:                                               ; preds = %63
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  store i64 %80, i64* %12, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @UINT16_MAX, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %75
  %87 = call i32 @tree_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %87, i32* %4, align 4
  br label %133

88:                                               ; preds = %82
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = ptrtoint i8* %89 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = call i32 @tree_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32 %99, i32* %4, align 4
  br label %133

100:                                              ; preds = %88
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.TYPE_5__* @git_array_alloc(i32 %103)
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %11, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %106 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__* %105)
  %107 = load i8*, i8** %14, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* %12, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i32* %121, i32** %123, align 8
  %124 = load i64, i64* %12, align 8
  %125 = add i64 %124, 1
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %127, i8** %9, align 8
  %128 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %9, align 8
  br label %32

132:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %98, %86, %73, %61, %49
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @git_array_init_to_size(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ARRAY(i32) #1

declare dso_local i64 @parse_mode(i8**, i8*, i32, i8**) #1

declare dso_local i32 @tree_error(i8*, i32*) #1

declare dso_local i8* @memchr(i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @git_array_alloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
