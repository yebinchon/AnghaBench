; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_finish_object_disambiguation.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_finish_object_disambiguation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disambiguate_state = type { i32, i32, i32, i32, i64 (i32, i32*, i32)*, i32, i32, i32, i64 }
%struct.object_id = type { i32 }

@SHORT_NAME_AMBIGUOUS = common dso_local global i32 0, align 4
@MISSING_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disambiguate_state*, %struct.object_id*)* @finish_object_disambiguation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_object_disambiguation(%struct.disambiguate_state* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.disambiguate_state*, align 8
  %5 = alloca %struct.object_id*, align 8
  store %struct.disambiguate_state* %0, %struct.disambiguate_state** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %6 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %7 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SHORT_NAME_AMBIGUOUS, align 4
  store i32 %11, i32* %3, align 4
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %14 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @MISSING_OBJECT, align 4
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %12
  %20 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %21 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %19
  %25 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %26 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %31 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %30, i32 0, i32 4
  %32 = load i64 (i32, i32*, i32)*, i64 (i32, i32*, i32)** %31, align 8
  %33 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %34 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %37 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %36, i32 0, i32 1
  %38 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %39 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 %32(i32 %35, i32* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %29, %24
  %44 = phi i1 [ true, %24 ], [ %42, %29 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %47 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %19
  %49 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %50 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @SHORT_NAME_AMBIGUOUS, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %48
  %56 = load %struct.object_id*, %struct.object_id** %5, align 8
  %57 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %58 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %57, i32 0, i32 1
  %59 = call i32 @oidcpy(%struct.object_id* %56, i32* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %53, %17, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
