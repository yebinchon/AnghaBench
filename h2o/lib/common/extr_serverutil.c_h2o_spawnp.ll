; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_serverutil.c_h2o_spawnp.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_serverutil.c_h2o_spawnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.h2o_spawnp.pipefds = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@cloexec_mutex = common dso_local global i32 0, align 4
@environ = external dso_local global i8**, align 8
@errno = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_spawnp(i8* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.h2o_spawnp.pipefds to i8*), i64 8, i1 false)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %17 = load i32, i32* @O_CLOEXEC, align 4
  %18 = call i32 @pipe2(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %127

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @pthread_mutex_lock(i32* @cloexec_mutex)
  br label %26

26:                                               ; preds = %24, %21
  %27 = call i32 (...) @fork()
  store i32 %27, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %68

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %64, %32
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %37
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dup2(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

63:                                               ; preds = %58, %37
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32* %66, i32** %8, align 8
  br label %33

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67, %29
  %69 = call i8** (...) @build_spawn_env()
  store i8** %69, i8*** %13, align 8
  %70 = load i8**, i8*** %13, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i8**, i8*** %13, align 8
  store i8** %73, i8*** @environ, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i8*, i8** %6, align 8
  %76 = load i8**, i8*** %7, align 8
  %77 = call i32 @execvp(i8* %75, i8** %76)
  %78 = load i32, i32* @errno, align 4
  store i32 %78, i32* %11, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @write(i32 %80, i32* %11, i32 4)
  %82 = load i32, i32* @EX_SOFTWARE, align 4
  %83 = call i32 @_exit(i32 %82) #4
  unreachable

84:                                               ; preds = %26
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32 @pthread_mutex_unlock(i32* @cloexec_mutex)
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %127

93:                                               ; preds = %89
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @close(i32 %95)
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 -1, i32* %97, align 4
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %109, %93
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @read(i32 %100, i32* %11, i32 4)
  store i32 %101, i32* %14, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @errno, align 4
  %105 = load i32, i32* @EINTR, align 4
  %106 = icmp eq i32 %104, %105
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi i1 [ false, %98 ], [ %106, %103 ]
  br i1 %108, label %109, label %110

109:                                              ; preds = %107
  br label %98

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %119, %113
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @waitpid(i32 %115, i32* null, i32 0)
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %114

120:                                              ; preds = %114
  store i32 -1, i32* %12, align 4
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* @errno, align 4
  br label %127

122:                                              ; preds = %110
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @close(i32 %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %5, align 4
  br label %146

127:                                              ; preds = %120, %92, %20
  %128 = load i32, i32* @errno, align 4
  store i32 %128, i32* %11, align 4
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, -1
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @close(i32 %134)
  br label %136

136:                                              ; preds = %132, %127
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @close(i32 %142)
  br label %144

144:                                              ; preds = %140, %136
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %122
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pipe2(i32*, i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8** @build_spawn_env(...) #2

declare dso_local i32 @execvp(i8*, i8**) #2

declare dso_local i32 @write(i32, i32*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @read(i32, i32*, i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
