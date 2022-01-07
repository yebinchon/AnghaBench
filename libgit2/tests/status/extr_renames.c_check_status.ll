; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_check_status.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_entry = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@GIT_STATUS_INDEX_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.status_entry*, i64)* @check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_status(i32* %0, %struct.status_entry* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.status_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.status_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.status_entry* %1, %struct.status_entry** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @git_status_list_entrycount(i32* %13)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %12, align 8
  %17 = call i32 @cl_assert_equal_sz(i64 %15, i64 %16)
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %142, %3
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %145

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.TYPE_15__* @git_status_byindex(i32* %23, i64 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %7, align 8
  %26 = load %struct.status_entry*, %struct.status_entry** %5, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %26, i64 %27
  store %struct.status_entry* %28, %struct.status_entry** %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %55

40:                                               ; preds = %22
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  br label %53

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i8* [ %51, %45 ], [ null, %52 ]
  br label %55

55:                                               ; preds = %53, %33
  %56 = phi i8* [ %39, %33 ], [ %54, %53 ]
  store i8* %56, i8** %9, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  br label %83

68:                                               ; preds = %55
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = icmp ne %struct.TYPE_14__* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  br label %81

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %73
  %82 = phi i8* [ %79, %73 ], [ null, %80 ]
  br label %83

83:                                               ; preds = %81, %61
  %84 = phi i8* [ %67, %61 ], [ %82, %81 ]
  store i8* %84, i8** %10, align 8
  %85 = load %struct.status_entry*, %struct.status_entry** %8, align 8
  %86 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @cl_assert_equal_i_fmt(i32 %87, i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.status_entry*, %struct.status_entry** %8, align 8
  %93 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %83
  %97 = load i8*, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i32 @cl_assert(i32 %99)
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.status_entry*, %struct.status_entry** %8, align 8
  %103 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @cl_assert_equal_s(i8* %101, i64 %104)
  br label %111

106:                                              ; preds = %83
  %107 = load i8*, i8** %9, align 8
  %108 = icmp eq i8* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @cl_assert(i32 %109)
  br label %111

111:                                              ; preds = %106, %96
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %116 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %111
  %121 = load %struct.status_entry*, %struct.status_entry** %8, align 8
  %122 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i32 @cl_assert(i32 %128)
  %130 = load i8*, i8** %10, align 8
  %131 = load %struct.status_entry*, %struct.status_entry** %8, align 8
  %132 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @cl_assert_equal_s(i8* %130, i64 %133)
  br label %140

135:                                              ; preds = %120
  %136 = load i8*, i8** %10, align 8
  %137 = icmp eq i8* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i32 @cl_assert(i32 %138)
  br label %140

140:                                              ; preds = %135, %125
  br label %141

141:                                              ; preds = %140, %111
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %11, align 8
  br label %18

145:                                              ; preds = %18
  ret void
}

declare dso_local i64 @git_status_list_entrycount(i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i64, i64) #1

declare dso_local %struct.TYPE_15__* @git_status_byindex(i32*, i64) #1

declare dso_local i32 @cl_assert_equal_i_fmt(i32, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
