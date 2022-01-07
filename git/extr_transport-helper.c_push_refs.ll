; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_push_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_push_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { %struct.TYPE_2__*, %struct.helper_data* }
%struct.TYPE_2__ = type { {}* }
%struct.helper_data = type { i64, i64 }
%struct.ref = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"No refs in common and none specified; doing nothing.\0APerhaps you should specify a branch such as 'master'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.ref*, i32)* @push_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_refs(%struct.transport* %0, %struct.ref* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.helper_data*, align 8
  store %struct.transport* %0, %struct.transport** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.transport*, %struct.transport** %5, align 8
  %10 = getelementptr inbounds %struct.transport, %struct.transport* %9, i32 0, i32 1
  %11 = load %struct.helper_data*, %struct.helper_data** %10, align 8
  store %struct.helper_data* %11, %struct.helper_data** %8, align 8
  %12 = load %struct.transport*, %struct.transport** %5, align 8
  %13 = call i64 @process_connect(%struct.transport* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.transport*, %struct.transport** %5, align 8
  %17 = call i32 @do_take_over(%struct.transport* %16)
  %18 = load %struct.transport*, %struct.transport** %5, align 8
  %19 = getelementptr inbounds %struct.transport, %struct.transport* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.transport*, %struct.ref*, i32)**
  %23 = load i32 (%struct.transport*, %struct.ref*, i32)*, i32 (%struct.transport*, %struct.ref*, i32)** %22, align 8
  %24 = load %struct.transport*, %struct.transport** %5, align 8
  %25 = load %struct.ref*, %struct.ref** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %23(%struct.transport* %24, %struct.ref* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %3
  %29 = load %struct.ref*, %struct.ref** %6, align 8
  %30 = icmp ne %struct.ref* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @stderr, align 4
  %33 = call i8* @_(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @fprintf(i32 %32, i8* %33)
  store i32 0, i32* %4, align 4
  br label %56

35:                                               ; preds = %28
  %36 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %37 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.transport*, %struct.transport** %5, align 8
  %42 = load %struct.ref*, %struct.ref** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @push_refs_with_push(%struct.transport* %41, %struct.ref* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %56

45:                                               ; preds = %35
  %46 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %47 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.transport*, %struct.transport** %5, align 8
  %52 = load %struct.ref*, %struct.ref** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @push_refs_with_export(%struct.transport* %51, %struct.ref* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %50, %40, %31, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @process_connect(%struct.transport*, i32) #1

declare dso_local i32 @do_take_over(%struct.transport*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @push_refs_with_push(%struct.transport*, %struct.ref*, i32) #1

declare dso_local i32 @push_refs_with_export(%struct.transport*, %struct.ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
