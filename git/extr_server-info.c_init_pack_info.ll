; ModuleID = '/home/carl/AnghaBench/git/extr_server-info.c_init_pack_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_server-info.c_init_pack_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.packed_git* }
%struct.packed_git = type { i32, i32, %struct.packed_git* }

@the_repository = common dso_local global i32 0, align 4
@num_pack = common dso_local global i32 0, align 4
@info = common dso_local global %struct.TYPE_5__** null, align 8
@compare_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @init_pack_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pack_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @the_repository, align 4
  %10 = call %struct.packed_git* @get_all_packs(i32 %9)
  store %struct.packed_git* %10, %struct.packed_git** %5, align 8
  br label %11

11:                                               ; preds = %51, %2
  %12 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %13 = icmp ne %struct.packed_git* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %16 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @file_exists(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %14
  br label %51

26:                                               ; preds = %19
  %27 = load i32, i32* @num_pack, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @num_pack, align 4
  store i32 %27, i32* %7, align 4
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @info, align 8
  %30 = load i32, i32* @num_pack, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @ALLOC_GROW(%struct.TYPE_5__** %29, i32 %30, i64 %31)
  %33 = call %struct.TYPE_5__* @xcalloc(i32 1, i32 4)
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @info, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 %36
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %37, align 8
  %38 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @info, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store %struct.packed_git* %38, %struct.packed_git** %44, align 8
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @info, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  br label %51

51:                                               ; preds = %26, %25
  %52 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %53 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %52, i32 0, i32 2
  %54 = load %struct.packed_git*, %struct.packed_git** %53, align 8
  store %struct.packed_git* %54, %struct.packed_git** %5, align 8
  br label %11

55:                                               ; preds = %11
  %56 = load i8*, i8** %3, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @read_pack_info_file(i8* %62)
  store i32 %63, i32* %6, align 4
  br label %65

64:                                               ; preds = %58, %55
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %61
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %81, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @num_pack, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @info, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %74, i64 %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  br label %80

80:                                               ; preds = %73, %70
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %66

84:                                               ; preds = %66
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @info, align 8
  %86 = load i32, i32* @num_pack, align 4
  %87 = load i32, i32* @compare_info, align 4
  %88 = call i32 @QSORT(%struct.TYPE_5__** %85, i32 %86, i32 %87)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %101, %84
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @num_pack, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @info, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %95, i64 %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %89

104:                                              ; preds = %89
  ret void
}

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i32 @file_exists(i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_5__**, i32, i64) #1

declare dso_local %struct.TYPE_5__* @xcalloc(i32, i32) #1

declare dso_local i32 @read_pack_info_file(i8*) #1

declare dso_local i32 @QSORT(%struct.TYPE_5__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
