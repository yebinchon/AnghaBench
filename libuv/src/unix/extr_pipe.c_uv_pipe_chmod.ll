; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_pipe.c_uv_pipe_chmod.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_pipe.c_uv_pipe_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@UV_EBADF = common dso_local global i32 0, align 4
@UV_READABLE = common dso_local global i32 0, align 4
@UV_WRITABLE = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_pipe_chmod(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @uv__stream_fd(i32* %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @UV_EBADF, align 4
  store i32 %18, i32* %3, align 4
  br label %124

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @UV_READABLE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @UV_WRITABLE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UV_WRITABLE, align 4
  %30 = load i32, i32* @UV_READABLE, align 4
  %31 = or i32 %29, %30
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @UV_EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %124

35:                                               ; preds = %27, %23, %19
  store i64 0, i64* %9, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @uv_pipe_getsockname(i32* %36, i8* null, i64* %9)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @UV_ENOBUFS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %124

43:                                               ; preds = %35
  %44 = load i64, i64* %9, align 8
  %45 = call i8* @uv__malloc(i64 %44)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %49, i32* %3, align 4
  br label %124

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @uv_pipe_getsockname(i32* %51, i8* %52, i64* %9)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @uv__free(i8* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %124

60:                                               ; preds = %50
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @stat(i8* %61, %struct.stat* %7)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @uv__free(i8* %65)
  %67 = load i32, i32* @errno, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %124

69:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @UV_READABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* @S_IRUSR, align 4
  %76 = load i32, i32* @S_IRGRP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @S_IROTH, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %74, %69
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @UV_WRITABLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* @S_IWUSR, align 4
  %89 = load i32, i32* @S_IWGRP, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @S_IWOTH, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @uv__free(i8* %103)
  store i32 0, i32* %3, align 4
  br label %124

105:                                              ; preds = %95
  %106 = load i32, i32* %6, align 4
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @chmod(i8* %110, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @uv__free(i8* %114)
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %119

118:                                              ; preds = %105
  br label %122

119:                                              ; preds = %105
  %120 = load i32, i32* @errno, align 4
  %121 = call i32 @UV__ERR(i32 %120)
  br label %122

122:                                              ; preds = %119, %118
  %123 = phi i32 [ 0, %118 ], [ %121, %119 ]
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %102, %64, %56, %48, %41, %33, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @uv__stream_fd(i32*) #1

declare dso_local i32 @uv_pipe_getsockname(i32*, i8*, i64*) #1

declare dso_local i8* @uv__malloc(i64) #1

declare dso_local i32 @uv__free(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
