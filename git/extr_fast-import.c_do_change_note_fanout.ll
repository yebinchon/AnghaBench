; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_do_change_note_fanout.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_do_change_note_fanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tree_entry = type { %struct.tree_content*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.tree_content = type { i32, %struct.tree_entry** }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.object_id = type { i32 }

@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to remove path %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tree_entry*, %struct.tree_entry*, i8*, i32, i8*, i32, i8)* @do_change_note_fanout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_change_note_fanout(%struct.tree_entry* %0, %struct.tree_entry* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8 zeroext %6) #0 {
  %8 = alloca %struct.tree_entry*, align 8
  %9 = alloca %struct.tree_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.tree_content*, align 8
  %16 = alloca %struct.tree_entry*, align 8
  %17 = alloca %struct.tree_entry, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.object_id, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.tree_entry* %0, %struct.tree_entry** %8, align 8
  store %struct.tree_entry* %1, %struct.tree_entry** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8 %6, i8* %14, align 1
  store i64 0, i64* %21, align 8
  %26 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %27 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %28 = sdiv i32 %27, 2
  %29 = sub nsw i32 %28, 1
  %30 = add nsw i32 %26, %29
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %23, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %24, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %25, align 4
  %38 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %39 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %38, i32 0, i32 0
  %40 = load %struct.tree_content*, %struct.tree_content** %39, align 8
  %41 = icmp ne %struct.tree_content* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %7
  %43 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %44 = call i32 @load_tree(%struct.tree_entry* %43)
  br label %45

45:                                               ; preds = %42, %7
  %46 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %47 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %46, i32 0, i32 0
  %48 = load %struct.tree_content*, %struct.tree_content** %47, align 8
  store %struct.tree_content* %48, %struct.tree_content** %15, align 8
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %218, %45
  %50 = load %struct.tree_content*, %struct.tree_content** %15, align 8
  %51 = icmp ne %struct.tree_content* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.tree_content*, %struct.tree_content** %15, align 8
  %55 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi i1 [ false, %49 ], [ %57, %52 ]
  br i1 %59, label %60, label %221

60:                                               ; preds = %58
  %61 = load %struct.tree_content*, %struct.tree_content** %15, align 8
  %62 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %61, i32 0, i32 1
  %63 = load %struct.tree_entry**, %struct.tree_entry*** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %63, i64 %65
  %67 = load %struct.tree_entry*, %struct.tree_entry** %66, align 8
  store %struct.tree_entry* %67, %struct.tree_entry** %16, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %70 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %68, %73
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %20, align 4
  %76 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %77 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %60
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %25, align 4
  %86 = icmp ugt i32 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %89 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = urem i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %83, %60
  br label %218

96:                                               ; preds = %87
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %102 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %107 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memcpy(i8* %100, i32 %105, i32 %110)
  %112 = load i32, i32* %20, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %96
  %115 = load i8*, i8** %12, align 8
  %116 = load i32, i32* %20, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %20, align 4
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8 47, i8* %119, align 1
  br label %120

120:                                              ; preds = %114, %96
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %20, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %126 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %131 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memcpy(i8* %124, i32 %129, i32 %134)
  %136 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %137 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %20, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %20, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = load i32, i32* %20, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %25, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %193

150:                                              ; preds = %120
  %151 = load i8*, i8** %10, align 8
  %152 = call i32 @get_oid_hex(i8* %151, %struct.object_id* %22)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %193, label %154

154:                                              ; preds = %150
  %155 = load i8, i8* %14, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 255
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i64, i64* %21, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %21, align 8
  br label %218

161:                                              ; preds = %154
  %162 = load i8*, i8** %10, align 8
  %163 = load i8, i8* %14, align 1
  %164 = call i32 @construct_path_with_fanout(i8* %162, i8 zeroext %163, i8* %34)
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @strcmp(i8* %165, i8* %34)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %161
  %169 = load i64, i64* %21, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %21, align 8
  br label %218

171:                                              ; preds = %161
  %172 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @tree_content_remove(%struct.tree_entry* %172, i8* %173, %struct.tree_entry* %17, i32 0)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = load i8*, i8** %12, align 8
  %178 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %176, %171
  %180 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %181 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %17, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %17, i32 0, i32 1
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %17, i32 0, i32 0
  %191 = load %struct.tree_content*, %struct.tree_content** %190, align 8
  %192 = call i32 @tree_content_set(%struct.tree_entry* %180, i8* %34, i32* %184, i32 %189, %struct.tree_content* %191)
  br label %214

193:                                              ; preds = %150, %120
  %194 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %195 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %194, i32 0, i32 1
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @S_ISDIR(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %193
  %203 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %204 = load %struct.tree_entry*, %struct.tree_entry** %16, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = load i32, i32* %19, align 4
  %207 = load i8*, i8** %12, align 8
  %208 = load i32, i32* %20, align 4
  %209 = load i8, i8* %14, align 1
  %210 = call i64 @do_change_note_fanout(%struct.tree_entry* %203, %struct.tree_entry* %204, i8* %205, i32 %206, i8* %207, i32 %208, i8 zeroext %209)
  %211 = load i64, i64* %21, align 8
  %212 = add nsw i64 %211, %210
  store i64 %212, i64* %21, align 8
  br label %213

213:                                              ; preds = %202, %193
  br label %214

214:                                              ; preds = %213, %179
  %215 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %216 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %215, i32 0, i32 0
  %217 = load %struct.tree_content*, %struct.tree_content** %216, align 8
  store %struct.tree_content* %217, %struct.tree_content** %15, align 8
  br label %218

218:                                              ; preds = %214, %168, %158, %95
  %219 = load i32, i32* %18, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %18, align 4
  br label %49

221:                                              ; preds = %58
  %222 = load i64, i64* %21, align 8
  %223 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %223)
  ret i64 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @load_tree(%struct.tree_entry*) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local i32 @construct_path_with_fanout(i8*, i8 zeroext, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @tree_content_remove(%struct.tree_entry*, i8*, %struct.tree_entry*, i32) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i32 @tree_content_set(%struct.tree_entry*, i8*, i32*, i32, %struct.tree_content*) #2

declare dso_local i64 @S_ISDIR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
