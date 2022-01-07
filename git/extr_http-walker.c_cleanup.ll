; ModuleID = '/home/carl/AnghaBench/git/extr_http-walker.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-walker.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { %struct.walker_data* }
%struct.walker_data = type { %struct.walker_data*, %struct.walker_data*, %struct.walker_data* }
%struct.alt_base = type { %struct.alt_base*, %struct.alt_base*, %struct.alt_base* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.walker*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup(%struct.walker* %0) #0 {
  %2 = alloca %struct.walker*, align 8
  %3 = alloca %struct.walker_data*, align 8
  %4 = alloca %struct.alt_base*, align 8
  %5 = alloca %struct.alt_base*, align 8
  store %struct.walker* %0, %struct.walker** %2, align 8
  %6 = load %struct.walker*, %struct.walker** %2, align 8
  %7 = getelementptr inbounds %struct.walker, %struct.walker* %6, i32 0, i32 0
  %8 = load %struct.walker_data*, %struct.walker_data** %7, align 8
  store %struct.walker_data* %8, %struct.walker_data** %3, align 8
  %9 = load %struct.walker_data*, %struct.walker_data** %3, align 8
  %10 = icmp ne %struct.walker_data* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.walker_data*, %struct.walker_data** %3, align 8
  %13 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %12, i32 0, i32 2
  %14 = load %struct.walker_data*, %struct.walker_data** %13, align 8
  %15 = bitcast %struct.walker_data* %14 to %struct.alt_base*
  store %struct.alt_base* %15, %struct.alt_base** %4, align 8
  br label %16

16:                                               ; preds = %19, %11
  %17 = load %struct.alt_base*, %struct.alt_base** %4, align 8
  %18 = icmp ne %struct.alt_base* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.alt_base*, %struct.alt_base** %4, align 8
  %21 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %20, i32 0, i32 1
  %22 = load %struct.alt_base*, %struct.alt_base** %21, align 8
  store %struct.alt_base* %22, %struct.alt_base** %5, align 8
  %23 = load %struct.alt_base*, %struct.alt_base** %4, align 8
  %24 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %23, i32 0, i32 0
  %25 = load %struct.alt_base*, %struct.alt_base** %24, align 8
  %26 = bitcast %struct.alt_base* %25 to %struct.walker_data*
  %27 = call i32 @free(%struct.walker_data* %26)
  %28 = load %struct.alt_base*, %struct.alt_base** %4, align 8
  %29 = bitcast %struct.alt_base* %28 to %struct.walker_data*
  %30 = call i32 @free(%struct.walker_data* %29)
  %31 = load %struct.alt_base*, %struct.alt_base** %5, align 8
  store %struct.alt_base* %31, %struct.alt_base** %4, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.walker_data*, %struct.walker_data** %3, align 8
  %34 = call i32 @free(%struct.walker_data* %33)
  %35 = load %struct.walker*, %struct.walker** %2, align 8
  %36 = getelementptr inbounds %struct.walker, %struct.walker* %35, i32 0, i32 0
  store %struct.walker_data* null, %struct.walker_data** %36, align 8
  br label %37

37:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @free(%struct.walker_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
