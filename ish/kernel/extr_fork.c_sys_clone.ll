; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fork.c_sys_clone.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fork.c_sys_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32, %struct.vfork_info*, %struct.TYPE_2__ }
%struct.vfork_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"clone(0x%x, 0x%x, 0x%x, 0x%x, 0x%x)\00", align 1
@CSIGNAL_ = common dso_local global i32 0, align 4
@IMPLEMENTED_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unimplemented clone flags 0x%x\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@CLONE_SIGHAND_ = common dso_local global i32 0, align 4
@CLONE_VM_ = common dso_local global i32 0, align 4
@CLONE_THREAD_ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4
@CLONE_VFORK_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_clone(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.task*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vfork_info, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @STRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CSIGNAL_, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @IMPLEMENTED_FLAGS, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CSIGNAL_, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @IMPLEMENTED_FLAGS, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @_EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %132

40:                                               ; preds = %5
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CLONE_SIGHAND_, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CLONE_VM_, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @_EINVAL, align 4
  store i32 %51, i32* %6, align 4
  br label %132

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @CLONE_THREAD_, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CLONE_SIGHAND_, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @_EINVAL, align 4
  store i32 %63, i32* %6, align 4
  br label %132

64:                                               ; preds = %57, %52
  %65 = load i32, i32* @current, align 4
  %66 = call %struct.task* @task_create_(i32 %65)
  store %struct.task* %66, %struct.task** %12, align 8
  %67 = load %struct.task*, %struct.task** %12, align 8
  %68 = icmp eq %struct.task* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @_ENOMEM, align 4
  store i32 %70, i32* %6, align 4
  br label %132

71:                                               ; preds = %64
  %72 = load %struct.task*, %struct.task** %12, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @copy_task(%struct.task* %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load %struct.task*, %struct.task** %12, align 8
  %83 = call i32 @task_destroy(%struct.task* %82)
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %132

85:                                               ; preds = %71
  %86 = load %struct.task*, %struct.task** %12, align 8
  %87 = getelementptr inbounds %struct.task, %struct.task* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @CLONE_VFORK_, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 2
  %95 = call i32 @lock_init(i32* %94)
  %96 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 1
  %97 = call i32 @cond_init(i32* %96)
  %98 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 0
  store i32 0, i32* %98, align 4
  %99 = load %struct.task*, %struct.task** %12, align 8
  %100 = getelementptr inbounds %struct.task, %struct.task* %99, i32 0, i32 1
  store %struct.vfork_info* %14, %struct.vfork_info** %100, align 8
  br label %101

101:                                              ; preds = %93, %85
  %102 = load %struct.task*, %struct.task** %12, align 8
  %103 = getelementptr inbounds %struct.task, %struct.task* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %15, align 4
  %105 = load %struct.task*, %struct.task** %12, align 8
  %106 = call i32 @task_start(%struct.task* %105)
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @CLONE_VFORK_, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 2
  %113 = call i32 @lock(i32* %112)
  br label %114

114:                                              ; preds = %119, %111
  %115 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 1
  %121 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 2
  %122 = call i32 @wait_for_ignore_signals(i32* %120, i32* %121, i32* null)
  br label %114

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 2
  %125 = call i32 @unlock(i32* %124)
  %126 = load %struct.task*, %struct.task** %12, align 8
  %127 = getelementptr inbounds %struct.task, %struct.task* %126, i32 0, i32 1
  store %struct.vfork_info* null, %struct.vfork_info** %127, align 8
  %128 = getelementptr inbounds %struct.vfork_info, %struct.vfork_info* %14, i32 0, i32 1
  %129 = call i32 @cond_destroy(i32* %128)
  br label %130

130:                                              ; preds = %123, %101
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %81, %69, %62, %50, %30
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local %struct.task* @task_create_(i32) #1

declare dso_local i32 @copy_task(%struct.task*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @task_destroy(%struct.task*) #1

declare dso_local i32 @lock_init(i32*) #1

declare dso_local i32 @cond_init(i32*) #1

declare dso_local i32 @task_start(%struct.task*) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @wait_for_ignore_signals(i32*, i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
