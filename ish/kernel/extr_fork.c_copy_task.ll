; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fork.c_copy_task.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fork.c_copy_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32, %struct.mm*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32, i32, %struct.tgroup*, i32, %struct.TYPE_13__, i32* }
%struct.mm = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.tgroup = type { i32, i32, %struct.task* }
%struct.TYPE_13__ = type { i64 }

@CLONE_VM_ = common dso_local global i32 0, align 4
@CLONE_FILES_ = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4
@CLONE_FS_ = common dso_local global i32 0, align 4
@CLONE_SIGHAND_ = common dso_local global i32 0, align 4
@pids_lock = common dso_local global i32 0, align 4
@CLONE_THREAD_ = common dso_local global i32 0, align 4
@CLONE_SETTLS_ = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@CLONE_CHILD_SETTID_ = common dso_local global i32 0, align 4
@CLONE_PARENT_SETTID_ = common dso_local global i32 0, align 4
@CLONE_CHILD_CLEARTID_ = common dso_local global i32 0, align 4
@CSIGNAL_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task*, i32, i64, i64, i64, i64)* @copy_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_task(%struct.task* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.task*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mm*, align 8
  %16 = alloca %struct.tgroup*, align 8
  store %struct.task* %0, %struct.task** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.task*, %struct.task** %8, align 8
  %18 = getelementptr inbounds %struct.task, %struct.task* %17, i32 0, i32 11
  store i32* null, i32** %18, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %6
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.task*, %struct.task** %8, align 8
  %24 = getelementptr inbounds %struct.task, %struct.task* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %6
  %27 = load %struct.task*, %struct.task** %8, align 8
  %28 = getelementptr inbounds %struct.task, %struct.task* %27, i32 0, i32 1
  %29 = load %struct.mm*, %struct.mm** %28, align 8
  store %struct.mm* %29, %struct.mm** %15, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CLONE_VM_, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.mm*, %struct.mm** %15, align 8
  %36 = call i32 @mm_retain(%struct.mm* %35)
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.task*, %struct.task** %8, align 8
  %39 = load %struct.mm*, %struct.mm** %15, align 8
  %40 = call i32 @mm_copy(%struct.mm* %39)
  %41 = call i32 @task_set_mm(%struct.task* %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @CLONE_FILES_, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.task*, %struct.task** %8, align 8
  %49 = getelementptr inbounds %struct.task, %struct.task* %48, i32 0, i32 2
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %72

54:                                               ; preds = %42
  %55 = load %struct.task*, %struct.task** %8, align 8
  %56 = getelementptr inbounds %struct.task, %struct.task* %55, i32 0, i32 2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = call %struct.TYPE_16__* @fdtable_copy(%struct.TYPE_16__* %57)
  %59 = load %struct.task*, %struct.task** %8, align 8
  %60 = getelementptr inbounds %struct.task, %struct.task* %59, i32 0, i32 2
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %60, align 8
  %61 = load %struct.task*, %struct.task** %8, align 8
  %62 = getelementptr inbounds %struct.task, %struct.task* %61, i32 0, i32 2
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = call i64 @IS_ERR(%struct.TYPE_16__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.task*, %struct.task** %8, align 8
  %68 = getelementptr inbounds %struct.task, %struct.task* %67, i32 0, i32 2
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.TYPE_16__* %69)
  store i32 %70, i32* %14, align 4
  br label %234

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32, i32* @_ENOMEM, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @CLONE_FS_, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.task*, %struct.task** %8, align 8
  %80 = getelementptr inbounds %struct.task, %struct.task* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %98

85:                                               ; preds = %72
  %86 = load %struct.task*, %struct.task** %8, align 8
  %87 = getelementptr inbounds %struct.task, %struct.task* %86, i32 0, i32 3
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = call %struct.TYPE_15__* @fs_info_copy(%struct.TYPE_15__* %88)
  %90 = load %struct.task*, %struct.task** %8, align 8
  %91 = getelementptr inbounds %struct.task, %struct.task* %90, i32 0, i32 3
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %91, align 8
  %92 = load %struct.task*, %struct.task** %8, align 8
  %93 = getelementptr inbounds %struct.task, %struct.task* %92, i32 0, i32 3
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = icmp eq %struct.TYPE_15__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %229

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @CLONE_SIGHAND_, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.task*, %struct.task** %8, align 8
  %105 = getelementptr inbounds %struct.task, %struct.task* %104, i32 0, i32 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %123

110:                                              ; preds = %98
  %111 = load %struct.task*, %struct.task** %8, align 8
  %112 = getelementptr inbounds %struct.task, %struct.task* %111, i32 0, i32 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = call %struct.TYPE_14__* @sighand_copy(%struct.TYPE_14__* %113)
  %115 = load %struct.task*, %struct.task** %8, align 8
  %116 = getelementptr inbounds %struct.task, %struct.task* %115, i32 0, i32 4
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %116, align 8
  %117 = load %struct.task*, %struct.task** %8, align 8
  %118 = getelementptr inbounds %struct.task, %struct.task* %117, i32 0, i32 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = icmp eq %struct.TYPE_14__* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %224

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %103
  %124 = load %struct.task*, %struct.task** %8, align 8
  %125 = getelementptr inbounds %struct.task, %struct.task* %124, i32 0, i32 8
  %126 = load %struct.tgroup*, %struct.tgroup** %125, align 8
  store %struct.tgroup* %126, %struct.tgroup** %16, align 8
  %127 = call i32 @lock(i32* @pids_lock)
  %128 = load %struct.tgroup*, %struct.tgroup** %16, align 8
  %129 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %128, i32 0, i32 0
  %130 = call i32 @lock(i32* %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @CLONE_THREAD_, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %123
  %136 = load %struct.tgroup*, %struct.tgroup** %16, align 8
  %137 = call %struct.tgroup* @tgroup_copy(%struct.tgroup* %136)
  %138 = load %struct.task*, %struct.task** %8, align 8
  %139 = getelementptr inbounds %struct.task, %struct.task* %138, i32 0, i32 8
  store %struct.tgroup* %137, %struct.tgroup** %139, align 8
  %140 = load %struct.task*, %struct.task** %8, align 8
  %141 = load %struct.task*, %struct.task** %8, align 8
  %142 = getelementptr inbounds %struct.task, %struct.task* %141, i32 0, i32 8
  %143 = load %struct.tgroup*, %struct.tgroup** %142, align 8
  %144 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %143, i32 0, i32 2
  store %struct.task* %140, %struct.task** %144, align 8
  %145 = load %struct.task*, %struct.task** %8, align 8
  %146 = getelementptr inbounds %struct.task, %struct.task* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.task*, %struct.task** %8, align 8
  %149 = getelementptr inbounds %struct.task, %struct.task* %148, i32 0, i32 9
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %135, %123
  %151 = load %struct.task*, %struct.task** %8, align 8
  %152 = getelementptr inbounds %struct.task, %struct.task* %151, i32 0, i32 8
  %153 = load %struct.tgroup*, %struct.tgroup** %152, align 8
  %154 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %153, i32 0, i32 1
  %155 = load %struct.task*, %struct.task** %8, align 8
  %156 = getelementptr inbounds %struct.task, %struct.task* %155, i32 0, i32 7
  %157 = call i32 @list_add(i32* %154, i32* %156)
  %158 = load %struct.tgroup*, %struct.tgroup** %16, align 8
  %159 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %158, i32 0, i32 0
  %160 = call i32 @unlock(i32* %159)
  %161 = call i32 @unlock(i32* @pids_lock)
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @CLONE_SETTLS_, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %150
  %167 = load %struct.task*, %struct.task** %8, align 8
  %168 = load i64, i64* %12, align 8
  %169 = call i32 @task_set_thread_area(%struct.task* %167, i64 %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %219

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %150
  %175 = load i32, i32* @_EFAULT, align 4
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @CLONE_CHILD_SETTID_, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load %struct.task*, %struct.task** %8, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load %struct.task*, %struct.task** %8, align 8
  %184 = getelementptr inbounds %struct.task, %struct.task* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @user_put_task(%struct.task* %181, i64 %182, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %219

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %174
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @CLONE_PARENT_SETTID_, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load i64, i64* %11, align 8
  %197 = load %struct.task*, %struct.task** %8, align 8
  %198 = getelementptr inbounds %struct.task, %struct.task* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @user_put(i64 %196, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %219

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203, %190
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @CLONE_CHILD_CLEARTID_, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i64, i64* %13, align 8
  %211 = load %struct.task*, %struct.task** %8, align 8
  %212 = getelementptr inbounds %struct.task, %struct.task* %211, i32 0, i32 5
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %209, %204
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @CSIGNAL_, align 4
  %216 = and i32 %214, %215
  %217 = load %struct.task*, %struct.task** %8, align 8
  %218 = getelementptr inbounds %struct.task, %struct.task* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  store i32 0, i32* %7, align 4
  br label %240

219:                                              ; preds = %202, %188, %172
  %220 = load %struct.task*, %struct.task** %8, align 8
  %221 = getelementptr inbounds %struct.task, %struct.task* %220, i32 0, i32 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = call i32 @sighand_release(%struct.TYPE_14__* %222)
  br label %224

224:                                              ; preds = %219, %121
  %225 = load %struct.task*, %struct.task** %8, align 8
  %226 = getelementptr inbounds %struct.task, %struct.task* %225, i32 0, i32 3
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = call i32 @fs_info_release(%struct.TYPE_15__* %227)
  br label %229

229:                                              ; preds = %224, %96
  %230 = load %struct.task*, %struct.task** %8, align 8
  %231 = getelementptr inbounds %struct.task, %struct.task* %230, i32 0, i32 2
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = call i32 @fdtable_release(%struct.TYPE_16__* %232)
  br label %234

234:                                              ; preds = %229, %66
  %235 = load %struct.task*, %struct.task** %8, align 8
  %236 = getelementptr inbounds %struct.task, %struct.task* %235, i32 0, i32 1
  %237 = load %struct.mm*, %struct.mm** %236, align 8
  %238 = call i32 @mm_release(%struct.mm* %237)
  %239 = load i32, i32* %14, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %234, %213
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i32 @mm_retain(%struct.mm*) #1

declare dso_local i32 @task_set_mm(%struct.task*, i32) #1

declare dso_local i32 @mm_copy(%struct.mm*) #1

declare dso_local %struct.TYPE_16__* @fdtable_copy(%struct.TYPE_16__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @fs_info_copy(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @sighand_copy(%struct.TYPE_14__*) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.tgroup* @tgroup_copy(%struct.tgroup*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @task_set_thread_area(%struct.task*, i64) #1

declare dso_local i64 @user_put_task(%struct.task*, i64, i32) #1

declare dso_local i64 @user_put(i64, i32) #1

declare dso_local i32 @sighand_release(%struct.TYPE_14__*) #1

declare dso_local i32 @fs_info_release(%struct.TYPE_15__*) #1

declare dso_local i32 @fdtable_release(%struct.TYPE_16__*) #1

declare dso_local i32 @mm_release(%struct.mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
