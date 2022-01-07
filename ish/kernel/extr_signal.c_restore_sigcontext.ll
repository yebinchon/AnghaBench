; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_restore_sigcontext.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_restore_sigcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigcontext_ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpu_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@USE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sigcontext_*, %struct.cpu_state*)* @restore_sigcontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_sigcontext(%struct.sigcontext_* %0, %struct.cpu_state* %1) #0 {
  %3 = alloca %struct.sigcontext_*, align 8
  %4 = alloca %struct.cpu_state*, align 8
  store %struct.sigcontext_* %0, %struct.sigcontext_** %3, align 8
  store %struct.cpu_state* %1, %struct.cpu_state** %4, align 8
  %5 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %6 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %9 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 4
  %10 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %11 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %16 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %19 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %21 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %24 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %26 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %29 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %31 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %34 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %36 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %39 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %41 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %44 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %46 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %49 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %51 = call i32 @collapse_flags(%struct.cpu_state* %50)
  %52 = load %struct.sigcontext_*, %struct.sigcontext_** %3, align 8
  %53 = getelementptr inbounds %struct.sigcontext_, %struct.sigcontext_* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 331221
  %56 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %57 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -331222
  %60 = or i32 %55, %59
  %61 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %62 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i32 @collapse_flags(%struct.cpu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
