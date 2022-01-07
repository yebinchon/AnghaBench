; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_fromdiff.c_apply_gitbuf.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_fromdiff.c_apply_gitbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, %struct.TYPE_8__*, i8*, i8*, i32*)* @apply_gitbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_gitbuf(%struct.TYPE_8__* %0, i8* %1, %struct.TYPE_8__* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %20 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ null, %27 ]
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i8* [ %45, %42 ], [ null, %46 ]
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  %58 = load i8*, i8** %10, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @git_patch_from_buffers(i32** %13, i8* %29, i32 %38, i8* %39, i8* %48, i32 %57, i8* %58, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @git_patch_to_buf(%struct.TYPE_8__* %15, i32* %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @cl_assert_equal_s(i8* %68, i8* %70)
  br label %72

72:                                               ; preds = %64, %56
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  br label %80

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i8* [ %78, %75 ], [ null, %79 ]
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = icmp ne %struct.TYPE_8__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  br label %89

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i32 [ %87, %84 ], [ 0, %88 ]
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @git_apply__patch(%struct.TYPE_8__* %14, i8** %16, i32* %17, i8* %81, i32 %90, i32* %91, i32* null)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = icmp eq %struct.TYPE_8__* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @cl_assert_equal_i(i32 0, i32 %100)
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 @cl_assert_equal_p(i32* null, i8* %102)
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @cl_assert_equal_i(i32 0, i32 %104)
  br label %129

106:                                              ; preds = %95, %89
  %107 = load i32, i32* %18, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %106
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @cl_assert_equal_s(i8* %112, i8* %114)
  %116 = load i8*, i8** %10, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i8*, i8** %10, align 8
  br label %122

120:                                              ; preds = %109
  %121 = load i8*, i8** %8, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i8* [ %119, %118 ], [ %121, %120 ]
  %124 = load i8*, i8** %16, align 8
  %125 = call i32 @cl_assert_equal_s(i8* %123, i8* %124)
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @cl_assert_equal_i(i32 33188, i32 %126)
  br label %128

128:                                              ; preds = %122, %106
  br label %129

129:                                              ; preds = %128, %98
  %130 = load i8*, i8** %16, align 8
  %131 = call i32 @git__free(i8* %130)
  %132 = call i32 @git_buf_dispose(%struct.TYPE_8__* %14)
  %133 = call i32 @git_buf_dispose(%struct.TYPE_8__* %15)
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @git_patch_free(i32* %134)
  %136 = load i32, i32* %18, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_patch_from_buffers(i32**, i8*, i32, i8*, i8*, i32, i8*, i32*) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @git_apply__patch(%struct.TYPE_8__*, i8**, i32*, i8*, i32, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert_equal_p(i32*, i8*) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
