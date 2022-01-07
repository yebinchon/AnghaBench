; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_poll.c_uv__init_overlapped_dummy.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_poll.c_uv__init_overlapped_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CreateEvent\00", align 1
@overlapped_dummy_ = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uv__init_overlapped_dummy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__init_overlapped_dummy() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @TRUE, align 4
  %3 = load i32, i32* @TRUE, align 4
  %4 = call i32* @CreateEvent(i32* null, i32 %2, i32 %3, i32* null)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 (...) @GetLastError()
  %9 = call i32 @uv_fatal_error(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 @memset(%struct.TYPE_3__* @overlapped_dummy_, i32 0, i32 8)
  %12 = load i32*, i32** %1, align 8
  %13 = ptrtoint i32* %12 to i64
  %14 = or i64 %13, 1
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @overlapped_dummy_, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
