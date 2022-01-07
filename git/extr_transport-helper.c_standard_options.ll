; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_standard_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_standard_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"verbosity\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transport*)* @standard_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @standard_options(%struct.transport* %0) #0 {
  %2 = alloca %struct.transport*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %2, align 8
  %5 = load %struct.transport*, %struct.transport** %2, align 8
  %6 = getelementptr inbounds %struct.transport, %struct.transport* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.transport*, %struct.transport** %2, align 8
  %9 = load %struct.transport*, %struct.transport** %2, align 8
  %10 = getelementptr inbounds %struct.transport, %struct.transport* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @set_helper_option(%struct.transport* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @xsnprintf(i8* %16, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load %struct.transport*, %struct.transport** %2, align 8
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %22 = call i32 @set_helper_option(%struct.transport* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  %23 = load %struct.transport*, %struct.transport** %2, align 8
  %24 = getelementptr inbounds %struct.transport, %struct.transport* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %33 [
    i32 130, label %26
    i32 129, label %27
    i32 128, label %30
  ]

26:                                               ; preds = %1
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.transport*, %struct.transport** %2, align 8
  %29 = call i32 @set_helper_option(%struct.transport* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.transport*, %struct.transport** %2, align 8
  %32 = call i32 @set_helper_option(%struct.transport* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %33

33:                                               ; preds = %1, %30, %27, %26
  ret void
}

declare dso_local i32 @set_helper_option(%struct.transport*, i8*, i8*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
