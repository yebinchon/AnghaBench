; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_is_original_commit_empty.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_is_original_commit_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.object_id* }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.commit* }

@.str = private unnamed_addr constant [26 x i8] c"could not parse commit %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"could not parse parent commit %s\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*)* @is_original_commit_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_original_commit_empty(%struct.commit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  %6 = load %struct.commit*, %struct.commit** %3, align 8
  %7 = call i64 @parse_commit(%struct.commit* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.commit*, %struct.commit** %3, align 8
  %12 = getelementptr inbounds %struct.commit, %struct.commit* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @oid_to_hex(i32* %13)
  %15 = call i32 @error(i32 %10, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.commit*, %struct.commit** %3, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.commit*, %struct.commit** %3, align 8
  %23 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.commit*, %struct.commit** %25, align 8
  store %struct.commit* %26, %struct.commit** %5, align 8
  %27 = load %struct.commit*, %struct.commit** %5, align 8
  %28 = call i64 @parse_commit(%struct.commit* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.commit*, %struct.commit** %5, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @oid_to_hex(i32* %34)
  %36 = call i32 @error(i32 %31, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %21
  %38 = load %struct.commit*, %struct.commit** %5, align 8
  %39 = call %struct.object_id* @get_commit_tree_oid(%struct.commit* %38)
  store %struct.object_id* %39, %struct.object_id** %4, align 8
  br label %44

40:                                               ; preds = %16
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.object_id*, %struct.object_id** %42, align 8
  store %struct.object_id* %43, %struct.object_id** %4, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.object_id*, %struct.object_id** %4, align 8
  %46 = load %struct.commit*, %struct.commit** %3, align 8
  %47 = call %struct.object_id* @get_commit_tree_oid(%struct.commit* %46)
  %48 = call i32 @oideq(%struct.object_id* %45, %struct.object_id* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %30, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local %struct.object_id* @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
