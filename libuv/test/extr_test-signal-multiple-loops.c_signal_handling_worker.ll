; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-signal-multiple-loops.c_signal_handling_worker.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-signal-multiple-loops.c_signal_handling_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONLY_SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR1_AND_SIGUSR2 = common dso_local global i32 0, align 4
@signal1_cb = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@ONLY_SIGUSR2 = common dso_local global i32 0, align 4
@signal2_cb = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@sem = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @signal_handling_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_handling_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = call i64 @uv_loop_init(i32* %7)
  %13 = icmp eq i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ONLY_SIGUSR1, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SIGUSR1_AND_SIGUSR2, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %19, %1
  %24 = call i32 @uv_signal_init(i32* %7, i32* %4)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* @signal1_cb, align 4
  %30 = load i32, i32* @SIGUSR1, align 4
  %31 = call i32 @uv_signal_start(i32* %4, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = call i32 @uv_signal_init(i32* %7, i32* %5)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32, i32* @signal1_cb, align 4
  %42 = load i32, i32* @SIGUSR1, align 4
  %43 = call i32 @uv_signal_start(i32* %5, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  br label %48

48:                                               ; preds = %23, %19
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ONLY_SIGUSR2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SIGUSR1_AND_SIGUSR2, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52, %48
  %57 = call i32 @uv_signal_init(i32* %7, i32* %6)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load i32, i32* @signal2_cb, align 4
  %63 = load i32, i32* @SIGUSR2, align 4
  %64 = call i32 @uv_signal_start(i32* %6, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  br label %69

69:                                               ; preds = %56, %52
  %70 = call i32 @uv_sem_post(i32* @sem)
  %71 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %72 = call i32 @uv_run(i32* %7, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @ONLY_SIGUSR1, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SIGUSR1_AND_SIGUSR2, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80, %69
  %85 = load i32, i32* @signal1_cb, align 4
  %86 = load i32, i32* @SIGUSR1, align 4
  %87 = call i32 @uv_signal_start(i32* %4, i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load i32, i32* @signal1_cb, align 4
  %93 = load i32, i32* @SIGUSR1, align 4
  %94 = call i32 @uv_signal_start(i32* %5, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  br label %99

99:                                               ; preds = %84, %80
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @ONLY_SIGUSR2, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @SIGUSR1_AND_SIGUSR2, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103, %99
  %108 = load i32, i32* @signal2_cb, align 4
  %109 = load i32, i32* @SIGUSR2, align 4
  %110 = call i32 @uv_signal_start(i32* %6, i32 %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @ASSERT(i32 %113)
  br label %115

115:                                              ; preds = %107, %103
  %116 = call i32 @uv_sem_post(i32* @sem)
  %117 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %118 = call i32 @uv_run(i32* %7, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @ONLY_SIGUSR1, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @SIGUSR1_AND_SIGUSR2, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126, %115
  %131 = call i32 @uv_close(i32* %4, i32* null)
  %132 = call i32 @uv_close(i32* %5, i32* null)
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @ONLY_SIGUSR2, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* @SIGUSR1_AND_SIGUSR2, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137, %133
  %142 = call i32 @uv_close(i32* %6, i32* null)
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %145 = call i32 @uv_run(i32* %7, i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @ASSERT(i32 %148)
  %150 = call i32 @uv_loop_close(i32* %7)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_loop_init(i32*) #1

declare dso_local i32 @uv_signal_init(i32*, i32*) #1

declare dso_local i32 @uv_signal_start(i32*, i32, i32) #1

declare dso_local i32 @uv_sem_post(i32*) #1

declare dso_local i32 @uv_run(i32*, i32) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

declare dso_local i32 @uv_loop_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
