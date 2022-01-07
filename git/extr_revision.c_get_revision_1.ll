; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_get_revision_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_get_revision_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rev_info = type { i32, i32, i32, i32, i64, i64, i32 }

@ADDED = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to traverse parents of commit %s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to simplify parents of commit %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.rev_info*)* @get_revision_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @get_revision_1(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  br label %5

5:                                                ; preds = %1, %67, %112
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.commit* @next_reflog_entry(i64 %13)
  store %struct.commit* %14, %struct.commit** %4, align 8
  br label %28

15:                                               ; preds = %5
  %16 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %22 = call %struct.commit* @next_topo_commit(%struct.rev_info* %21)
  store %struct.commit* %22, %struct.commit** %4, align 8
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %24, i32 0, i32 3
  %26 = call %struct.commit* @pop_commit(i32* %25)
  store %struct.commit* %26, %struct.commit** %4, align 8
  br label %27

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %10
  %29 = load %struct.commit*, %struct.commit** %4, align 8
  %30 = icmp ne %struct.commit* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %130

32:                                               ; preds = %28
  %33 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %34 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32, i32* @ADDED, align 4
  %39 = load i32, i32* @SEEN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SHOWN, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.commit*, %struct.commit** %4, align 8
  %45 = getelementptr inbounds %struct.commit, %struct.commit* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %37, %32
  %50 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %51 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %108, label %54

54:                                               ; preds = %49
  %55 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %56 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %61 = load %struct.commit*, %struct.commit** %4, align 8
  %62 = call i32 @comparison_date(%struct.rev_info* %60, %struct.commit* %61)
  %63 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %64 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %5

68:                                               ; preds = %59, %54
  %69 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %70 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %75 = load %struct.commit*, %struct.commit** %4, align 8
  %76 = call i32 @try_to_simplify_commit(%struct.rev_info* %74, %struct.commit* %75)
  br label %107

77:                                               ; preds = %68
  %78 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %79 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %84 = load %struct.commit*, %struct.commit** %4, align 8
  %85 = call i32 @expand_topo_walk(%struct.rev_info* %83, %struct.commit* %84)
  br label %106

86:                                               ; preds = %77
  %87 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %88 = load %struct.commit*, %struct.commit** %4, align 8
  %89 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %90 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %89, i32 0, i32 3
  %91 = call i64 @process_parents(%struct.rev_info* %87, %struct.commit* %88, i32* %90, i32* null)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %95 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.commit*, %struct.commit** %4, align 8
  %100 = getelementptr inbounds %struct.commit, %struct.commit* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = call i32 @oid_to_hex(i32* %101)
  %103 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %93
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %105, %82
  br label %107

107:                                              ; preds = %106, %73
  br label %108

108:                                              ; preds = %107, %49
  %109 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %110 = load %struct.commit*, %struct.commit** %4, align 8
  %111 = call i32 @simplify_commit(%struct.rev_info* %109, %struct.commit* %110)
  switch i32 %111, label %119 [
    i32 128, label %112
    i32 129, label %113
  ]

112:                                              ; preds = %108
  br label %5

113:                                              ; preds = %108
  %114 = load %struct.commit*, %struct.commit** %4, align 8
  %115 = getelementptr inbounds %struct.commit, %struct.commit* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = call i32 @oid_to_hex(i32* %116)
  %118 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %108, %113
  %120 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %121 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %126 = load %struct.commit*, %struct.commit** %4, align 8
  %127 = call i32 @track_linear(%struct.rev_info* %125, %struct.commit* %126)
  br label %128

128:                                              ; preds = %124, %119
  %129 = load %struct.commit*, %struct.commit** %4, align 8
  store %struct.commit* %129, %struct.commit** %2, align 8
  br label %130

130:                                              ; preds = %128, %31
  %131 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %131
}

declare dso_local %struct.commit* @next_reflog_entry(i64) #1

declare dso_local %struct.commit* @next_topo_commit(%struct.rev_info*) #1

declare dso_local %struct.commit* @pop_commit(i32*) #1

declare dso_local i32 @comparison_date(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @try_to_simplify_commit(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @expand_topo_walk(%struct.rev_info*, %struct.commit*) #1

declare dso_local i64 @process_parents(%struct.rev_info*, %struct.commit*, i32*, i32*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @simplify_commit(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @track_linear(%struct.rev_info*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
