; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_send_input_signal.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_send_input_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@ISIG_ = common dso_local global i32 0, align 4
@VINTR_ = common dso_local global i64 0, align 8
@SIGINT_ = common dso_local global i32 0, align 4
@VQUIT_ = common dso_local global i64 0, align 8
@SIGQUIT_ = common dso_local global i32 0, align 4
@VSUSP_ = common dso_local global i64 0, align 8
@SIGTSTP_ = common dso_local global i32 0, align 4
@NOFLSH_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i8, i32*)* @tty_send_input_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_send_input_signal(%struct.tty* %0, i8 signext %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32* %2, i32** %7, align 8
  %10 = load %struct.tty*, %struct.tty** %5, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ISIG_, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

18:                                               ; preds = %3
  %19 = load %struct.tty*, %struct.tty** %5, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* @VINTR_, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @SIGINT_, align 4
  store i32 %32, i32* %9, align 4
  br label %58

33:                                               ; preds = %18
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* @VQUIT_, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @SIGQUIT_, align 4
  store i32 %43, i32* %9, align 4
  br label %57

44:                                               ; preds = %33
  %45 = load i8, i8* %6, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* @VSUSP_, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @SIGTSTP_, align 4
  store i32 %54, i32* %9, align 4
  br label %56

55:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %79

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %31
  %59 = load %struct.tty*, %struct.tty** %5, align 8
  %60 = getelementptr inbounds %struct.tty, %struct.tty* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.tty*, %struct.tty** %5, align 8
  %65 = getelementptr inbounds %struct.tty, %struct.tty* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NOFLSH_, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load %struct.tty*, %struct.tty** %5, align 8
  %73 = getelementptr inbounds %struct.tty, %struct.tty* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %63
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @sigset_add(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %58
  store i32 1, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %55, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @sigset_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
