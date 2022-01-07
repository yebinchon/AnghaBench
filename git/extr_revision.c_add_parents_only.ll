; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_parents_only.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_parents_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64 }
%struct.object_id = type { i32 }
%struct.object = type { i64, i32 }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.object }
%struct.tag = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@BOTTOM = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@REV_CMD_PARENTS_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, i8*, i32, i32)* @add_parents_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_parents_only(%struct.rev_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.object*, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.commit_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %15, align 8
  %17 = load i8*, i8** %15, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 94
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32, i32* @UNINTERESTING, align 4
  %23 = load i32, i32* @BOTTOM, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = xor i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %15, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %15, align 8
  br label %29

29:                                               ; preds = %21, %4
  %30 = load i8*, i8** %15, align 8
  %31 = call i64 @get_oid_committish(i8* %30, %struct.object_id* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %130

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %61
  %36 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = call %struct.object* @get_reference(%struct.rev_info* %36, i8* %37, %struct.object_id* %10, i32 0)
  store %struct.object* %38, %struct.object** %11, align 8
  %39 = load %struct.object*, %struct.object** %11, align 8
  %40 = icmp ne %struct.object* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %43 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %130

47:                                               ; preds = %41, %35
  %48 = load %struct.object*, %struct.object** %11, align 8
  %49 = getelementptr inbounds %struct.object, %struct.object* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OBJ_TAG, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %68

54:                                               ; preds = %47
  %55 = load %struct.object*, %struct.object** %11, align 8
  %56 = bitcast %struct.object* %55 to %struct.tag*
  %57 = getelementptr inbounds %struct.tag, %struct.tag* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %130

61:                                               ; preds = %54
  %62 = load %struct.object*, %struct.object** %11, align 8
  %63 = bitcast %struct.object* %62 to %struct.tag*
  %64 = getelementptr inbounds %struct.tag, %struct.tag* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @oidcpy(%struct.object_id* %10, i32* %66)
  br label %35

68:                                               ; preds = %53
  %69 = load %struct.object*, %struct.object** %11, align 8
  %70 = getelementptr inbounds %struct.object, %struct.object* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @OBJ_COMMIT, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %130

75:                                               ; preds = %68
  %76 = load %struct.object*, %struct.object** %11, align 8
  %77 = bitcast %struct.object* %76 to %struct.commit*
  store %struct.commit* %77, %struct.commit** %12, align 8
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.commit*, %struct.commit** %12, align 8
  %83 = getelementptr inbounds %struct.commit, %struct.commit* %82, i32 0, i32 0
  %84 = load %struct.commit_list*, %struct.commit_list** %83, align 8
  %85 = call i32 @commit_list_count(%struct.commit_list* %84)
  %86 = icmp sgt i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %130

88:                                               ; preds = %80, %75
  %89 = load %struct.commit*, %struct.commit** %12, align 8
  %90 = getelementptr inbounds %struct.commit, %struct.commit* %89, i32 0, i32 0
  %91 = load %struct.commit_list*, %struct.commit_list** %90, align 8
  store %struct.commit_list* %91, %struct.commit_list** %13, align 8
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %123, %88
  %93 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %94 = icmp ne %struct.commit_list* %93, null
  br i1 %94, label %95, label %129

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %123

103:                                              ; preds = %98, %95
  %104 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %105 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store %struct.object* %107, %struct.object** %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.object*, %struct.object** %11, align 8
  %110 = getelementptr inbounds %struct.object, %struct.object* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %114 = load %struct.object*, %struct.object** %11, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* @REV_CMD_PARENTS_ONLY, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @add_rev_cmdline(%struct.rev_info* %113, %struct.object* %114, i8* %115, i32 %116, i32 %117)
  %119 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %120 = load %struct.object*, %struct.object** %11, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = call i32 @add_pending_object(%struct.rev_info* %119, %struct.object* %120, i8* %121)
  br label %123

123:                                              ; preds = %103, %102
  %124 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %125 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %124, i32 0, i32 1
  %126 = load %struct.commit_list*, %struct.commit_list** %125, align 8
  store %struct.commit_list* %126, %struct.commit_list** %13, align 8
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %92

129:                                              ; preds = %92
  store i32 1, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %87, %74, %60, %46, %33
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i64 @get_oid_committish(i8*, %struct.object_id*) #1

declare dso_local %struct.object* @get_reference(%struct.rev_info*, i8*, %struct.object_id*, i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i32 @commit_list_count(%struct.commit_list*) #1

declare dso_local i32 @add_rev_cmdline(%struct.rev_info*, %struct.object*, i8*, i32, i32) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
