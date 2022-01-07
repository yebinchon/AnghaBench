; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_push_char.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_push_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i8*, i32*, i32, i32 }

@_EAGAIN = common dso_local global i32 0, align 4
@_EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i8, i32, i32)* @tty_push_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_push_char(%struct.tty* %0, i8 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %10

10:                                               ; preds = %30, %4
  %11 = load %struct.tty*, %struct.tty** %6, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp uge i64 %14, 8
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @_EAGAIN, align 4
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %16
  %22 = load %struct.tty*, %struct.tty** %6, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 4
  %24 = load %struct.tty*, %struct.tty** %6, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 3
  %26 = call i64 @wait_for(i32* %23, i32* %25, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @_EINTR, align 4
  store i32 %29, i32* %5, align 4
  br label %51

30:                                               ; preds = %21
  br label %10

31:                                               ; preds = %10
  %32 = load i8, i8* %7, align 1
  %33 = load %struct.tty*, %struct.tty** %6, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.tty*, %struct.tty** %6, align 8
  %37 = getelementptr inbounds %struct.tty, %struct.tty* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 %32, i8* %40, align 1
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.tty*, %struct.tty** %6, align 8
  %43 = getelementptr inbounds %struct.tty, %struct.tty* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.tty*, %struct.tty** %6, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  store i32 %41, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %31, %28, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @wait_for(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
