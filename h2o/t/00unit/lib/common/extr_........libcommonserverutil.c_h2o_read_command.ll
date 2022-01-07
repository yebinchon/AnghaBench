; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonserverutil.c_h2o_read_command.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonserverutil.c_h2o_read_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@__const.h2o_read_command.respfds = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@cloexec_mutex = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_read_command(i8* %0, i8** %1, %struct.TYPE_9__** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([2 x i32]* @__const.h2o_read_command.respfds to i8*), i64 8, i1 false)
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %19 = call i32 @h2o_buffer_init(%struct.TYPE_9__** %18, i32* @h2o_socket_buffer_prototype)
  %20 = call i32 @pthread_mutex_lock(i32* @cloexec_mutex)
  store i32 1, i32* %11, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %22 = call i64 @pipe(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %83

25:                                               ; preds = %4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @F_SETFD, align 4
  %29 = load i32, i32* @O_CLOEXEC, align 4
  %30 = call i64 @fcntl(i32 %27, i32 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %83

33:                                               ; preds = %25
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 -1, i32* %38, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %42 = call i32 @h2o_spawnp(i8* %39, i8** %40, i32* %41, i32 1)
  store i32 %42, i32* %10, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %83

45:                                               ; preds = %33
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 -1, i32* %49, align 4
  %50 = call i32 @pthread_mutex_unlock(i32* @cloexec_mutex)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %45, %75
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %53 = call i64 @h2o_buffer_reserve(%struct.TYPE_9__** %52, i32 8192)
  %54 = bitcast %struct.TYPE_8__* %14 to i64*
  store i64 %53, i64* %54, align 4
  br label %55

55:                                               ; preds = %70, %51
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @read(i32 %57, i32 %59, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EINTR, align 8
  %67 = icmp eq i64 %65, %66
  br label %68

68:                                               ; preds = %64, %55
  %69 = phi i1 [ false, %55 ], [ %67, %64 ]
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  br label %55

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %82

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %76
  store i32 %81, i32* %79, align 4
  br label %51

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %44, %32, %24
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @pthread_mutex_unlock(i32* @cloexec_mutex)
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %103, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @waitpid(i32 %93, i32* %94, i32 0)
  store i32 %95, i32* %16, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i64, i64* @errno, align 8
  %99 = load i64, i64* @EINTR, align 8
  %100 = icmp eq i64 %98, %99
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i1 [ false, %92 ], [ %100, %97 ]
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  br label %92

104:                                              ; preds = %101
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %108, %104
  br label %110

110:                                              ; preds = %109, %88
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @close(i32 %116)
  br label %118

118:                                              ; preds = %114, %110
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @close(i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %131 = call i32 @h2o_buffer_dispose(%struct.TYPE_9__** %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %12, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_9__**, i32*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i64 @fcntl(i32, i32, i32) #2

declare dso_local i32 @h2o_spawnp(i8*, i8**, i32*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i64 @h2o_buffer_reserve(%struct.TYPE_9__**, i32) #2

declare dso_local i32 @read(i32, i32, i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @h2o_buffer_dispose(%struct.TYPE_9__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
