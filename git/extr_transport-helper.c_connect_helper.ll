; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_connect_helper.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_connect_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"operation not supported by protocol\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"can't connect to subservice %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i8*, i8*, i32*)* @connect_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_helper(%struct.transport* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.transport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.helper_data*, align 8
  store %struct.transport* %0, %struct.transport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.transport*, %struct.transport** %5, align 8
  %11 = getelementptr inbounds %struct.transport, %struct.transport* %10, i32 0, i32 0
  %12 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  store %struct.helper_data* %12, %struct.helper_data** %9, align 8
  %13 = load %struct.transport*, %struct.transport** %5, align 8
  %14 = call i32 @get_helper(%struct.transport* %13)
  %15 = load %struct.helper_data*, %struct.helper_data** %9, align 8
  %16 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i32, ...) @die(i32 %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.transport*, %struct.transport** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @process_connect_service(%struct.transport* %23, i8* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i32, ...) @die(i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.helper_data*, %struct.helper_data** %9, align 8
  %34 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.helper_data*, %struct.helper_data** %9, align 8
  %41 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  ret i32 0
}

declare dso_local i32 @get_helper(%struct.transport*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @process_connect_service(%struct.transport*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
