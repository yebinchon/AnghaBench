; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_fetch_start_failure.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_fetch_start_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.submodule_parallel_fetch = type { i32 }
%struct.fetch_task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*, i8*)* @fetch_start_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_start_failure(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.submodule_parallel_fetch*, align 8
  %8 = alloca %struct.fetch_task*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.submodule_parallel_fetch*
  store %struct.submodule_parallel_fetch* %10, %struct.submodule_parallel_fetch** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.fetch_task*
  store %struct.fetch_task* %12, %struct.fetch_task** %8, align 8
  %13 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %7, align 8
  %14 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.fetch_task*, %struct.fetch_task** %8, align 8
  %16 = call i32 @fetch_task_release(%struct.fetch_task* %15)
  ret i32 0
}

declare dso_local i32 @fetch_task_release(%struct.fetch_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
