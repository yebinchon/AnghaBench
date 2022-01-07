; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv_tty_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv_tty_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@UV_FILE = common dso_local global i64 0, align 8
@UV_UNKNOWN_HANDLE = common dso_local global i64 0, align 8
@UV_EINVAL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@O_ACCMODE = common dso_local global i32 0, align 4
@UV_TTY = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@UV_HANDLE_BLOCKING_WRITES = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@UV_TTY_MODE_NORMAL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tty_init(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @uv_guess_handle(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @UV_FILE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @UV_UNKNOWN_HANDLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %4
  %28 = load i32, i32* @UV_EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %138

29:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @F_GETFL, align 4
  %33 = call i32 (i32, i32, ...) @fcntl(i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %30, label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* @errno, align 8
  %48 = call i32 @UV__ERR(i64 %47)
  store i32 %48, i32* %5, align 4
  br label %138

49:                                               ; preds = %43
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @O_ACCMODE, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @UV_TTY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @uv__tty_is_slave(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %63 = call i64 @ttyname_r(i32 %61, i8* %62, i32 256)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @uv__open_cloexec(i8* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  br label %70

69:                                               ; preds = %60, %56
  store i32 -1, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @O_RDONLY, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* @UV_HANDLE_BLOCKING_WRITES, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %77, %73
  br label %100

82:                                               ; preds = %70
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @uv__dup2_cloexec(i32 %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @UV_EINVAL, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @uv__close(i32 %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %5, align 4
  br label %138

97:                                               ; preds = %89, %82
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %49
  br label %100

100:                                              ; preds = %99, %81
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = bitcast %struct.TYPE_3__* %102 to i32*
  %104 = load i64, i64* @UV_TTY, align 8
  %105 = call i32 @uv__stream_init(i32* %101, i32* %103, i64 %104)
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @UV_HANDLE_BLOCKING_WRITES, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @uv__nonblock(i32 %111, i32 1)
  br label %113

113:                                              ; preds = %110, %100
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @O_WRONLY, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @O_RDONLY, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %127 = load i32, i32* %11, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %125, %121
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = bitcast %struct.TYPE_3__* %130 to i32*
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @uv__stream_open(i32* %131, i32 %132, i32 %133)
  %135 = load i32, i32* @UV_TTY_MODE_NORMAL, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %129, %93, %46, %27
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @uv_guess_handle(i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i64 @uv__tty_is_slave(i32) #1

declare dso_local i64 @ttyname_r(i32, i8*, i32) #1

declare dso_local i32 @uv__open_cloexec(i8*, i32) #1

declare dso_local i32 @uv__dup2_cloexec(i32, i32) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i32 @uv__stream_init(i32*, i32*, i64) #1

declare dso_local i32 @uv__nonblock(i32, i32) #1

declare dso_local i32 @uv__stream_open(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
