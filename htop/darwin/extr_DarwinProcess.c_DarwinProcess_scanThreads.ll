; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_DarwinProcess.c_DarwinProcess_scanThreads.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_DarwinProcess.c_DarwinProcess_scanThreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8, i32 }
%struct.TYPE_5__ = type { i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@TASK_INFO_MAX = common dso_local global i32 0, align 4
@TASK_BASIC_INFO = common dso_local global i32 0, align 4
@THREAD_BASIC_INFO_COUNT = common dso_local global i32 0, align 4
@THREAD_BASIC_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DarwinProcess_scanThreads(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = bitcast %struct.TYPE_7__* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %132

23:                                               ; preds = %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 4
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 90
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %132

30:                                               ; preds = %23
  %31 = call i32 (...) @mach_task_self()
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @task_for_pid(i32 %31, i32 %34, i32* %5)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @KERN_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %132

42:                                               ; preds = %30
  %43 = load i32, i32* @TASK_INFO_MAX, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TASK_BASIC_INFO, align 4
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i64 @task_info(i32 %44, i32 %45, i32 %47, i32* %7)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @KERN_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %132

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @task_threads(i32 %56, i32** %8, i32* %9)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @KERN_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = call i32 (...) @mach_task_self()
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @mach_port_deallocate(i32 %64, i32 %65)
  br label %132

67:                                               ; preds = %55
  store i64 999, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %107, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %68
  %73 = load i32, i32* @THREAD_BASIC_INFO_COUNT, align 4
  store i32 %73, i32* %13, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @THREAD_BASIC_INFO, align 4
  %80 = load i64, i64* %12, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @thread_info(i32 %78, i32 %79, i32 %81, i32* %13)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @KERN_SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %72
  %87 = load i64, i64* %12, align 8
  %88 = inttoptr i64 %87 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %14, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %94, %86
  %99 = call i32 (...) @mach_task_self()
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mach_port_deallocate(i32 %99, i32 %104)
  br label %106

106:                                              ; preds = %98, %72
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %68

110:                                              ; preds = %68
  %111 = call i32 (...) @mach_task_self()
  %112 = load i32*, i32** %8, align 8
  %113 = ptrtoint i32* %112 to i32
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @vm_deallocate(i32 %111, i32 %113, i32 %117)
  %119 = call i32 (...) @mach_task_self()
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @mach_port_deallocate(i32 %119, i32 %120)
  store i8 63, i8* %15, align 1
  %122 = load i64, i64* %10, align 8
  switch i64 %122, label %128 [
    i64 131, label %123
    i64 130, label %124
    i64 128, label %125
    i64 129, label %126
    i64 132, label %127
  ]

123:                                              ; preds = %110
  store i8 82, i8* %15, align 1
  br label %128

124:                                              ; preds = %110
  store i8 83, i8* %15, align 1
  br label %128

125:                                              ; preds = %110
  store i8 87, i8* %15, align 1
  br label %128

126:                                              ; preds = %110
  store i8 85, i8* %15, align 1
  br label %128

127:                                              ; preds = %110
  store i8 72, i8* %15, align 1
  br label %128

128:                                              ; preds = %110, %127, %126, %125, %124, %123
  %129 = load i8, i8* %15, align 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i8 %129, i8* %131, align 4
  br label %132

132:                                              ; preds = %128, %61, %52, %39, %29, %22
  ret void
}

declare dso_local i64 @task_for_pid(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i64 @task_info(i32, i32, i32, i32*) #1

declare dso_local i64 @task_threads(i32, i32**, i32*) #1

declare dso_local i32 @mach_port_deallocate(i32, i32) #1

declare dso_local i64 @thread_info(i32, i32, i32, i32*) #1

declare dso_local i32 @vm_deallocate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
