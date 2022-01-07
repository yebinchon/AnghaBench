; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_take_over.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_take_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32, i32*, i32*, %struct.git_transport_data* }
%struct.git_transport_data = type { i32, i64, %struct.child_process*, i32* }
%struct.child_process = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"taking over transport requires non-NULL smart_options field.\00", align 1
@taken_over_vtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_take_over(%struct.transport* %0, %struct.child_process* %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca %struct.child_process*, align 8
  %5 = alloca %struct.git_transport_data*, align 8
  store %struct.transport* %0, %struct.transport** %3, align 8
  store %struct.child_process* %1, %struct.child_process** %4, align 8
  %6 = load %struct.transport*, %struct.transport** %3, align 8
  %7 = getelementptr inbounds %struct.transport, %struct.transport* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @BUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = call %struct.git_transport_data* @xcalloc(i32 1, i32 32)
  store %struct.git_transport_data* %13, %struct.git_transport_data** %5, align 8
  %14 = load %struct.transport*, %struct.transport** %3, align 8
  %15 = getelementptr inbounds %struct.transport, %struct.transport* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %19 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.child_process*, %struct.child_process** %4, align 8
  %21 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %22 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %21, i32 0, i32 2
  store %struct.child_process* %20, %struct.child_process** %22, align 8
  %23 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %24 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %23, i32 0, i32 2
  %25 = load %struct.child_process*, %struct.child_process** %24, align 8
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %29 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %33 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %32, i32 0, i32 2
  %34 = load %struct.child_process*, %struct.child_process** %33, align 8
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %38 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %42 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %44 = load %struct.transport*, %struct.transport** %3, align 8
  %45 = getelementptr inbounds %struct.transport, %struct.transport* %44, i32 0, i32 3
  store %struct.git_transport_data* %43, %struct.git_transport_data** %45, align 8
  %46 = load %struct.transport*, %struct.transport** %3, align 8
  %47 = getelementptr inbounds %struct.transport, %struct.transport* %46, i32 0, i32 2
  store i32* @taken_over_vtable, i32** %47, align 8
  %48 = load %struct.git_transport_data*, %struct.git_transport_data** %5, align 8
  %49 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %48, i32 0, i32 0
  %50 = load %struct.transport*, %struct.transport** %3, align 8
  %51 = getelementptr inbounds %struct.transport, %struct.transport* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.transport*, %struct.transport** %3, align 8
  %53 = getelementptr inbounds %struct.transport, %struct.transport* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  ret void
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.git_transport_data* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
