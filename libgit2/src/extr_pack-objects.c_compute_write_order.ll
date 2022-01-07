; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_compute_write_order.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_compute_write_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_13__*, %struct.TYPE_14__*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, i32 }

@cb_tag_foreach = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8
@GIT_OBJECT_TAG = common dso_local global i64 0, align 8
@GIT_OBJECT_TREE = common dso_local global i64 0, align 8
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid write order\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__** (%struct.TYPE_15__*)* @compute_write_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__** @compute_write_order(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_14__**, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.TYPE_14__** @git__mallocarray(i64 %17, i32 8)
  store %struct.TYPE_14__** %18, %struct.TYPE_14__*** %7, align 8
  %19 = icmp eq %struct.TYPE_14__** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.TYPE_14__** null, %struct.TYPE_14__*** %2, align 8
  br label %237

21:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 %32
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %8, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %41, align 8
  br label %42

42:                                               ; preds = %28
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %22

45:                                               ; preds = %22
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %64, %63, %45
  %50 = load i64, i64* %4, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i64 %57
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %9, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  br label %49

64:                                               ; preds = %52
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 4
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %76, align 8
  br label %49

77:                                               ; preds = %49
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = call i64 @git_tag_foreach(i32 %80, i32* @cb_tag_foreach, %struct.TYPE_15__* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %86 = call i32 @git__free(%struct.TYPE_14__** %85)
  store %struct.TYPE_14__** null, %struct.TYPE_14__*** %2, align 8
  br label %237

87:                                               ; preds = %77
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %88

88:                                               ; preds = %109, %87
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %98
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %10, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %112

105:                                              ; preds = %94
  %106 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %108 = call i32 @add_to_write_order(%struct.TYPE_14__** %106, i64* %5, %struct.TYPE_14__* %107)
  br label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %4, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %4, align 8
  br label %88

112:                                              ; preds = %104, %88
  %113 = load i64, i64* %4, align 8
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %135, %112
  %115 = load i64, i64* %4, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %114
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = load i64, i64* %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %124
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %11, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %133 = call i32 @add_to_write_order(%struct.TYPE_14__** %131, i64* %5, %struct.TYPE_14__* %132)
  br label %134

134:                                              ; preds = %130, %120
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %4, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %4, align 8
  br label %114

138:                                              ; preds = %114
  %139 = load i64, i64* %6, align 8
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %168, %138
  %141 = load i64, i64* %4, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ult i64 %141, %144
  br i1 %145, label %146, label %171

146:                                              ; preds = %140
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = load i64, i64* %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 %150
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %12, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %146
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %168

164:                                              ; preds = %157, %146
  %165 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %167 = call i32 @add_to_write_order(%struct.TYPE_14__** %165, i64* %5, %struct.TYPE_14__* %166)
  br label %168

168:                                              ; preds = %164, %163
  %169 = load i64, i64* %4, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %4, align 8
  br label %140

171:                                              ; preds = %140
  %172 = load i64, i64* %6, align 8
  store i64 %172, i64* %4, align 8
  br label %173

173:                                              ; preds = %195, %171
  %174 = load i64, i64* %4, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ult i64 %174, %177
  br i1 %178, label %179, label %198

179:                                              ; preds = %173
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = load i64, i64* %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 %183
  store %struct.TYPE_14__* %184, %struct.TYPE_14__** %13, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @GIT_OBJECT_TREE, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  br label %195

191:                                              ; preds = %179
  %192 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %194 = call i32 @add_to_write_order(%struct.TYPE_14__** %192, i64* %5, %struct.TYPE_14__* %193)
  br label %195

195:                                              ; preds = %191, %190
  %196 = load i64, i64* %4, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %4, align 8
  br label %173

198:                                              ; preds = %173
  %199 = load i64, i64* %6, align 8
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %221, %198
  %201 = load i64, i64* %4, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ult i64 %201, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %200
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load i64, i64* %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 %210
  store %struct.TYPE_14__* %211, %struct.TYPE_14__** %14, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %206
  %217 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %219 = call i32 @add_family_to_write_order(%struct.TYPE_14__** %217, i64* %5, %struct.TYPE_14__* %218)
  br label %220

220:                                              ; preds = %216, %206
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %4, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %4, align 8
  br label %200

224:                                              ; preds = %200
  %225 = load i64, i64* %5, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %225, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %232 = call i32 @git__free(%struct.TYPE_14__** %231)
  %233 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %234 = call i32 @git_error_set(i32 %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__** null, %struct.TYPE_14__*** %2, align 8
  br label %237

235:                                              ; preds = %224
  %236 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__** %236, %struct.TYPE_14__*** %2, align 8
  br label %237

237:                                              ; preds = %235, %230, %84, %20
  %238 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  ret %struct.TYPE_14__** %238
}

declare dso_local %struct.TYPE_14__** @git__mallocarray(i64, i32) #1

declare dso_local i64 @git_tag_foreach(i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @git__free(%struct.TYPE_14__**) #1

declare dso_local i32 @add_to_write_order(%struct.TYPE_14__**, i64*, %struct.TYPE_14__*) #1

declare dso_local i32 @add_family_to_write_order(%struct.TYPE_14__**, i64*, %struct.TYPE_14__*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
