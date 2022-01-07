; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_message_intermediate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_message_intermediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.file_user_list_entry* }
%struct.file_user_list_entry = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@TF_ZERO = common dso_local global i32 0, align 4
@TF_ZERO_PRIME = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [147 x i8] c"warning: interesting situation for message %d:%d : have ZERO node (type=%d) in memory, no metafile loaded; creating delayed flags operation node.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adjust_message_intermediate(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.file_user_list_entry*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.TYPE_10__* @get_user(i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %23)
  store %struct.file_user_list_entry* %24, %struct.file_user_list_entry** %11, align 8
  %25 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %26 = icmp ne %struct.file_user_list_entry* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %230

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %31 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %230

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_10__* @get_user_f(i32 %36)
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %10, align 8
  br label %49

38:                                               ; preds = %4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %40, align 8
  store %struct.file_user_list_entry* %41, %struct.file_user_list_entry** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %230

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @update_history(%struct.TYPE_10__* %53, i32 %54, i32 0, i32 0)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @tree_delete(i32 %58, i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %91

63:                                               ; preds = %49
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %64, %65
  %67 = icmp eq i32 %66, 65535
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @update_history(%struct.TYPE_10__* %69, i32 %70, i32 %71, i32 1)
  br label %90

73:                                               ; preds = %63
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @update_history(%struct.TYPE_10__* %77, i32 %78, i32 %79, i32 3)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @update_history(%struct.TYPE_10__* %85, i32 %86, i32 %87, i32 2)
  br label %89

89:                                               ; preds = %84, %81
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %52
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call %struct.TYPE_11__* @tree_lookup(i32 %94, i32 %95)
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %12, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = icmp ne %struct.TYPE_11__* %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %91
  %100 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %101 = icmp ne %struct.file_user_list_entry* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %105 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = call i64 @get_user_metafile(%struct.TYPE_10__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %108, %102, %99, %91
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %114 = icmp ne %struct.TYPE_11__* %113, null
  br i1 %114, label %115, label %146

115:                                              ; preds = %112
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 7
  %120 = load i32, i32* @TF_ZERO, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 7
  %127 = load i32, i32* @TF_ZERO_PRIME, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %122, %115
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %131 = call i64 @get_user_metafile(%struct.TYPE_10__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @verbosity, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load i32, i32* @stderr, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 7
  %144 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139, i32 %143)
  br label %145

145:                                              ; preds = %136, %133
  br label %153

146:                                              ; preds = %129, %122, %112
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @adjust_message_internal(%struct.TYPE_10__* %147, %struct.TYPE_11__* %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %5, align 4
  br label %230

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %108
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  store i32 2, i32* %5, align 4
  br label %230

161:                                              ; preds = %157, %154
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call %struct.TYPE_11__* @tree_lookup(i32 %164, i32 %165)
  store %struct.TYPE_11__* %166, %struct.TYPE_11__** %12, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %168 = icmp ne %struct.TYPE_11__* %167, null
  br i1 %168, label %190, label %169

169:                                              ; preds = %161
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %177

173:                                              ; preds = %169
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @COMBINE_CLEAR_SET(i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %172
  %178 = phi i32 [ -1, %172 ], [ %176, %173 ]
  store i32 %178, i32* %13, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 (...) @lrand48()
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @tree_insert(i32 %181, i32 %182, i32 %183, i8* %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  store i32 3, i32* %5, align 4
  br label %230

190:                                              ; preds = %161
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i32 0, i32* %5, align 4
  br label %230

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i32 -1, i32* %201, align 4
  store i32 3, i32* %5, align 4
  br label %230

202:                                              ; preds = %196
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %8, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* %9, align 4
  %209 = xor i32 %208, -1
  %210 = and i32 %207, %209
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %9, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* %8, align 4
  %217 = xor i32 %216, -1
  %218 = and i32 %215, %217
  %219 = call i32 @COMBINE_CLEAR_SET(i32 %210, i32 %218)
  store i32 %219, i32* %13, align 4
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %202
  store i32 2, i32* %5, align 4
  br label %230

226:                                              ; preds = %202
  %227 = load i32, i32* %13, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  store i32 3, i32* %5, align 4
  br label %230

230:                                              ; preds = %226, %225, %199, %195, %177, %160, %146, %47, %34, %27
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @get_user(i32) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

declare dso_local %struct.TYPE_10__* @get_user_f(i32) #1

declare dso_local i32 @update_history(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @tree_delete(i32, i32) #1

declare dso_local %struct.TYPE_11__* @tree_lookup(i32, i32) #1

declare dso_local i64 @get_user_metafile(%struct.TYPE_10__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @adjust_message_internal(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @COMBINE_CLEAR_SET(i32, i32) #1

declare dso_local i32 @tree_insert(i32, i32, i32, i8*) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
