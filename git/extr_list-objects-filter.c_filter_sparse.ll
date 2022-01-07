; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_sparse.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i32, i32, i32 }
%struct.oidset = type { i32 }
%struct.filter_sparse_data = type { i64, i32, %struct.frame*, i32 }
%struct.frame = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"unknown filter_situation: %d\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@UNDECIDED = common dso_local global i32 0, align 4
@FILTER_SHOWN_BUT_REVISIT = common dso_local global i32 0, align 4
@LOFR_ZERO = common dso_local global i32 0, align 4
@LOFR_DO_SHOW = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@MATCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, %struct.oidset*, i8*)* @filter_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_sparse(%struct.repository* %0, i32 %1, %struct.object* %2, i8* %3, i8* %4, %struct.oidset* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.oidset*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.filter_sparse_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.frame*, align 8
  %19 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.object* %2, %struct.object** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.oidset* %5, %struct.oidset** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = bitcast i8* %20 to %struct.filter_sparse_data*
  store %struct.filter_sparse_data* %21, %struct.filter_sparse_data** %16, align 8
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %23 [
    i32 130, label %26
    i32 128, label %108
    i32 129, label %152
  ]

23:                                               ; preds = %7
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @BUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %7, %23
  %27 = load %struct.object*, %struct.object** %11, align 8
  %28 = getelementptr inbounds %struct.object, %struct.object* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OBJ_TREE, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* @DT_DIR, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = load i8*, i8** %13, align 8
  %39 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %40 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %39, i32 0, i32 1
  %41 = load %struct.repository*, %struct.repository** %9, align 8
  %42 = getelementptr inbounds %struct.repository, %struct.repository* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @path_matches_pattern_list(i8* %35, i32 %37, i8* %38, i32* %17, i32* %40, i32 %43)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* @UNDECIDED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %26
  %49 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %50 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %49, i32 0, i32 2
  %51 = load %struct.frame*, %struct.frame** %50, align 8
  %52 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %53 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds %struct.frame, %struct.frame* %51, i64 %55
  %57 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %19, align 4
  br label %59

59:                                               ; preds = %48, %26
  %60 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %61 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %60, i32 0, i32 2
  %62 = load %struct.frame*, %struct.frame** %61, align 8
  %63 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %64 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %69 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ALLOC_GROW(%struct.frame* %62, i32 %67, i32 %70)
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %74 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %73, i32 0, i32 2
  %75 = load %struct.frame*, %struct.frame** %74, align 8
  %76 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %77 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.frame, %struct.frame* %75, i64 %78
  %80 = getelementptr inbounds %struct.frame, %struct.frame* %79, i32 0, i32 0
  store i32 %72, i32* %80, align 4
  %81 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %82 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %81, i32 0, i32 2
  %83 = load %struct.frame*, %struct.frame** %82, align 8
  %84 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %85 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.frame, %struct.frame* %83, i64 %86
  %88 = getelementptr inbounds %struct.frame, %struct.frame* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %90 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.object*, %struct.object** %11, align 8
  %94 = getelementptr inbounds %struct.object, %struct.object* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FILTER_SHOWN_BUT_REVISIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %59
  %100 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %100, i32* %8, align 4
  br label %222

101:                                              ; preds = %59
  %102 = load i32, i32* @FILTER_SHOWN_BUT_REVISIT, align 4
  %103 = load %struct.object*, %struct.object** %11, align 8
  %104 = getelementptr inbounds %struct.object, %struct.object* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* @LOFR_DO_SHOW, align 4
  store i32 %107, i32* %8, align 4
  br label %222

108:                                              ; preds = %7
  %109 = load %struct.object*, %struct.object** %11, align 8
  %110 = getelementptr inbounds %struct.object, %struct.object* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @OBJ_TREE, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %117 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ugt i64 %118, 1
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %123 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %122, i32 0, i32 2
  %124 = load %struct.frame*, %struct.frame** %123, align 8
  %125 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %126 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, -1
  store i64 %128, i64* %126, align 8
  %129 = getelementptr inbounds %struct.frame, %struct.frame* %124, i64 %128
  store %struct.frame* %129, %struct.frame** %18, align 8
  %130 = load %struct.frame*, %struct.frame** %18, align 8
  %131 = getelementptr inbounds %struct.frame, %struct.frame* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %134 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %133, i32 0, i32 2
  %135 = load %struct.frame*, %struct.frame** %134, align 8
  %136 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %137 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds %struct.frame, %struct.frame* %135, i64 %139
  %141 = getelementptr inbounds %struct.frame, %struct.frame* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %132
  store i32 %143, i32* %141, align 4
  %144 = load %struct.frame*, %struct.frame** %18, align 8
  %145 = getelementptr inbounds %struct.frame, %struct.frame* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %108
  %149 = load i32, i32* @LOFR_MARK_SEEN, align 4
  store i32 %149, i32* %8, align 4
  br label %222

150:                                              ; preds = %108
  %151 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %151, i32* %8, align 4
  br label %222

152:                                              ; preds = %7
  %153 = load %struct.object*, %struct.object** %11, align 8
  %154 = getelementptr inbounds %struct.object, %struct.object* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @OBJ_BLOB, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.object*, %struct.object** %11, align 8
  %161 = getelementptr inbounds %struct.object, %struct.object* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @SEEN, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %169 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %168, i32 0, i32 2
  %170 = load %struct.frame*, %struct.frame** %169, align 8
  %171 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %172 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sub i64 %173, 1
  %175 = getelementptr inbounds %struct.frame, %struct.frame* %170, i64 %174
  store %struct.frame* %175, %struct.frame** %18, align 8
  %176 = load i32, i32* @DT_REG, align 4
  store i32 %176, i32* %17, align 4
  %177 = load i8*, i8** %12, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = load i8*, i8** %13, align 8
  %181 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %16, align 8
  %182 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %181, i32 0, i32 1
  %183 = load %struct.repository*, %struct.repository** %9, align 8
  %184 = getelementptr inbounds %struct.repository, %struct.repository* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @path_matches_pattern_list(i8* %177, i32 %179, i8* %180, i32* %17, i32* %182, i32 %185)
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* @UNDECIDED, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %152
  %191 = load %struct.frame*, %struct.frame** %18, align 8
  %192 = getelementptr inbounds %struct.frame, %struct.frame* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %19, align 4
  br label %194

194:                                              ; preds = %190, %152
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* @MATCHED, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %194
  %199 = load %struct.oidset*, %struct.oidset** %14, align 8
  %200 = icmp ne %struct.oidset* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load %struct.oidset*, %struct.oidset** %14, align 8
  %203 = load %struct.object*, %struct.object** %11, align 8
  %204 = getelementptr inbounds %struct.object, %struct.object* %203, i32 0, i32 1
  %205 = call i32 @oidset_remove(%struct.oidset* %202, i32* %204)
  br label %206

206:                                              ; preds = %201, %198
  %207 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %208 = load i32, i32* @LOFR_DO_SHOW, align 4
  %209 = or i32 %207, %208
  store i32 %209, i32* %8, align 4
  br label %222

210:                                              ; preds = %194
  %211 = load %struct.oidset*, %struct.oidset** %14, align 8
  %212 = icmp ne %struct.oidset* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.oidset*, %struct.oidset** %14, align 8
  %215 = load %struct.object*, %struct.object** %11, align 8
  %216 = getelementptr inbounds %struct.object, %struct.object* %215, i32 0, i32 1
  %217 = call i32 @oidset_insert(%struct.oidset* %214, i32* %216)
  br label %218

218:                                              ; preds = %213, %210
  %219 = load %struct.frame*, %struct.frame** %18, align 8
  %220 = getelementptr inbounds %struct.frame, %struct.frame* %219, i32 0, i32 1
  store i32 1, i32* %220, align 4
  %221 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %218, %206, %150, %148, %101, %99
  %223 = load i32, i32* %8, align 4
  ret i32 %223
}

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @path_matches_pattern_list(i8*, i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ALLOC_GROW(%struct.frame*, i32, i32) #1

declare dso_local i32 @oidset_remove(%struct.oidset*, i32*) #1

declare dso_local i32 @oidset_insert(%struct.oidset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
