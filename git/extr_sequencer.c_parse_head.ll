; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_parse_head.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_parse_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"could not parse HEAD\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"HEAD %s is not a commit!\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"could not parse HEAD commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.commit**)* @parse_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_head(%struct.repository* %0, %struct.commit** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit**, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit** %1, %struct.commit*** %5, align 8
  %8 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.commit* null, %struct.commit** %6, align 8
  br label %37

11:                                               ; preds = %2
  %12 = load %struct.repository*, %struct.repository** %4, align 8
  %13 = call %struct.commit* @lookup_commit_reference(%struct.repository* %12, %struct.object_id* %7)
  store %struct.commit* %13, %struct.commit** %6, align 8
  %14 = load %struct.commit*, %struct.commit** %6, align 8
  %15 = icmp ne %struct.commit* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @error(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %11
  %20 = load %struct.commit*, %struct.commit** %6, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @oideq(%struct.object_id* %7, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @oid_to_hex(%struct.object_id* %7)
  %28 = call i32 @warning(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.commit*, %struct.commit** %6, align 8
  %31 = call i64 @parse_commit(%struct.commit* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 @error(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %10
  %38 = load %struct.commit*, %struct.commit** %6, align 8
  %39 = load %struct.commit**, %struct.commit*** %5, align 8
  store %struct.commit* %38, %struct.commit** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %33, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference(%struct.repository*, %struct.object_id*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oideq(%struct.object_id*, i32*) #1

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
