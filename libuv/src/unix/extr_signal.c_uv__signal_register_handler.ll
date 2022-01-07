; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_signal.c_uv__signal_register_handler.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_signal.c_uv__signal_register_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@uv__signal_handler = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @uv__signal_register_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__signal_register_handler(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 @memset(%struct.sigaction* %6, i32 0, i32 12)
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  %9 = call i64 @sigfillset(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @abort() #3
  unreachable

13:                                               ; preds = %2
  %14 = load i32, i32* @uv__signal_handler, align 4
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SA_RESTART, align 4
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32, i32* @SA_RESETHAND, align 4
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @sigaction(i32 %26, %struct.sigaction* %6, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @UV__ERR(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i64 @sigfillset(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
