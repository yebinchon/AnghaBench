; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_cherry_pick_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_cherry_pick_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.rev_info = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.patch_ids = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.patch_id = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@BOUNDARY = common dso_local global i32 0, align 4
@SYMMETRIC_LEFT = common dso_local global i32 0, align 4
@PATCHSAME = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*, %struct.rev_info*)* @cherry_pick_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cherry_pick_list(%struct.commit_list* %0, %struct.rev_info* %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.patch_ids, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.commit*, align 8
  %16 = alloca %struct.patch_id*, align 8
  %17 = alloca i32, align 4
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %18, %struct.commit_list** %5, align 8
  br label %19

19:                                               ; preds = %48, %2
  %20 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %21 = icmp ne %struct.commit_list* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %24 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %23, i32 0, i32 0
  %25 = load %struct.commit*, %struct.commit** %24, align 8
  store %struct.commit* %25, %struct.commit** %11, align 8
  %26 = load %struct.commit*, %struct.commit** %11, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @BOUNDARY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %47

35:                                               ; preds = %22
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %50 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %49, i32 0, i32 1
  %51 = load %struct.commit_list*, %struct.commit_list** %50, align 8
  store %struct.commit_list* %51, %struct.commit_list** %5, align 8
  br label %19

52:                                               ; preds = %19
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55, %52
  br label %175

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %65 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @init_patch_ids(i32 %66, %struct.patch_ids* %9)
  %68 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %69 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.patch_ids, %struct.patch_ids* %9, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %74, %struct.commit_list** %5, align 8
  br label %75

75:                                               ; preds = %105, %59
  %76 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %77 = icmp ne %struct.commit_list* %76, null
  br i1 %77, label %78, label %109

78:                                               ; preds = %75
  %79 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %80 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %79, i32 0, i32 0
  %81 = load %struct.commit*, %struct.commit** %80, align 8
  store %struct.commit* %81, %struct.commit** %13, align 8
  %82 = load %struct.commit*, %struct.commit** %13, align 8
  %83 = getelementptr inbounds %struct.commit, %struct.commit* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @BOUNDARY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %105

91:                                               ; preds = %78
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = icmp ne i32 %92, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %105

102:                                              ; preds = %91
  %103 = load %struct.commit*, %struct.commit** %13, align 8
  %104 = call i32 @add_commit_patch_id(%struct.commit* %103, %struct.patch_ids* %9)
  br label %105

105:                                              ; preds = %102, %101, %90
  %106 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %107 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %106, i32 0, i32 1
  %108 = load %struct.commit_list*, %struct.commit_list** %107, align 8
  store %struct.commit_list* %108, %struct.commit_list** %5, align 8
  br label %75

109:                                              ; preds = %75
  %110 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %111 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @PATCHSAME, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @SHOWN, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  store i32 %119, i32* %10, align 4
  %120 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %120, %struct.commit_list** %5, align 8
  br label %121

121:                                              ; preds = %169, %118
  %122 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %123 = icmp ne %struct.commit_list* %122, null
  br i1 %123, label %124, label %173

124:                                              ; preds = %121
  %125 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %126 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %125, i32 0, i32 0
  %127 = load %struct.commit*, %struct.commit** %126, align 8
  store %struct.commit* %127, %struct.commit** %15, align 8
  %128 = load %struct.commit*, %struct.commit** %15, align 8
  %129 = getelementptr inbounds %struct.commit, %struct.commit* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* @BOUNDARY, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  br label %169

137:                                              ; preds = %124
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = icmp eq i32 %138, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %169

148:                                              ; preds = %137
  %149 = load %struct.commit*, %struct.commit** %15, align 8
  %150 = call %struct.patch_id* @has_commit_patch_id(%struct.commit* %149, %struct.patch_ids* %9)
  store %struct.patch_id* %150, %struct.patch_id** %16, align 8
  %151 = load %struct.patch_id*, %struct.patch_id** %16, align 8
  %152 = icmp ne %struct.patch_id* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  br label %169

154:                                              ; preds = %148
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.commit*, %struct.commit** %15, align 8
  %157 = getelementptr inbounds %struct.commit, %struct.commit* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.patch_id*, %struct.patch_id** %16, align 8
  %163 = getelementptr inbounds %struct.patch_id, %struct.patch_id* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %161
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %154, %153, %147, %136
  %170 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %171 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %170, i32 0, i32 1
  %172 = load %struct.commit_list*, %struct.commit_list** %171, align 8
  store %struct.commit_list* %172, %struct.commit_list** %5, align 8
  br label %121

173:                                              ; preds = %121
  %174 = call i32 @free_patch_ids(%struct.patch_ids* %9)
  br label %175

175:                                              ; preds = %173, %58
  ret void
}

declare dso_local i32 @init_patch_ids(i32, %struct.patch_ids*) #1

declare dso_local i32 @add_commit_patch_id(%struct.commit*, %struct.patch_ids*) #1

declare dso_local %struct.patch_id* @has_commit_patch_id(%struct.commit*, %struct.patch_ids*) #1

declare dso_local i32 @free_patch_ids(%struct.patch_ids*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
