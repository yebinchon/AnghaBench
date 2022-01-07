; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree-cache.c_read_tree_internal.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree-cache.c_read_tree_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__**, i32 }

@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"corrupted TREE extension in index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__**, i8**, i8*, i32*)* @read_tree_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tree_internal(%struct.TYPE_7__** %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i8* @memchr(i8* %18, i8 signext 0, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %167

28:                                               ; preds = %4
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp uge i8* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %167

34:                                               ; preds = %28
  %35 = load i8*, i8** %11, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @git_tree_cache_new(%struct.TYPE_7__** %10, i8* %35, i32* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %170

40:                                               ; preds = %34
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @git__strntol32(i32* %13, i8* %41, i32 %47, i8** %12, i32 10)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %167

51:                                               ; preds = %40
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 32
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp uge i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %51
  br label %167

65:                                               ; preds = %59
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i64 @git__strntol32(i32* %13, i8* %66, i32 %72, i8** %12, i32 10)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %65
  br label %167

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 10
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = icmp ugt i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %79
  br label %167

93:                                               ; preds = %87
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8*, i8** %8, align 8
  %104 = icmp ugt i8* %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %167

106:                                              ; preds = %98
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @git_oid_fromraw(i32* %108, i8* %109)
  %111 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %12, align 8
  br label %115

115:                                              ; preds = %106, %93
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %115
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %15, i32 %123, i32 8)
  %125 = load i32*, i32** %9, align 8
  %126 = load i64, i64* %15, align 8
  %127 = call %struct.TYPE_7__** @git_pool_malloc(i32* %125, i64 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  store %struct.TYPE_7__** %127, %struct.TYPE_7__*** %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %131, align 8
  %133 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__** %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %135, align 8
  %137 = load i64, i64* %15, align 8
  %138 = call i32 @memset(%struct.TYPE_7__** %136, i32 0, i64 %137)
  store i64 0, i64* %14, align 8
  br label %139

139:                                              ; preds = %158, %120
  %140 = load i64, i64* %14, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ult i64 %140, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %139
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %148, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %149, i64 %150
  %152 = load i8*, i8** %8, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @read_tree_internal(%struct.TYPE_7__** %151, i8** %12, i8* %152, i32* %153)
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %167

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %14, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %14, align 8
  br label %139

161:                                              ; preds = %139
  br label %162

162:                                              ; preds = %161, %115
  %163 = load i8*, i8** %12, align 8
  %164 = load i8**, i8*** %7, align 8
  store i8* %163, i8** %164, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %166 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %165, %struct.TYPE_7__** %166, align 8
  store i32 0, i32* %5, align 4
  br label %170

167:                                              ; preds = %156, %105, %92, %78, %64, %50, %33, %27
  %168 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %169 = call i32 @git_error_set(i32 %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %170

170:                                              ; preds = %167, %162, %39
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @git_tree_cache_new(%struct.TYPE_7__**, i8*, i32*) #1

declare dso_local i64 @git__strntol32(i32*, i8*, i32, i8**, i32) #1

declare dso_local i32 @git_oid_fromraw(i32*, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64*, i32, i32) #1

declare dso_local %struct.TYPE_7__** @git_pool_malloc(i32*, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__**) #1

declare dso_local i32 @memset(%struct.TYPE_7__**, i32, i64) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
