; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_user_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_user_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32, i32, %struct.file_user_list_entry*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.file_user_list_entry = type { i32, i32* }
%struct.file_user_list_entry_search_history = type { i32 }

@User = common dso_local global %struct.TYPE_10__** null, align 8
@sublists_num = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4
@min_uid = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@persistent_history_enabled = common dso_local global i64 0, align 8
@NIL = common dso_local global i8* null, align 8
@idx_sublists_offset = common dso_local global i32 0, align 4
@NIL_N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @get_user_f(i32 %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_user_list_entry*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @conv_uid(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %157

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @User, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %14, i64 %16
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %2, align 8
  br label %157

23:                                               ; preds = %13
  %24 = load i32, i32* @sublists_num, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 48, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_10__* @zmalloc(i32 %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memset(%struct.TYPE_10__* %31, i32 0, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @User, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %38, i64 %40
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @max_uid, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %23
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* @max_uid, align 4
  br label %47

47:                                               ; preds = %45, %23
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @min_uid, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* @min_uid, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* @tot_users, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @tot_users, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i32 @USER_CONN(%struct.TYPE_10__* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 9
  store i32 %57, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = call i32 @USER_PCONN(%struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 7
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %68)
  store %struct.file_user_list_entry* %69, %struct.file_user_list_entry** %7, align 8
  %70 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  store %struct.file_user_list_entry* %70, %struct.file_user_list_entry** %72, align 8
  %73 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %74 = icmp ne %struct.file_user_list_entry* %73, null
  br i1 %74, label %75, label %134

75:                                               ; preds = %53
  %76 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %77 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i64, i64* @persistent_history_enabled, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %85 = bitcast %struct.file_user_list_entry* %84 to %struct.file_user_list_entry_search_history*
  %86 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %83, %75
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %130, %90
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @sublists_num, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %133

95:                                               ; preds = %91
  %96 = load i8*, i8** @NIL, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i8* %96, i8** %103, align 8
  %104 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %105 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @idx_sublists_offset, align 4
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  store i32 %112, i32* %119, align 4
  %120 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %121 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 %122, i32* %129, align 8
  br label %130

130:                                              ; preds = %95
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %91

133:                                              ; preds = %91
  br label %152

134:                                              ; preds = %53
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %148, %134
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @sublists_num, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = load i8*, i8** @NIL, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i8* %140, i8** %147, align 8
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %135

151:                                              ; preds = %135
  br label %152

152:                                              ; preds = %151, %133
  %153 = load i32, i32* @NIL_N, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %2, align 8
  br label %157

157:                                              ; preds = %152, %21, %12
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %158
}

declare dso_local i32 @conv_uid(i32) #1

declare dso_local %struct.TYPE_10__* @zmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @USER_CONN(%struct.TYPE_10__*) #1

declare dso_local i32 @USER_PCONN(%struct.TYPE_10__*) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
