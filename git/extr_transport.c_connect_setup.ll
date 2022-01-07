; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_connect_setup.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_connect_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i64, i32, i32, %struct.git_transport_data* }
%struct.git_transport_data = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@CONNECT_VERBOSE = common dso_local global i32 0, align 4
@CONNECT_IPV4 = common dso_local global i32 0, align 4
@CONNECT_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i32)* @connect_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_setup(%struct.transport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.transport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.git_transport_data*, align 8
  %7 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.transport*, %struct.transport** %4, align 8
  %9 = getelementptr inbounds %struct.transport, %struct.transport* %8, i32 0, i32 3
  %10 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  store %struct.git_transport_data* %10, %struct.git_transport_data** %6, align 8
  %11 = load %struct.transport*, %struct.transport** %4, align 8
  %12 = getelementptr inbounds %struct.transport, %struct.transport* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @CONNECT_VERBOSE, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.git_transport_data*, %struct.git_transport_data** %6, align 8
  %21 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %63

25:                                               ; preds = %18
  %26 = load %struct.transport*, %struct.transport** %4, align 8
  %27 = getelementptr inbounds %struct.transport, %struct.transport* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %38 [
    i32 130, label %29
    i32 129, label %30
    i32 128, label %34
  ]

29:                                               ; preds = %25
  br label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @CONNECT_IPV4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %25
  %35 = load i32, i32* @CONNECT_IPV6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %25, %34, %30, %29
  %39 = load %struct.git_transport_data*, %struct.git_transport_data** %6, align 8
  %40 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.transport*, %struct.transport** %4, align 8
  %43 = getelementptr inbounds %struct.transport, %struct.transport* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.git_transport_data*, %struct.git_transport_data** %6, align 8
  %49 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  br label %57

52:                                               ; preds = %38
  %53 = load %struct.git_transport_data*, %struct.git_transport_data** %6, align 8
  %54 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i32 [ %51, %47 ], [ %56, %52 ]
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @git_connect(i32 %41, i32 %44, i32 %58, i32 %59)
  %61 = load %struct.git_transport_data*, %struct.git_transport_data** %6, align 8
  %62 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %24
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @git_connect(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
