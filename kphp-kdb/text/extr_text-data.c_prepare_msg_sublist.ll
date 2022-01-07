; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_prepare_msg_sublist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_prepare_msg_sublist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32*, %struct.file_user_list_entry* }
%struct.file_user_list_entry = type { i32* }

@sublists_num = common dso_local global i32 0, align 4
@Sublists = common dso_local global %struct.TYPE_6__* null, align 8
@idx_sublists_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_msg_sublist(i32 %0, i32 %1, i32 %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.file_user_list_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @conv_uid(i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %6
  store i32 -1, i32* %7, align 4
  br label %185

25:                                               ; preds = %21
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @sublists_num, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Sublists, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Sublists, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %53

49:                                               ; preds = %39, %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %26

53:                                               ; preds = %48, %26
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @sublists_num, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -3, i32* %7, align 4
  br label %185

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.TYPE_5__* @get_user(i32 %59)
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %14, align 8
  %61 = load i32**, i32*** %11, align 8
  store i32* null, i32** %61, align 8
  store i32 0, i32* %16, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = icmp ne %struct.TYPE_5__* %62, null
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %66, align 8
  store %struct.file_user_list_entry* %67, %struct.file_user_list_entry** %15, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32**, i32*** %11, align 8
  store i32* %73, i32** %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %64
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @load_user_metafile(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  store i32 -2, i32* %7, align 4
  br label %185

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %64
  br label %89

86:                                               ; preds = %58
  %87 = load i32, i32* %8, align 4
  %88 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %87)
  store %struct.file_user_list_entry* %88, %struct.file_user_list_entry** %15, align 8
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i32**, i32*** %11, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %15, align 8
  %95 = icmp ne %struct.file_user_list_entry* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 0, i32* %7, align 4
  br label %185

97:                                               ; preds = %93, %89
  %98 = load i32**, i32*** %11, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %172, label %101

101:                                              ; preds = %97
  %102 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %15, align 8
  %103 = icmp ne %struct.file_user_list_entry* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %15, align 8
  %106 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @idx_sublists_offset, align 4
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  br label %115

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %104
  %116 = phi i32 [ %113, %104 ], [ 0, %114 ]
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122, %119, %115
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %7, align 4
  br label %185

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %16, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132, %127
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141, %136
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %7, align 4
  br label %185

147:                                              ; preds = %141, %132
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @load_user_metafile(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  store i32 -2, i32* %7, align 4
  br label %185

152:                                              ; preds = %147
  %153 = load i32, i32* %8, align 4
  %154 = call %struct.TYPE_5__* @get_user(i32 %153)
  store %struct.TYPE_5__* %154, %struct.TYPE_5__** %14, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %156 = icmp ne %struct.TYPE_5__* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %159 = call i64 @get_user_metafile(%struct.TYPE_5__* %158)
  %160 = icmp ne i64 %159, 0
  br label %161

161:                                              ; preds = %157, %152
  %162 = phi i1 [ false, %152 ], [ %160, %157 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32**, i32*** %11, align 8
  store i32* %170, i32** %171, align 8
  br label %172

172:                                              ; preds = %161, %97
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %174 = icmp ne %struct.TYPE_5__* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  %180 = xor i1 %179, true
  br label %181

181:                                              ; preds = %175, %172
  %182 = phi i1 [ true, %172 ], [ %180, %175 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  store i32 -4, i32* %7, align 4
  br label %185

185:                                              ; preds = %181, %151, %145, %125, %96, %83, %57, %24
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.TYPE_5__* @get_user(i32) #1

declare dso_local i32 @load_user_metafile(i32) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_user_metafile(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
