; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_simplify_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_simplify_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64 }
%struct.commit = type { %struct.commit_list*, %struct.TYPE_3__ }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.TYPE_3__ = type { i32 }
%struct.merge_simplify_state = type { %struct.commit* }
%struct.TYPE_4__ = type { %struct.commit_list* }

@UNINTERESTING = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list** (%struct.rev_info*, %struct.commit*, %struct.commit_list**)* @simplify_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list** @simplify_one(%struct.rev_info* %0, %struct.commit* %1, %struct.commit_list** %2) #0 {
  %4 = alloca %struct.commit_list**, align 8
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit_list**, align 8
  %8 = alloca %struct.commit_list*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.merge_simplify_state*, align 8
  %11 = alloca %struct.merge_simplify_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store %struct.commit_list** %2, %struct.commit_list*** %7, align 8
  %14 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %15 = load %struct.commit*, %struct.commit** %6, align 8
  %16 = call %struct.merge_simplify_state* @locate_simplify_state(%struct.rev_info* %14, %struct.commit* %15)
  store %struct.merge_simplify_state* %16, %struct.merge_simplify_state** %10, align 8
  %17 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %10, align 8
  %18 = getelementptr inbounds %struct.merge_simplify_state, %struct.merge_simplify_state* %17, i32 0, i32 0
  %19 = load %struct.commit*, %struct.commit** %18, align 8
  %20 = icmp ne %struct.commit* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load %struct.commit_list**, %struct.commit_list*** %7, align 8
  store %struct.commit_list** %22, %struct.commit_list*** %4, align 8
  br label %196

23:                                               ; preds = %3
  %24 = load %struct.commit*, %struct.commit** %6, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UNINTERESTING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = load %struct.commit*, %struct.commit** %6, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  %35 = icmp ne %struct.commit_list* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31, %23
  %37 = load %struct.commit*, %struct.commit** %6, align 8
  %38 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %10, align 8
  %39 = getelementptr inbounds %struct.merge_simplify_state, %struct.merge_simplify_state* %38, i32 0, i32 0
  store %struct.commit* %37, %struct.commit** %39, align 8
  %40 = load %struct.commit_list**, %struct.commit_list*** %7, align 8
  store %struct.commit_list** %40, %struct.commit_list*** %4, align 8
  br label %196

41:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  %42 = load %struct.commit*, %struct.commit** %6, align 8
  %43 = getelementptr inbounds %struct.commit, %struct.commit* %42, i32 0, i32 0
  %44 = load %struct.commit_list*, %struct.commit_list** %43, align 8
  store %struct.commit_list* %44, %struct.commit_list** %8, align 8
  br label %45

45:                                               ; preds = %74, %41
  %46 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %47 = icmp ne %struct.commit_list* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %50 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %51 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %50, i32 0, i32 0
  %52 = load %struct.commit*, %struct.commit** %51, align 8
  %53 = call %struct.merge_simplify_state* @locate_simplify_state(%struct.rev_info* %49, %struct.commit* %52)
  store %struct.merge_simplify_state* %53, %struct.merge_simplify_state** %11, align 8
  %54 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %11, align 8
  %55 = getelementptr inbounds %struct.merge_simplify_state, %struct.merge_simplify_state* %54, i32 0, i32 0
  %56 = load %struct.commit*, %struct.commit** %55, align 8
  %57 = icmp ne %struct.commit* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %48
  %59 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %60 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %59, i32 0, i32 0
  %61 = load %struct.commit*, %struct.commit** %60, align 8
  %62 = load %struct.commit_list**, %struct.commit_list*** %7, align 8
  %63 = call %struct.TYPE_4__* @commit_list_insert(%struct.commit* %61, %struct.commit_list** %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.commit_list** %64, %struct.commit_list*** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %58, %48
  %68 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %69 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %78

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %76 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %75, i32 0, i32 1
  %77 = load %struct.commit_list*, %struct.commit_list** %76, align 8
  store %struct.commit_list* %77, %struct.commit_list** %8, align 8
  br label %45

78:                                               ; preds = %72, %45
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.commit*, %struct.commit** %6, align 8
  %83 = load %struct.commit_list**, %struct.commit_list*** %7, align 8
  %84 = call %struct.TYPE_4__* @commit_list_insert(%struct.commit* %82, %struct.commit_list** %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store %struct.commit_list** %85, %struct.commit_list*** %7, align 8
  %86 = load %struct.commit_list**, %struct.commit_list*** %7, align 8
  store %struct.commit_list** %86, %struct.commit_list*** %4, align 8
  br label %196

87:                                               ; preds = %78
  %88 = load %struct.commit*, %struct.commit** %6, align 8
  %89 = getelementptr inbounds %struct.commit, %struct.commit* %88, i32 0, i32 0
  %90 = load %struct.commit_list*, %struct.commit_list** %89, align 8
  store %struct.commit_list* %90, %struct.commit_list** %8, align 8
  br label %91

91:                                               ; preds = %111, %87
  %92 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %93 = icmp ne %struct.commit_list* %92, null
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %96 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %97 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %96, i32 0, i32 0
  %98 = load %struct.commit*, %struct.commit** %97, align 8
  %99 = call %struct.merge_simplify_state* @locate_simplify_state(%struct.rev_info* %95, %struct.commit* %98)
  store %struct.merge_simplify_state* %99, %struct.merge_simplify_state** %11, align 8
  %100 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %11, align 8
  %101 = getelementptr inbounds %struct.merge_simplify_state, %struct.merge_simplify_state* %100, i32 0, i32 0
  %102 = load %struct.commit*, %struct.commit** %101, align 8
  %103 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %104 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %103, i32 0, i32 0
  store %struct.commit* %102, %struct.commit** %104, align 8
  %105 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %106 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %115

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %113 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %112, i32 0, i32 1
  %114 = load %struct.commit_list*, %struct.commit_list** %113, align 8
  store %struct.commit_list* %114, %struct.commit_list** %8, align 8
  br label %91

115:                                              ; preds = %109, %91
  %116 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %117 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 1, i32* %12, align 4
  br label %125

121:                                              ; preds = %115
  %122 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %123 = load %struct.commit*, %struct.commit** %6, align 8
  %124 = call i32 @remove_duplicate_parents(%struct.rev_info* %122, %struct.commit* %123)
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %121, %120
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 1, %126
  br i1 %127, label %128, label %155

128:                                              ; preds = %125
  %129 = load %struct.commit*, %struct.commit** %6, align 8
  %130 = call i32 @mark_redundant_parents(%struct.commit* %129)
  store i32 %130, i32* %13, align 4
  %131 = load %struct.commit*, %struct.commit** %6, align 8
  %132 = call i64 @mark_treesame_root_parents(%struct.commit* %131)
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %128
  %140 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %141 = load %struct.commit*, %struct.commit** %6, align 8
  %142 = call i64 @leave_one_treesame_to_parent(%struct.rev_info* %140, %struct.commit* %141)
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = sub nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %139, %128
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %152 = load %struct.commit*, %struct.commit** %6, align 8
  %153 = call i32 @remove_marked_parents(%struct.rev_info* %151, %struct.commit* %152)
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %150, %147
  br label %155

155:                                              ; preds = %154, %125
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %155
  %159 = load %struct.commit*, %struct.commit** %6, align 8
  %160 = getelementptr inbounds %struct.commit, %struct.commit* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @UNINTERESTING, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %158
  %167 = load %struct.commit*, %struct.commit** %6, align 8
  %168 = getelementptr inbounds %struct.commit, %struct.commit* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TREESAME, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %166
  %175 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %176 = load %struct.commit*, %struct.commit** %6, align 8
  %177 = getelementptr inbounds %struct.commit, %struct.commit* %176, i32 0, i32 0
  %178 = load %struct.commit_list*, %struct.commit_list** %177, align 8
  %179 = call %struct.commit* @one_relevant_parent(%struct.rev_info* %175, %struct.commit_list* %178)
  store %struct.commit* %179, %struct.commit** %9, align 8
  %180 = icmp eq %struct.commit* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %174, %166, %158, %155
  %182 = load %struct.commit*, %struct.commit** %6, align 8
  %183 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %10, align 8
  %184 = getelementptr inbounds %struct.merge_simplify_state, %struct.merge_simplify_state* %183, i32 0, i32 0
  store %struct.commit* %182, %struct.commit** %184, align 8
  br label %194

185:                                              ; preds = %174
  %186 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %187 = load %struct.commit*, %struct.commit** %9, align 8
  %188 = call %struct.merge_simplify_state* @locate_simplify_state(%struct.rev_info* %186, %struct.commit* %187)
  store %struct.merge_simplify_state* %188, %struct.merge_simplify_state** %11, align 8
  %189 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %11, align 8
  %190 = getelementptr inbounds %struct.merge_simplify_state, %struct.merge_simplify_state* %189, i32 0, i32 0
  %191 = load %struct.commit*, %struct.commit** %190, align 8
  %192 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %10, align 8
  %193 = getelementptr inbounds %struct.merge_simplify_state, %struct.merge_simplify_state* %192, i32 0, i32 0
  store %struct.commit* %191, %struct.commit** %193, align 8
  br label %194

194:                                              ; preds = %185, %181
  %195 = load %struct.commit_list**, %struct.commit_list*** %7, align 8
  store %struct.commit_list** %195, %struct.commit_list*** %4, align 8
  br label %196

196:                                              ; preds = %194, %81, %36, %21
  %197 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  ret %struct.commit_list** %197
}

declare dso_local %struct.merge_simplify_state* @locate_simplify_state(%struct.rev_info*, %struct.commit*) #1

declare dso_local %struct.TYPE_4__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @remove_duplicate_parents(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @mark_redundant_parents(%struct.commit*) #1

declare dso_local i64 @mark_treesame_root_parents(%struct.commit*) #1

declare dso_local i64 @leave_one_treesame_to_parent(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @remove_marked_parents(%struct.rev_info*, %struct.commit*) #1

declare dso_local %struct.commit* @one_relevant_parent(%struct.rev_info*, %struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
