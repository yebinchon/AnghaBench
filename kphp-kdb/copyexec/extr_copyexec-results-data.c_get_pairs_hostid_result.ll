; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_pairs_hostid_result.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_pairs_hostid_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.pair_hostid_result = type { i32, i64 }

@hosts = common dso_local global i32 0, align 4
@HOSTS = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [34 x i8] c"get_pairs_hostid_result: *k = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pair_hostid_result* (i32*, i64, i32*)* @get_pairs_hostid_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pair_hostid_result* @get_pairs_hostid_result(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.pair_hostid_result*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pair_hostid_result*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @hosts, align 4
  %13 = call %struct.pair_hostid_result* @calloc(i32 %12, i32 16)
  store %struct.pair_hostid_result* %13, %struct.pair_hostid_result** %8, align 8
  %14 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %8, align 8
  %15 = icmp eq %struct.pair_hostid_result* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.pair_hostid_result* null, %struct.pair_hostid_result** %4, align 8
  br label %95

17:                                               ; preds = %3
  %18 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @tree_get_pairs_hostid_result(%struct.pair_hostid_result* %18, i32* %19, i64 %20, i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %28, i64 %32
  %34 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  br label %37

37:                                               ; preds = %27, %26
  %38 = phi i32 [ 1, %26 ], [ %36, %27 ]
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %87, %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @hosts, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %40
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %44
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %54
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @hosts, align 4
  %67 = icmp slt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %8, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %71, i64 %74
  %76 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %75, i32 0, i32 0
  store i32 %70, i32* %76, align 8
  %77 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %8, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %77, i64 %80
  %82 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %63, %54, %44
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %40

90:                                               ; preds = %40
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %8, align 8
  store %struct.pair_hostid_result* %94, %struct.pair_hostid_result** %4, align 8
  br label %95

95:                                               ; preds = %90, %16
  %96 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %4, align 8
  ret %struct.pair_hostid_result* %96
}

declare dso_local %struct.pair_hostid_result* @calloc(i32, i32) #1

declare dso_local i32 @tree_get_pairs_hostid_result(%struct.pair_hostid_result*, i32*, i64, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
