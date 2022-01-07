; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_fetch_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_fetch_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.remote = type { i32* }
%struct.transport = type { i32 }

@fetch_if_missing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Remote with no URL\00", align 1
@TRANS_OPT_FROM_PROMISOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@TRANS_OPT_NO_DEPENDENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ref*)* @fetch_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_refs(i8* %0, %struct.ref* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.remote*, align 8
  %6 = alloca %struct.transport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  %9 = load i32, i32* @fetch_if_missing, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* @fetch_if_missing, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.remote* @remote_get(i8* %10)
  store %struct.remote* %11, %struct.remote** %5, align 8
  %12 = load %struct.remote*, %struct.remote** %5, align 8
  %13 = getelementptr inbounds %struct.remote, %struct.remote* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @die(i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.remote*, %struct.remote** %5, align 8
  %23 = load %struct.remote*, %struct.remote** %5, align 8
  %24 = getelementptr inbounds %struct.remote, %struct.remote* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.transport* @transport_get(%struct.remote* %22, i32 %27)
  store %struct.transport* %28, %struct.transport** %6, align 8
  %29 = load %struct.transport*, %struct.transport** %6, align 8
  %30 = load i32, i32* @TRANS_OPT_FROM_PROMISOR, align 4
  %31 = call i32 @transport_set_option(%struct.transport* %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.transport*, %struct.transport** %6, align 8
  %33 = load i32, i32* @TRANS_OPT_NO_DEPENDENTS, align 4
  %34 = call i32 @transport_set_option(%struct.transport* %32, i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.transport*, %struct.transport** %6, align 8
  %36 = load %struct.ref*, %struct.ref** %4, align 8
  %37 = call i32 @transport_fetch_refs(%struct.transport* %35, %struct.ref* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* @fetch_if_missing, align 4
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.remote* @remote_get(i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.transport* @transport_get(%struct.remote*, i32) #1

declare dso_local i32 @transport_set_option(%struct.transport*, i32, i8*) #1

declare dso_local i32 @transport_fetch_refs(%struct.transport*, %struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
