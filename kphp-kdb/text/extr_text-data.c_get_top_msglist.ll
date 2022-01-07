; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_top_msglist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_top_msglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i64, %struct.file_user_list_entry* }
%struct.file_user_list_entry = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"get_top_peers_list(%d,%d,%d)\0A\00", align 1
@R_cnt = common dso_local global i32 0, align 4
@NIL_N = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_RES = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_top_msglist(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.file_user_list_entry*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @verbosity, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @conv_uid(i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %181

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.TYPE_8__* @get_user(i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* @R_cnt, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %32, align 8
  store %struct.file_user_list_entry* %33, %struct.file_user_list_entry** %10, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %10, align 8
  %40 = icmp ne %struct.file_user_list_entry* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @load_user_metafile(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 -2, i32* %4, align 4
  br label %181

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %38
  br label %62

48:                                               ; preds = %25
  %49 = load i32, i32* %5, align 4
  %50 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %49)
  store %struct.file_user_list_entry* %50, %struct.file_user_list_entry** %10, align 8
  %51 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %10, align 8
  %52 = icmp ne %struct.file_user_list_entry* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = call %struct.TYPE_8__* @get_user_f(i32 %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @load_user_metafile(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  store i32 -2, i32* %4, align 4
  br label %181

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NIL_N, align 8
  %70 = icmp eq %struct.TYPE_9__* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %62
  store i32 0, i32* %4, align 4
  br label %181

72:                                               ; preds = %65
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %9, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp sge i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %181

86:                                               ; preds = %72
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %181

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %114

111:                                              ; preds = %104
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %6, align 4
  %121 = sub nsw i32 %119, %120
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @MAX_RES, align 4
  %125 = sdiv i32 %124, 2
  %126 = icmp ugt i32 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* @MAX_RES, align 4
  %129 = sdiv i32 %128, 2
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %127, %118
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %132 = load i32, i32* @R, align 4
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %135, %136
  %138 = call i32 @tree_num_get_range(%struct.TYPE_9__* %131, i32 %132, i32 %134, i32 %137)
  %139 = load i32, i32* @R, align 4
  %140 = sub nsw i32 %138, %139
  store i32 %140, i32* @R_cnt, align 4
  br label %168

141:                                              ; preds = %114
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %142, %143
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @MAX_RES, align 4
  %148 = sdiv i32 %147, 2
  %149 = icmp ugt i32 %146, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i32, i32* @MAX_RES, align 4
  %152 = sdiv i32 %151, 2
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %150, %141
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %155 = load i32, i32* @R, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %6, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %6, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %161, %162
  %164 = sub nsw i32 %163, 1
  %165 = call i32 @tree_num_get_range_rev(%struct.TYPE_9__* %154, i32 %155, i32 %158, i32 %164)
  %166 = load i32, i32* @R, align 4
  %167 = sub nsw i32 %165, %166
  store i32 %167, i32* @R_cnt, align 4
  br label %168

168:                                              ; preds = %153, %130
  %169 = load i32, i32* @R_cnt, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i32, i32* @R_cnt, align 4
  %173 = load i32, i32* %7, align 4
  %174 = mul nsw i32 %173, 2
  %175 = icmp sle i32 %172, %174
  br label %176

176:                                              ; preds = %171, %168
  %177 = phi i1 [ false, %168 ], [ %175, %171 ]
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %176, %92, %85, %71, %59, %45, %24
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.TYPE_8__* @get_user(i32) #1

declare dso_local i32 @load_user_metafile(i32) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

declare dso_local %struct.TYPE_8__* @get_user_f(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tree_num_get_range(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @tree_num_get_range_rev(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
