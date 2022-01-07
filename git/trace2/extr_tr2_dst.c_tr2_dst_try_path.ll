; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_dst.c_tr2_dst_try_path.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_dst.c_tr2_dst_try_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr2_dst = type { i32, i32, i32, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"trace2: could not open '%s' for '%s' tracing: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tr2_dst*, i8*)* @tr2_dst_try_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr2_dst_try_path(%struct.tr2_dst* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tr2_dst*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tr2_dst* %0, %struct.tr2_dst** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @O_WRONLY, align 4
  %9 = load i32, i32* @O_APPEND, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* %7, i32 %12, i32 438)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = call i64 (...) @tr2_dst_want_warning()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.tr2_dst*, %struct.tr2_dst** %4, align 8
  %22 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tr2_sysenv_display_name(i32 %23)
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %19, %16
  %29 = load %struct.tr2_dst*, %struct.tr2_dst** %4, align 8
  %30 = call i32 @tr2_dst_trace_disable(%struct.tr2_dst* %29)
  store i32 0, i32* %3, align 4
  br label %42

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.tr2_dst*, %struct.tr2_dst** %4, align 8
  %34 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tr2_dst*, %struct.tr2_dst** %4, align 8
  %36 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.tr2_dst*, %struct.tr2_dst** %4, align 8
  %38 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %37, i32 0, i32 2
  store i32 1, i32* %38, align 4
  %39 = load %struct.tr2_dst*, %struct.tr2_dst** %4, align 8
  %40 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @tr2_dst_want_warning(...) #1

declare dso_local i32 @warning(i8*, i8*, i32, i32) #1

declare dso_local i32 @tr2_sysenv_display_name(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @tr2_dst_trace_disable(%struct.tr2_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
