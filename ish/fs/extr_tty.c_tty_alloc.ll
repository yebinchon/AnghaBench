; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_alloc.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32, i64, i64, i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64, i64, %struct.tty_driver*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.tty_driver = type { i32 }

@ICRNL_ = common dso_local global i32 0, align 4
@IXON_ = common dso_local global i32 0, align 4
@OPOST_ = common dso_local global i32 0, align 4
@ONLCR_ = common dso_local global i32 0, align 4
@ISIG_ = common dso_local global i32 0, align 4
@ICANON_ = common dso_local global i32 0, align 4
@ECHO_ = common dso_local global i32 0, align 4
@ECHOE_ = common dso_local global i32 0, align 4
@ECHOK_ = common dso_local global i32 0, align 4
@ECHOCTL_ = common dso_local global i32 0, align 4
@ECHOKE_ = common dso_local global i32 0, align 4
@IEXTEN_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\03\1C\7F\15\04\00\01\00\11\13\1A\00\12\0F\17\16\00\00\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty* @tty_alloc(%struct.tty_driver* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.tty_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.tty* @malloc(i32 128)
  store %struct.tty* %9, %struct.tty** %8, align 8
  %10 = load %struct.tty*, %struct.tty** %8, align 8
  %11 = icmp eq %struct.tty* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.tty* null, %struct.tty** %4, align 8
  br label %98

13:                                               ; preds = %3
  %14 = load %struct.tty*, %struct.tty** %8, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 17
  store i64 0, i64* %15, align 8
  %16 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %17 = load %struct.tty*, %struct.tty** %8, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 16
  store %struct.tty_driver* %16, %struct.tty_driver** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.tty*, %struct.tty** %8, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tty*, %struct.tty** %8, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tty*, %struct.tty** %8, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.tty*, %struct.tty** %8, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.tty*, %struct.tty** %8, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 15
  store i64 0, i64* %30, align 8
  %31 = load %struct.tty*, %struct.tty** %8, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 14
  store i64 0, i64* %32, align 8
  %33 = load %struct.tty*, %struct.tty** %8, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 13
  %35 = call i32 @list_init(i32* %34)
  %36 = load i32, i32* @ICRNL_, align 4
  %37 = load i32, i32* @IXON_, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.tty*, %struct.tty** %8, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 12
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @OPOST_, align 4
  %43 = load i32, i32* @ONLCR_, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.tty*, %struct.tty** %8, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 12
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.tty*, %struct.tty** %8, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 12
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @ISIG_, align 4
  %52 = load i32, i32* @ICANON_, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ECHO_, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ECHOE_, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ECHOK_, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ECHOCTL_, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ECHOKE_, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IEXTEN_, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.tty*, %struct.tty** %8, align 8
  %67 = getelementptr inbounds %struct.tty, %struct.tty* %66, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load %struct.tty*, %struct.tty** %8, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 12
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 19)
  %74 = load %struct.tty*, %struct.tty** %8, align 8
  %75 = getelementptr inbounds %struct.tty, %struct.tty* %74, i32 0, i32 11
  %76 = call i32 @memset(i32* %75, i32 0, i32 4)
  %77 = load %struct.tty*, %struct.tty** %8, align 8
  %78 = getelementptr inbounds %struct.tty, %struct.tty* %77, i32 0, i32 10
  %79 = call i32 @lock_init(i32* %78)
  %80 = load %struct.tty*, %struct.tty** %8, align 8
  %81 = getelementptr inbounds %struct.tty, %struct.tty* %80, i32 0, i32 9
  %82 = call i32 @lock_init(i32* %81)
  %83 = load %struct.tty*, %struct.tty** %8, align 8
  %84 = getelementptr inbounds %struct.tty, %struct.tty* %83, i32 0, i32 8
  %85 = call i32 @cond_init(i32* %84)
  %86 = load %struct.tty*, %struct.tty** %8, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 7
  %88 = call i32 @cond_init(i32* %87)
  %89 = load %struct.tty*, %struct.tty** %8, align 8
  %90 = getelementptr inbounds %struct.tty, %struct.tty* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @memset(i32* %91, i32 0, i32 8)
  %93 = load %struct.tty*, %struct.tty** %8, align 8
  %94 = getelementptr inbounds %struct.tty, %struct.tty* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load %struct.tty*, %struct.tty** %8, align 8
  %96 = getelementptr inbounds %struct.tty, %struct.tty* %95, i32 0, i32 4
  store i64 0, i64* %96, align 8
  %97 = load %struct.tty*, %struct.tty** %8, align 8
  store %struct.tty* %97, %struct.tty** %4, align 8
  br label %98

98:                                               ; preds = %13, %12
  %99 = load %struct.tty*, %struct.tty** %4, align 8
  ret %struct.tty* %99
}

declare dso_local %struct.tty* @malloc(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lock_init(i32*) #1

declare dso_local i32 @cond_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
