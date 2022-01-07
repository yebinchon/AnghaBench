; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_show_rebase_information.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_show_rebase_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wt_status = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"rebase-merge/done\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"rebase-merge/git-rebase-todo\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"git-rebase-todo is missing.\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"No commands done.\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Last command done (%d command done):\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Last commands done (%d commands done):\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"   %s\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"  (see more in file %s)\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"No commands remaining.\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Next command to do (%d remaining command):\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Next commands to do (%d remaining commands):\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"  (use \22git rebase --edit-todo\22 to view and edit)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i8*)* @show_rebase_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_rebase_information(%struct.wt_status* %0, i8* %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.string_list, align 8
  %8 = alloca %struct.string_list, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %10 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %162

14:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  %15 = bitcast %struct.string_list* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %16 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %17 = call i64 @read_rebase_todolist(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.string_list* %7)
  %18 = call i64 @read_rebase_todolist(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.string_list* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %21, i8* %22, i8* %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %32, i8* %33, i8* %36)
  br label %99

38:                                               ; preds = %27
  %39 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @Q_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %39, i8* %40, i8* %45, i32 %47)
  %49 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  br label %59

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i32 [ %57, %53 ], [ 0, %58 ]
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %77, %59
  %62 = load i32, i32* %5, align 4
  %63 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %67, i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %61

80:                                               ; preds = %61
  %81 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %87 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @git_path(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %97 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %91, i8* %92, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %85, %80
  br label %99

99:                                               ; preds = %98, %31
  %100 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %104, i8* %105, i8* %108)
  br label %159

110:                                              ; preds = %99
  %111 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @Q_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %111, i8* %112, i8* %117, i32 %119)
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %143, %110
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  %127 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %126, %128
  br label %130

130:                                              ; preds = %125, %121
  %131 = phi i1 [ false, %121 ], [ %129, %125 ]
  br i1 %131, label %132, label %146

132:                                              ; preds = %130
  %133 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %133, i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %121

146:                                              ; preds = %130
  %147 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %148 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %152, i8* %153, i8* %156)
  br label %158

158:                                              ; preds = %151, %146
  br label %159

159:                                              ; preds = %158, %103
  %160 = call i32 @string_list_clear(%struct.string_list* %8, i32 0)
  %161 = call i32 @string_list_clear(%struct.string_list* %7, i32 0)
  br label %162

162:                                              ; preds = %159, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_rebase_todolist(i8*, %struct.string_list*) #2

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @Q_(i8*, i8*, i32) #2

declare dso_local i32 @git_path(i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
