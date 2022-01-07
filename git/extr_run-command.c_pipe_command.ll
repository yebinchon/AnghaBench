; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_pipe_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_pipe_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }
%struct.strbuf = type { i32 }
%struct.io_pump = type { i32, %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, %struct.strbuf* }
%struct.TYPE_4__ = type { i8*, i64 }

@POLLOUT = common dso_local global i8* null, align 8
@POLLIN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pipe_command(%struct.child_process* %0, i8* %1, i64 %2, %struct.strbuf* %3, i64 %4, %struct.strbuf* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.child_process*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.strbuf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [3 x %struct.io_pump], align 16
  %17 = alloca i32, align 4
  store %struct.child_process* %0, %struct.child_process** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.strbuf* %3, %struct.strbuf** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.strbuf* %5, %struct.strbuf** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load %struct.child_process*, %struct.child_process** %9, align 8
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %7
  %24 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %25 = icmp ne %struct.strbuf* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.child_process*, %struct.child_process** %9, align 8
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %31 = icmp ne %struct.strbuf* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.child_process*, %struct.child_process** %9, align 8
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %33, i32 0, i32 2
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.child_process*, %struct.child_process** %9, align 8
  %37 = call i64 @start_command(%struct.child_process* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %8, align 4
  br label %147

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load %struct.child_process*, %struct.child_process** %9, align 8
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 16
  %51 = load i8*, i8** @POLLOUT, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %54, i32 0, i32 2
  store i8* %51, i8** %55, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i8* %56, i8** %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 %63, i64* %69, align 8
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %43, %40
  %73 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %74 = icmp ne %struct.strbuf* %73, null
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = load %struct.child_process*, %struct.child_process** %9, align 8
  %77 = getelementptr inbounds %struct.child_process, %struct.child_process* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 16
  %83 = load i8*, i8** @POLLIN, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %86, i32 0, i32 2
  store i8* %83, i8** %87, align 8
  %88 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store %struct.strbuf* %88, %struct.strbuf** %94, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i64 %95, i64* %101, align 8
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %75, %72
  %105 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %106 = icmp ne %struct.strbuf* %105, null
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load %struct.child_process*, %struct.child_process** %9, align 8
  %109 = getelementptr inbounds %struct.child_process, %struct.child_process* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 16
  %115 = load i8*, i8** @POLLIN, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %118, i32 0, i32 2
  store i8* %115, i8** %119, align 8
  %120 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store %struct.strbuf* %120, %struct.strbuf** %126, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i64 %127, i64* %133, align 8
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %107, %104
  %137 = getelementptr inbounds [3 x %struct.io_pump], [3 x %struct.io_pump]* %16, i64 0, i64 0
  %138 = load i32, i32* %17, align 4
  %139 = call i64 @pump_io(%struct.io_pump* %137, i32 %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.child_process*, %struct.child_process** %9, align 8
  %143 = call i32 @finish_command(%struct.child_process* %142)
  store i32 -1, i32* %8, align 4
  br label %147

144:                                              ; preds = %136
  %145 = load %struct.child_process*, %struct.child_process** %9, align 8
  %146 = call i32 @finish_command(%struct.child_process* %145)
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %144, %141, %39
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i64 @start_command(%struct.child_process*) #1

declare dso_local i64 @pump_io(%struct.io_pump*, i32) #1

declare dso_local i32 @finish_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
