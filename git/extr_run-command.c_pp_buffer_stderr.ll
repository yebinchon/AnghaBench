; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_pp_buffer_stderr.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_pp_buffer_stderr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parallel_processes = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@GIT_CP_WORKING = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@GIT_CP_WAIT_CLEANUP = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parallel_processes*, i32)* @pp_buffer_stderr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_buffer_stderr(%struct.parallel_processes* %0, i32 %1) #0 {
  %3 = alloca %struct.parallel_processes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.parallel_processes* %0, %struct.parallel_processes** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %21, %2
  %8 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %9 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %12 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @poll(%struct.TYPE_6__* %10, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %7

22:                                               ; preds = %17
  %23 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %24 = call i32 @pp_cleanup(%struct.parallel_processes* %23)
  %25 = call i32 @die_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %7

26:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %110, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %30 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %113

33:                                               ; preds = %27
  %34 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %35 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GIT_CP_WORKING, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %109

44:                                               ; preds = %33
  %45 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %46 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @POLLIN, align 4
  %54 = load i32, i32* @POLLHUP, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %44
  %59 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %60 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %67 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strbuf_read_once(i32* %65, i32 %74, i32 0)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %58
  %79 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %80 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @close(i32 %87)
  %89 = load i64, i64* @GIT_CP_WAIT_CLEANUP, align 8
  %90 = load %struct.parallel_processes*, %struct.parallel_processes** %3, align 8
  %91 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i64 %89, i64* %96, align 8
  br label %108

97:                                               ; preds = %58
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i64, i64* @errno, align 8
  %102 = load i64, i64* @EAGAIN, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 @die_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %100
  br label %107

107:                                              ; preds = %106, %97
  br label %108

108:                                              ; preds = %107, %78
  br label %109

109:                                              ; preds = %108, %44, %33
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %27

113:                                              ; preds = %27
  ret void
}

declare dso_local i32 @poll(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pp_cleanup(%struct.parallel_processes*) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @strbuf_read_once(i32*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
