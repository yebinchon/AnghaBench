; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_get_commit_action.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_get_commit_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i64, i64, i64, i64 }
%struct.commit = type { %struct.commit_list*, %struct.TYPE_2__ }
%struct.commit_list = type { i32, %struct.commit_list* }
%struct.TYPE_2__ = type { i32, i32 }

@SHOWN = common dso_local global i32 0, align 4
@commit_ignore = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@commit_show = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_commit_action(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  %9 = load %struct.commit*, %struct.commit** %5, align 8
  %10 = getelementptr inbounds %struct.commit, %struct.commit* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SHOWN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @commit_ignore, align 4
  store i32 %17, i32* %3, align 4
  br label %152

18:                                               ; preds = %2
  %19 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.commit*, %struct.commit** %5, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i64 @has_object_pack(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @commit_ignore, align 4
  store i32 %30, i32* %3, align 4
  br label %152

31:                                               ; preds = %23, %18
  %32 = load %struct.commit*, %struct.commit** %5, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @UNINTERESTING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @commit_ignore, align 4
  store i32 %40, i32* %3, align 4
  br label %152

41:                                               ; preds = %31
  %42 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %43 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %48 = load %struct.commit*, %struct.commit** %5, align 8
  %49 = call i32 @comparison_date(%struct.rev_info* %47, %struct.commit* %48)
  %50 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %51 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @commit_ignore, align 4
  store i32 %55, i32* %3, align 4
  br label %152

56:                                               ; preds = %46, %41
  %57 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %58 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %63 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %61, %56
  %67 = load %struct.commit*, %struct.commit** %5, align 8
  %68 = getelementptr inbounds %struct.commit, %struct.commit* %67, i32 0, i32 0
  %69 = load %struct.commit_list*, %struct.commit_list** %68, align 8
  %70 = call i32 @commit_list_count(%struct.commit_list* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %73 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %66
  %77 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %78 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %85 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81, %66
  %89 = load i32, i32* @commit_ignore, align 4
  store i32 %89, i32* %3, align 4
  br label %152

90:                                               ; preds = %81, %76
  br label %91

91:                                               ; preds = %90, %61
  %92 = load %struct.commit*, %struct.commit** %5, align 8
  %93 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %94 = call i32 @commit_match(%struct.commit* %92, %struct.rev_info* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @commit_ignore, align 4
  store i32 %97, i32* %3, align 4
  br label %152

98:                                               ; preds = %91
  %99 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %100 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %150

103:                                              ; preds = %98
  %104 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %105 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %150

108:                                              ; preds = %103
  %109 = load %struct.commit*, %struct.commit** %5, align 8
  %110 = getelementptr inbounds %struct.commit, %struct.commit* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TREESAME, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %108
  %117 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %118 = call i32 @want_ancestry(%struct.rev_info* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @commit_ignore, align 4
  store i32 %121, i32* %3, align 4
  br label %152

122:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  %123 = load %struct.commit*, %struct.commit** %5, align 8
  %124 = getelementptr inbounds %struct.commit, %struct.commit* %123, i32 0, i32 0
  %125 = load %struct.commit_list*, %struct.commit_list** %124, align 8
  store %struct.commit_list* %125, %struct.commit_list** %8, align 8
  br label %126

126:                                              ; preds = %143, %122
  %127 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %128 = icmp ne %struct.commit_list* %127, null
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %131 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @relevant_commit(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  %138 = icmp sge i32 %137, 2
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @commit_show, align 4
  store i32 %140, i32* %3, align 4
  br label %152

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %129
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %145 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %144, i32 0, i32 1
  %146 = load %struct.commit_list*, %struct.commit_list** %145, align 8
  store %struct.commit_list* %146, %struct.commit_list** %8, align 8
  br label %126

147:                                              ; preds = %126
  %148 = load i32, i32* @commit_ignore, align 4
  store i32 %148, i32* %3, align 4
  br label %152

149:                                              ; preds = %108
  br label %150

150:                                              ; preds = %149, %103, %98
  %151 = load i32, i32* @commit_show, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %147, %139, %120, %96, %88, %54, %39, %29, %16
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i64 @has_object_pack(i32*) #1

declare dso_local i32 @comparison_date(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @commit_list_count(%struct.commit_list*) #1

declare dso_local i32 @commit_match(%struct.commit*, %struct.rev_info*) #1

declare dso_local i32 @want_ancestry(%struct.rev_info*) #1

declare dso_local i64 @relevant_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
