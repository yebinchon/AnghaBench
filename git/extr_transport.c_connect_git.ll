; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_connect_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_connect_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32, %struct.git_transport_data* }
%struct.git_transport_data = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i8*, i8*, i32*)* @connect_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_git(%struct.transport* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.transport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.git_transport_data*, align 8
  store %struct.transport* %0, %struct.transport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.transport*, %struct.transport** %5, align 8
  %11 = getelementptr inbounds %struct.transport, %struct.transport* %10, i32 0, i32 1
  %12 = load %struct.git_transport_data*, %struct.git_transport_data** %11, align 8
  store %struct.git_transport_data* %12, %struct.git_transport_data** %9, align 8
  %13 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %14 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.transport*, %struct.transport** %5, align 8
  %17 = getelementptr inbounds %struct.transport, %struct.transport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @git_connect(i32* %15, i32 %18, i8* %19, i32 0)
  %21 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %22 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %24 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %31 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %36, align 4
  ret i32 0
}

declare dso_local i32 @git_connect(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
