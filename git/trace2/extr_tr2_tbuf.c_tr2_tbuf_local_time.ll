; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tbuf.c_tr2_tbuf_local_time.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tbuf.c_tr2_tbuf_local_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr2_tbuf = type { i32 }
%struct.timeval = type { i64, i32 }
%struct.tm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%02d:%02d:%02d.%06ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tr2_tbuf_local_time(%struct.tr2_tbuf* %0) #0 {
  %2 = alloca %struct.tr2_tbuf*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.tm, align 4
  %5 = alloca i32, align 4
  store %struct.tr2_tbuf* %0, %struct.tr2_tbuf** %2, align 8
  %6 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = call i32 @localtime_r(i32* %5, %struct.tm* %4)
  %10 = load %struct.tr2_tbuf*, %struct.tr2_tbuf** %2, align 8
  %11 = getelementptr inbounds %struct.tr2_tbuf, %struct.tr2_tbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @xsnprintf(i32 %12, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i64 %20)
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @xsnprintf(i32, i32, i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
