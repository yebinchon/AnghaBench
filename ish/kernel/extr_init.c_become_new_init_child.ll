; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_init.c_become_new_init_child.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_init.c_become_new_init_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32, i64, i64, i64, i32*, i64 }

@current = common dso_local global %struct.task* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @become_new_init_child() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.task*, align 8
  %3 = alloca %struct.task*, align 8
  %4 = call %struct.task* @pid_get_task(i32 1)
  store %struct.task* %4, %struct.task** %2, align 8
  %5 = load %struct.task*, %struct.task** %2, align 8
  %6 = icmp ne %struct.task* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.task*, %struct.task** %2, align 8
  %10 = call %struct.task* @construct_task(%struct.task* %9)
  store %struct.task* %10, %struct.task** %3, align 8
  %11 = load %struct.task*, %struct.task** %3, align 8
  %12 = call i64 @IS_ERR(%struct.task* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load %struct.task*, %struct.task** %3, align 8
  %16 = call i32 @PTR_ERR(%struct.task* %15)
  store i32 %16, i32* %1, align 4
  br label %32

17:                                               ; preds = %0
  %18 = load %struct.task*, %struct.task** %3, align 8
  %19 = getelementptr inbounds %struct.task, %struct.task* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.task*, %struct.task** %3, align 8
  %21 = getelementptr inbounds %struct.task, %struct.task* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.task*, %struct.task** %3, align 8
  %23 = getelementptr inbounds %struct.task, %struct.task* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.task*, %struct.task** %3, align 8
  %25 = getelementptr inbounds %struct.task, %struct.task* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.task*, %struct.task** %3, align 8
  %27 = getelementptr inbounds %struct.task, %struct.task* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.task*, %struct.task** %3, align 8
  %29 = getelementptr inbounds %struct.task, %struct.task* %28, i32 0, i32 0
  %30 = call i32 @list_init(i32* %29)
  %31 = load %struct.task*, %struct.task** %3, align 8
  store %struct.task* %31, %struct.task** @current, align 8
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %17, %14
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local %struct.task* @pid_get_task(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.task* @construct_task(%struct.task*) #1

declare dso_local i64 @IS_ERR(%struct.task*) #1

declare dso_local i32 @PTR_ERR(%struct.task*) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
