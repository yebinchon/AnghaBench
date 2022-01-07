; ModuleID = '/home/carl/AnghaBench/libgit2/tests/buf/extr_oom.c_test_buf_oom__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/buf/extr_oom.c_test_buf_oom__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@std_alloc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@oom_alloc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@oom_malloc = common dso_local global i32 0, align 4
@oom_realloc = common dso_local global i32 0, align 4
@GIT_OPT_SET_ALLOCATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_buf_oom__initialize() #0 {
  %1 = call i32 @git_stdalloc_init_allocator(%struct.TYPE_5__* @std_alloc)
  %2 = call i32 @git_stdalloc_init_allocator(%struct.TYPE_5__* @oom_alloc)
  %3 = load i32, i32* @oom_malloc, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @oom_alloc, i32 0, i32 1), align 4
  %4 = load i32, i32* @oom_realloc, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @oom_alloc, i32 0, i32 0), align 4
  %5 = load i32, i32* @GIT_OPT_SET_ALLOCATOR, align 4
  %6 = call i32 @git_libgit2_opts(i32 %5, %struct.TYPE_5__* @oom_alloc)
  %7 = call i32 @cl_git_pass(i32 %6)
  ret void
}

declare dso_local i32 @git_stdalloc_init_allocator(%struct.TYPE_5__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_libgit2_opts(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
