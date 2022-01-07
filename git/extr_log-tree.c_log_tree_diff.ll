; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_log_tree_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_log_tree_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.log_info*, %struct.TYPE_5__, i64, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.commit = type { i32 }
%struct.log_info = type { %struct.commit* }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit*, %struct.log_info*)* @log_tree_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_tree_diff(%struct.rev_info* %0, %struct.commit* %1, %struct.log_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.log_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store %struct.log_info* %2, %struct.log_info** %7, align 8
  %12 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %150

24:                                               ; preds = %16, %3
  %25 = load %struct.commit*, %struct.commit** %6, align 8
  %26 = call i32 @parse_commit_or_die(%struct.commit* %25)
  %27 = load %struct.commit*, %struct.commit** %6, align 8
  %28 = call %struct.object_id* @get_commit_tree_oid(%struct.commit* %27)
  store %struct.object_id* %28, %struct.object_id** %10, align 8
  %29 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %30 = load %struct.commit*, %struct.commit** %6, align 8
  %31 = call %struct.commit_list* @get_saved_parents(%struct.rev_info* %29, %struct.commit* %30)
  store %struct.commit_list* %31, %struct.commit_list** %9, align 8
  %32 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %33 = icmp ne %struct.commit_list* %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %24
  %35 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %36 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.object_id*, %struct.object_id** %10, align 8
  %41 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %42 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %41, i32 0, i32 1
  %43 = call i32 @diff_root_tree_oid(%struct.object_id* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %42)
  %44 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %45 = call i32 @log_tree_diff_flush(%struct.rev_info* %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %48 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %47, i32 0, i32 0
  %49 = load %struct.log_info*, %struct.log_info** %48, align 8
  %50 = icmp ne %struct.log_info* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %150

53:                                               ; preds = %24
  %54 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %55 = icmp ne %struct.commit_list* %54, null
  br i1 %55, label %56, label %110

56:                                               ; preds = %53
  %57 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %58 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %57, i32 0, i32 1
  %59 = load %struct.commit_list*, %struct.commit_list** %58, align 8
  %60 = icmp ne %struct.commit_list* %59, null
  br i1 %60, label %61, label %110

61:                                               ; preds = %56
  %62 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %63 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %150

67:                                               ; preds = %61
  %68 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %69 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %74 = load %struct.commit*, %struct.commit** %6, align 8
  %75 = call i32 @do_diff_combined(%struct.rev_info* %73, %struct.commit* %74)
  store i32 %75, i32* %4, align 4
  br label %150

76:                                               ; preds = %67
  %77 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %78 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %83 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %82, i32 0, i32 0
  %84 = load %struct.commit*, %struct.commit** %83, align 8
  %85 = call i32 @parse_commit_or_die(%struct.commit* %84)
  %86 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %87 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %86, i32 0, i32 0
  %88 = load %struct.commit*, %struct.commit** %87, align 8
  %89 = call %struct.object_id* @get_commit_tree_oid(%struct.commit* %88)
  %90 = load %struct.object_id*, %struct.object_id** %10, align 8
  %91 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %92 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %91, i32 0, i32 1
  %93 = call i32 @diff_tree_oid(%struct.object_id* %89, %struct.object_id* %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %92)
  %94 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %95 = call i32 @log_tree_diff_flush(%struct.rev_info* %94)
  %96 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %97 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %96, i32 0, i32 0
  %98 = load %struct.log_info*, %struct.log_info** %97, align 8
  %99 = icmp ne %struct.log_info* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %150

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %106 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %105, i32 0, i32 0
  %107 = load %struct.commit*, %struct.commit** %106, align 8
  %108 = load %struct.log_info*, %struct.log_info** %7, align 8
  %109 = getelementptr inbounds %struct.log_info, %struct.log_info* %108, i32 0, i32 0
  store %struct.commit* %107, %struct.commit** %109, align 8
  br label %110

110:                                              ; preds = %104, %56, %53
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %139, %110
  %112 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %113 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %112, i32 0, i32 0
  %114 = load %struct.commit*, %struct.commit** %113, align 8
  store %struct.commit* %114, %struct.commit** %11, align 8
  %115 = load %struct.commit*, %struct.commit** %11, align 8
  %116 = call i32 @parse_commit_or_die(%struct.commit* %115)
  %117 = load %struct.commit*, %struct.commit** %11, align 8
  %118 = call %struct.object_id* @get_commit_tree_oid(%struct.commit* %117)
  %119 = load %struct.object_id*, %struct.object_id** %10, align 8
  %120 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %121 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %120, i32 0, i32 1
  %122 = call i32 @diff_tree_oid(%struct.object_id* %118, %struct.object_id* %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %121)
  %123 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %124 = call i32 @log_tree_diff_flush(%struct.rev_info* %123)
  %125 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %126 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %125, i32 0, i32 0
  %127 = load %struct.log_info*, %struct.log_info** %126, align 8
  %128 = icmp ne %struct.log_info* %127, null
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %134 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %133, i32 0, i32 1
  %135 = load %struct.commit_list*, %struct.commit_list** %134, align 8
  store %struct.commit_list* %135, %struct.commit_list** %9, align 8
  %136 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %137 = icmp ne %struct.commit_list* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %111
  br label %148

139:                                              ; preds = %111
  %140 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %141 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %140, i32 0, i32 0
  %142 = load %struct.commit*, %struct.commit** %141, align 8
  %143 = load %struct.log_info*, %struct.log_info** %7, align 8
  %144 = getelementptr inbounds %struct.log_info, %struct.log_info* %143, i32 0, i32 0
  store %struct.commit* %142, %struct.commit** %144, align 8
  %145 = load %struct.log_info*, %struct.log_info** %7, align 8
  %146 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %147 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %146, i32 0, i32 0
  store %struct.log_info* %145, %struct.log_info** %147, align 8
  br label %111

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %81, %72, %66, %46, %23
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @parse_commit_or_die(%struct.commit*) #1

declare dso_local %struct.object_id* @get_commit_tree_oid(%struct.commit*) #1

declare dso_local %struct.commit_list* @get_saved_parents(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @diff_root_tree_oid(%struct.object_id*, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @log_tree_diff_flush(%struct.rev_info*) #1

declare dso_local i32 @do_diff_combined(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @diff_tree_oid(%struct.object_id*, %struct.object_id*, i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
