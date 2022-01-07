; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_prepare_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_prepare_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prepare_pack_data = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.packed_git* }
%struct.packed_git = type { i32, %struct.packed_git* }

@.str = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"multi-pack-index\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".bitmap\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".keep\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c".promisor\00", align 1
@PACKDIR_FILE_GARBAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*)* @prepare_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_pack(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.prepare_pack_data*, align 8
  %10 = alloca %struct.packed_git*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.prepare_pack_data*
  store %struct.prepare_pack_data* %14, %struct.prepare_pack_data** %9, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strip_suffix_mem(i8* %16, i64* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %4
  %20 = load %struct.prepare_pack_data*, %struct.prepare_pack_data** %9, align 8
  %21 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.prepare_pack_data*, %struct.prepare_pack_data** %9, align 8
  %26 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @midx_contains_pack(i64 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %86, label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.prepare_pack_data*, %struct.prepare_pack_data** %9, align 8
  %33 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.packed_git*, %struct.packed_git** %37, align 8
  store %struct.packed_git* %38, %struct.packed_git** %10, align 8
  br label %39

39:                                               ; preds = %62, %31
  %40 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %41 = icmp ne %struct.packed_git* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %44 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @strip_suffix(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %54 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @memcmp(i32 %55, i8* %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %66

61:                                               ; preds = %52, %48, %42
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %64 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %63, i32 0, i32 1
  %65 = load %struct.packed_git*, %struct.packed_git** %64, align 8
  store %struct.packed_git* %65, %struct.packed_git** %10, align 8
  br label %39

66:                                               ; preds = %60, %39
  %67 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %68 = icmp ne %struct.packed_git* %67, null
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.prepare_pack_data*, %struct.prepare_pack_data** %9, align 8
  %73 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.packed_git* @add_packed_git(i8* %70, i64 %71, i32 %74)
  store %struct.packed_git* %75, %struct.packed_git** %10, align 8
  %76 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %77 = icmp ne %struct.packed_git* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.prepare_pack_data*, %struct.prepare_pack_data** %9, align 8
  %80 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %83 = call i32 @install_packed_git(%struct.TYPE_4__* %81, %struct.packed_git* %82)
  br label %84

84:                                               ; preds = %78, %69
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85, %24, %4
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %121

91:                                               ; preds = %86
  %92 = load i8*, i8** %7, align 8
  %93 = call i64 @ends_with(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @ends_with(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %7, align 8
  %101 = call i64 @ends_with(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @ends_with(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = call i64 @ends_with(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107, %103, %99, %95, %91
  %112 = load %struct.prepare_pack_data*, %struct.prepare_pack_data** %9, align 8
  %113 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @string_list_append(i32 %114, i8* %115)
  br label %121

117:                                              ; preds = %107
  %118 = load i32, i32* @PACKDIR_FILE_GARBAGE, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @report_garbage(i32 %118, i8* %119)
  br label %121

121:                                              ; preds = %90, %117, %111
  ret void
}

declare dso_local i64 @strip_suffix_mem(i8*, i64*, i8*) #1

declare dso_local i64 @midx_contains_pack(i64, i8*) #1

declare dso_local i64 @strip_suffix(i32, i8*, i64*) #1

declare dso_local i32 @memcmp(i32, i8*, i64) #1

declare dso_local %struct.packed_git* @add_packed_git(i8*, i64, i32) #1

declare dso_local i32 @install_packed_git(%struct.TYPE_4__*, %struct.packed_git*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @ends_with(i8*, i8*) #1

declare dso_local i32 @string_list_append(i32, i8*) #1

declare dso_local i32 @report_garbage(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
