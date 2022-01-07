; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_setup_sigcontext.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_setup_sigcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sigcontext_ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpu_state = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INT_GPF = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sigcontext_*, %struct.cpu_state*)* @setup_sigcontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sigcontext(%struct.sigcontext_* %0, %struct.cpu_state* %1) #0 {
  %3 = alloca %struct.sigcontext_*, align 8
  %4 = alloca %struct.cpu_state*, align 8
  store %struct.sigcontext_* %0, %struct.sigcontext_** %3, align 8
  store %struct.cpu_state* %1, %struct.cpu_state** %4, align 8
  %5 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %6 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %9 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %8, i32 0, i32 13
  store i32 %7, i32* %9, align 8
  %10 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %11 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %14 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %16 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %19 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %24 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %26 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %29 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %31 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %34 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %36 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %39 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %41 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %44 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %46 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %45, i32 0, i32 6
  store i32 %42, i32* %46, align 4
  %47 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %48 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %51 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %53 = call i32 @collapse_flags(%struct.cpu_state* %52)
  %54 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %55 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %58 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %60 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %63 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %65 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @INT_GPF, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %2
  %70 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %71 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %74 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %80 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  ret void
}

declare dso_local i32 @collapse_flags(%struct.cpu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
