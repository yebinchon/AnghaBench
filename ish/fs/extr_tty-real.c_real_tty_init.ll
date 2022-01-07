; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty-real.c_real_tty_init.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty-real.c_real_tty_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }
%struct.tty = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.winsize = type { i32, i32, i32, i32 }

@REAL_TTY_NUM = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@old_termios = common dso_local global %struct.termios zeroinitializer, align 4
@TCSANOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to set terminal to raw mode\00", align 1
@real_tty_read_thread = common dso_local global i64 0, align 8
@_EIO = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @real_tty_init(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.winsize, align 4
  %5 = alloca %struct.termios, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REAL_TTY_NUM, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

12:                                               ; preds = %1
  %13 = load i32, i32* @STDIN_FILENO, align 4
  %14 = load i32, i32* @TIOCGWINSZ, align 4
  %15 = call i64 @ioctl(i32 %13, i32 %14, %struct.winsize* %4)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOTTY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %65

22:                                               ; preds = %17
  %23 = call i32 (...) @errno_map()
  store i32 %23, i32* %2, align 4
  br label %80

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.winsize, %struct.winsize* %4, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tty*, %struct.tty** %3, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds %struct.winsize, %struct.winsize* %4, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tty*, %struct.tty** %3, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = getelementptr inbounds %struct.winsize, %struct.winsize* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tty*, %struct.tty** %3, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.winsize, %struct.winsize* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tty*, %struct.tty** %3, align 8
  %43 = getelementptr inbounds %struct.tty, %struct.tty* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @STDIN_FILENO, align 4
  %46 = call i64 @tcgetattr(i32 %45, %struct.termios* %5)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %24
  %49 = call i32 (...) @errno_map()
  store i32 %49, i32* %2, align 4
  br label %80

50:                                               ; preds = %24
  %51 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @termios_from_real(i32 %52)
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = bitcast %struct.termios* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.termios* @old_termios to i8*), i8* align 4 %56, i64 4, i1 false)
  %57 = call i32 @cfmakeraw(%struct.termios* %5)
  %58 = load i32, i32* @STDIN_FILENO, align 4
  %59 = load i32, i32* @TCSANOW, align 4
  %60 = call i64 @tcsetattr(i32 %58, i32 %59, %struct.termios* %5)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32 @ERRNO_DIE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %50
  br label %65

65:                                               ; preds = %64, %21
  %66 = load %struct.tty*, %struct.tty** %3, align 8
  %67 = getelementptr inbounds %struct.tty, %struct.tty* %66, i32 0, i32 1
  %68 = load i64, i64* @real_tty_read_thread, align 8
  %69 = inttoptr i64 %68 to i8* (i8*)*
  %70 = load %struct.tty*, %struct.tty** %3, align 8
  %71 = call i64 @pthread_create(i32* %67, i32* null, i8* (i8*)* %69, %struct.tty* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @_EIO, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %65
  %76 = load %struct.tty*, %struct.tty** %3, align 8
  %77 = getelementptr inbounds %struct.tty, %struct.tty* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pthread_detach(i32 %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %73, %48, %22, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @termios_from_real(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfmakeraw(%struct.termios*) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @ERRNO_DIE(i8*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i8* (i8*)*, %struct.tty*) #1

declare dso_local i32 @pthread_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
