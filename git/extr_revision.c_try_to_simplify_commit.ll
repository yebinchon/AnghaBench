; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_try_to_simplify_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_try_to_simplify_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.commit = type { %struct.TYPE_4__, %struct.commit_list* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.treesame_state = type { i32* }

@TREESAME = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot simplify commit %s (because of %s)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot simplify commit %s (invalid %s)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bad tree compare for commit %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit*)* @try_to_simplify_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_to_simplify_commit(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list**, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.treesame_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  store %struct.treesame_state* null, %struct.treesame_state** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %228

18:                                               ; preds = %2
  %19 = load %struct.commit*, %struct.commit** %4, align 8
  %20 = call i32 @get_commit_tree(%struct.commit* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %228

23:                                               ; preds = %18
  %24 = load %struct.commit*, %struct.commit** %4, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 1
  %26 = load %struct.commit_list*, %struct.commit_list** %25, align 8
  %27 = icmp ne %struct.commit_list* %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %30 = load %struct.commit*, %struct.commit** %4, align 8
  %31 = call i64 @rev_same_tree_as_empty(%struct.rev_info* %29, %struct.commit* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @TREESAME, align 4
  %35 = load %struct.commit*, %struct.commit** %4, align 8
  %36 = getelementptr inbounds %struct.commit, %struct.commit* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %28
  br label %228

41:                                               ; preds = %23
  %42 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %43 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.commit*, %struct.commit** %4, align 8
  %48 = getelementptr inbounds %struct.commit, %struct.commit* %47, i32 0, i32 1
  %49 = load %struct.commit_list*, %struct.commit_list** %48, align 8
  %50 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %49, i32 0, i32 0
  %51 = load %struct.commit_list*, %struct.commit_list** %50, align 8
  %52 = icmp ne %struct.commit_list* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %228

54:                                               ; preds = %46, %41
  %55 = load %struct.commit*, %struct.commit** %4, align 8
  %56 = getelementptr inbounds %struct.commit, %struct.commit* %55, i32 0, i32 1
  store %struct.commit_list** %56, %struct.commit_list*** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %207, %54
  %58 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %59 = load %struct.commit_list*, %struct.commit_list** %58, align 8
  store %struct.commit_list* %59, %struct.commit_list** %6, align 8
  %60 = icmp ne %struct.commit_list* %59, null
  br i1 %60, label %61, label %212

61:                                               ; preds = %57
  %62 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %63 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %62, i32 0, i32 1
  %64 = load %struct.commit*, %struct.commit** %63, align 8
  store %struct.commit* %64, %struct.commit** %12, align 8
  %65 = load %struct.commit*, %struct.commit** %12, align 8
  %66 = call i64 @relevant_commit(%struct.commit* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %115

74:                                               ; preds = %71
  %75 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %76 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %212

80:                                               ; preds = %74
  %81 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %82 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %88 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %86
  %92 = load %struct.commit*, %struct.commit** %4, align 8
  %93 = getelementptr inbounds %struct.commit, %struct.commit* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @UNINTERESTING, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %91
  %100 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %101 = load %struct.commit*, %struct.commit** %4, align 8
  %102 = call %struct.treesame_state* @initialise_treesame(%struct.rev_info* %100, %struct.commit* %101)
  store %struct.treesame_state* %102, %struct.treesame_state** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load %struct.treesame_state*, %struct.treesame_state** %7, align 8
  %110 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %105, %99
  br label %114

114:                                              ; preds = %113, %91, %86, %80
  br label %115

115:                                              ; preds = %114, %71
  %116 = load %struct.commit*, %struct.commit** %12, align 8
  %117 = call i64 @parse_commit(%struct.commit* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.commit*, %struct.commit** %4, align 8
  %121 = getelementptr inbounds %struct.commit, %struct.commit* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = call i32 @oid_to_hex(i32* %122)
  %124 = load %struct.commit*, %struct.commit** %12, align 8
  %125 = getelementptr inbounds %struct.commit, %struct.commit* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = call i32 @oid_to_hex(i32* %126)
  %128 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %127)
  br label %129

129:                                              ; preds = %119, %115
  %130 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %131 = load %struct.commit*, %struct.commit** %12, align 8
  %132 = load %struct.commit*, %struct.commit** %4, align 8
  %133 = call i32 @rev_compare_tree(%struct.rev_info* %130, %struct.commit* %131, %struct.commit* %132)
  switch i32 %133, label %201 [
    i32 128, label %134
    i32 130, label %166
    i32 129, label %194
    i32 131, label %194
  ]

134:                                              ; preds = %129
  %135 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %136 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.commit*, %struct.commit** %12, align 8
  %141 = call i64 @relevant_commit(%struct.commit* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %139, %134
  %144 = load %struct.treesame_state*, %struct.treesame_state** %7, align 8
  %145 = icmp ne %struct.treesame_state* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.treesame_state*, %struct.treesame_state** %7, align 8
  %148 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %146, %143
  br label %207

154:                                              ; preds = %139
  %155 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %156 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %155, i32 0, i32 0
  store %struct.commit_list* null, %struct.commit_list** %156, align 8
  %157 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %158 = load %struct.commit*, %struct.commit** %4, align 8
  %159 = getelementptr inbounds %struct.commit, %struct.commit* %158, i32 0, i32 1
  store %struct.commit_list* %157, %struct.commit_list** %159, align 8
  %160 = load i32, i32* @TREESAME, align 4
  %161 = load %struct.commit*, %struct.commit** %4, align 8
  %162 = getelementptr inbounds %struct.commit, %struct.commit* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 8
  br label %228

166:                                              ; preds = %129
  %167 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %168 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %166
  %172 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %173 = load %struct.commit*, %struct.commit** %12, align 8
  %174 = call i64 @rev_same_tree_as_empty(%struct.rev_info* %172, %struct.commit* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %171
  %177 = load %struct.commit*, %struct.commit** %12, align 8
  %178 = call i64 @parse_commit(%struct.commit* %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = load %struct.commit*, %struct.commit** %4, align 8
  %182 = getelementptr inbounds %struct.commit, %struct.commit* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = call i32 @oid_to_hex(i32* %183)
  %185 = load %struct.commit*, %struct.commit** %12, align 8
  %186 = getelementptr inbounds %struct.commit, %struct.commit* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = call i32 @oid_to_hex(i32* %187)
  %189 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %180, %176
  %191 = load %struct.commit*, %struct.commit** %12, align 8
  %192 = getelementptr inbounds %struct.commit, %struct.commit* %191, i32 0, i32 1
  store %struct.commit_list* null, %struct.commit_list** %192, align 8
  br label %193

193:                                              ; preds = %190, %171, %166
  br label %194

194:                                              ; preds = %129, %129, %193
  %195 = load %struct.commit*, %struct.commit** %12, align 8
  %196 = call i64 @relevant_commit(%struct.commit* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 1, i32* %8, align 4
  br label %200

199:                                              ; preds = %194
  store i32 1, i32* %9, align 4
  br label %200

200:                                              ; preds = %199, %198
  br label %207

201:                                              ; preds = %129
  %202 = load %struct.commit*, %struct.commit** %4, align 8
  %203 = getelementptr inbounds %struct.commit, %struct.commit* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = call i32 @oid_to_hex(i32* %204)
  %206 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %201, %200, %153
  %208 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %209 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %208, i32 0, i32 0
  store %struct.commit_list** %209, %struct.commit_list*** %5, align 8
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %57

212:                                              ; preds = %79, %57
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %228, label %221

218:                                              ; preds = %212
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %218, %215
  %222 = load i32, i32* @TREESAME, align 4
  %223 = load %struct.commit*, %struct.commit** %4, align 8
  %224 = getelementptr inbounds %struct.commit, %struct.commit* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %222
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %17, %22, %40, %53, %154, %221, %218, %215
  ret void
}

declare dso_local i32 @get_commit_tree(%struct.commit*) #1

declare dso_local i64 @rev_same_tree_as_empty(%struct.rev_info*, %struct.commit*) #1

declare dso_local i64 @relevant_commit(%struct.commit*) #1

declare dso_local %struct.treesame_state* @initialise_treesame(%struct.rev_info*, %struct.commit*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @rev_compare_tree(%struct.rev_info*, %struct.commit*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
