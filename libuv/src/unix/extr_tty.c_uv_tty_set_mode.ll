; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv_tty_set_mode.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv_tty_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.termios }

@errno = common dso_local global i32 0, align 4
@termios_spinlock = common dso_local global i32 0, align 4
@orig_termios_fd = common dso_local global i32 0, align 4
@orig_termios = common dso_local global %struct.termios zeroinitializer, align 8
@BRKINT = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSADRAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tty_set_mode(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.termios, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = call i32 @uv__stream_fd(%struct.TYPE_4__* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 129
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 129
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i64 @tcgetattr(i32 %25, %struct.termios* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @UV__ERR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %106

33:                                               ; preds = %24
  %34 = call i32 @uv_spinlock_lock(i32* @termios_spinlock)
  %35 = load i32, i32* @orig_termios_fd, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = bitcast %struct.termios* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.termios* @orig_termios to i8*), i8* align 8 %40, i64 24, i1 false)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* @orig_termios_fd, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = call i32 @uv_spinlock_unlock(i32* @termios_spinlock)
  br label %44

44:                                               ; preds = %42, %21, %14
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = bitcast %struct.termios* %6 to i8*
  %48 = bitcast %struct.termios* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %94 [
    i32 129, label %50
    i32 128, label %51
    i32 130, label %92
  ]

50:                                               ; preds = %44
  br label %94

51:                                               ; preds = %44
  %52 = load i32, i32* @BRKINT, align 4
  %53 = load i32, i32* @ICRNL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @INPCK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ISTRIP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IXON, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %61
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @ONLCR, align 4
  %66 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @CS8, align 4
  %70 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @ECHO, align 4
  %74 = load i32, i32* @ICANON, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @IEXTEN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ISIG, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @VMIN, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 1, i32* %87, align 4
  %88 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @VTIME, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 0, i32* %91, align 4
  br label %94

92:                                               ; preds = %44
  %93 = call i32 @uv__tty_make_raw(%struct.termios* %6)
  br label %94

94:                                               ; preds = %44, %92, %51, %50
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @TCSADRAIN, align 4
  %97 = call i64 @tcsetattr(i32 %95, i32 %96, %struct.termios* %6)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 @UV__ERR(i32 %100)
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %94
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %99, %30, %13
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @uv__stream_fd(%struct.TYPE_4__*) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @uv_spinlock_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uv_spinlock_unlock(i32*) #1

declare dso_local i32 @uv__tty_make_raw(%struct.termios*) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
