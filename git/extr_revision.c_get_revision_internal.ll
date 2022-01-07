; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_get_revision_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_get_revision_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list*, %struct.TYPE_3__ }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.object }
%struct.object = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rev_info = type { i32, i64, i64, i32, i32 }

@SHOWN = common dso_local global i32 0, align 4
@CHILD_SHOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.rev_info*)* @get_revision_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @get_revision_internal(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.object*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* null, %struct.commit** %4, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %8 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 4
  %14 = call %struct.commit* @pop_commit(i32* %13)
  store %struct.commit* %14, %struct.commit** %4, align 8
  %15 = load %struct.commit*, %struct.commit** %4, align 8
  %16 = icmp ne %struct.commit* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, i32* @SHOWN, align 4
  %19 = load %struct.commit*, %struct.commit** %4, align 8
  %20 = getelementptr inbounds %struct.commit, %struct.commit* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %17, %11
  %25 = load %struct.commit*, %struct.commit** %4, align 8
  store %struct.commit* %25, %struct.commit** %2, align 8
  br label %132

26:                                               ; preds = %1
  %27 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %33 = call %struct.commit* @get_revision_1(%struct.rev_info* %32)
  store %struct.commit* %33, %struct.commit** %4, align 8
  %34 = load %struct.commit*, %struct.commit** %4, align 8
  %35 = icmp ne %struct.commit* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %52, %36
  %38 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %39 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %44 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %48 = call %struct.commit* @get_revision_1(%struct.rev_info* %47)
  store %struct.commit* %48, %struct.commit** %4, align 8
  %49 = load %struct.commit*, %struct.commit** %4, align 8
  %50 = icmp ne %struct.commit* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %53

52:                                               ; preds = %42
  br label %37

53:                                               ; preds = %51, %37
  br label %54

54:                                               ; preds = %53, %31
  %55 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %56 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %61 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %26
  %66 = load %struct.commit*, %struct.commit** %4, align 8
  %67 = icmp ne %struct.commit* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* @SHOWN, align 4
  %70 = load %struct.commit*, %struct.commit** %4, align 8
  %71 = getelementptr inbounds %struct.commit, %struct.commit* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %65
  %76 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %77 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load %struct.commit*, %struct.commit** %4, align 8
  store %struct.commit* %81, %struct.commit** %2, align 8
  br label %132

82:                                               ; preds = %75
  %83 = load %struct.commit*, %struct.commit** %4, align 8
  %84 = icmp ne %struct.commit* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %87 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %86, i32 0, i32 0
  store i32 2, i32* %87, align 8
  %88 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %89 = call i32 @create_boundary_commit_list(%struct.rev_info* %88)
  %90 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %91 = call %struct.commit* @get_revision_internal(%struct.rev_info* %90)
  store %struct.commit* %91, %struct.commit** %2, align 8
  br label %132

92:                                               ; preds = %82
  %93 = load %struct.commit*, %struct.commit** %4, align 8
  %94 = getelementptr inbounds %struct.commit, %struct.commit* %93, i32 0, i32 0
  %95 = load %struct.commit_list*, %struct.commit_list** %94, align 8
  store %struct.commit_list* %95, %struct.commit_list** %5, align 8
  br label %96

96:                                               ; preds = %126, %92
  %97 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %98 = icmp ne %struct.commit_list* %97, null
  br i1 %98, label %99, label %130

99:                                               ; preds = %96
  %100 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %101 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store %struct.object* %103, %struct.object** %6, align 8
  %104 = load %struct.object*, %struct.object** %6, align 8
  %105 = getelementptr inbounds %struct.object, %struct.object* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CHILD_SHOWN, align 4
  %108 = load i32, i32* @SHOWN, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %126

113:                                              ; preds = %99
  %114 = load i32, i32* @CHILD_SHOWN, align 4
  %115 = load %struct.object*, %struct.object** %6, align 8
  %116 = getelementptr inbounds %struct.object, %struct.object* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %120 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %119, i32 0, i32 3
  %121 = call i32 @gc_boundary(i32* %120)
  %122 = load %struct.object*, %struct.object** %6, align 8
  %123 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %124 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %123, i32 0, i32 3
  %125 = call i32 @add_object_array(%struct.object* %122, i32* null, i32* %124)
  br label %126

126:                                              ; preds = %113, %112
  %127 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %128 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %127, i32 0, i32 1
  %129 = load %struct.commit_list*, %struct.commit_list** %128, align 8
  store %struct.commit_list* %129, %struct.commit_list** %5, align 8
  br label %96

130:                                              ; preds = %96
  %131 = load %struct.commit*, %struct.commit** %4, align 8
  store %struct.commit* %131, %struct.commit** %2, align 8
  br label %132

132:                                              ; preds = %130, %85, %80, %24
  %133 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %133
}

declare dso_local %struct.commit* @pop_commit(i32*) #1

declare dso_local %struct.commit* @get_revision_1(%struct.rev_info*) #1

declare dso_local i32 @create_boundary_commit_list(%struct.rev_info*) #1

declare dso_local i32 @gc_boundary(i32*) #1

declare dso_local i32 @add_object_array(%struct.object*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
