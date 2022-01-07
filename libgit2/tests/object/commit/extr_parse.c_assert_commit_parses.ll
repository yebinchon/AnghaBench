; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/commit/extr_parse.c_assert_commit_parses.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/commit/extr_parse.c_assert_commit_parses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i8*, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*, i8*, i8*, i8*, i64)* @assert_commit_parses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_commit_parses(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %23, %8
  %27 = bitcast %struct.TYPE_19__** %17 to i32**
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %31 = call i32 @git_object__from_raw(i32** %27, i8* %28, i64 %29, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %98

35:                                               ; preds = %26
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @git_signature_from_buffer(%struct.TYPE_18__** %18, i8* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = call i32 @git_signature__equal(%struct.TYPE_18__* %39, %struct.TYPE_12__* %42)
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @cl_assert_equal_s(i32 %47, i8* %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @cl_assert_equal_s(i32 %56, i8* %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @cl_assert_equal_i(i32 %66, i64 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @cl_assert_equal_i(i32 %77, i64 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @cl_assert_equal_i(i32 %88, i64 %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %97 = call i32 @git_signature_free(%struct.TYPE_18__* %96)
  br label %98

98:                                               ; preds = %35, %26
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %158

101:                                              ; preds = %98
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @git_signature_from_buffer(%struct.TYPE_18__** %19, i8* %102)
  %104 = call i32 @cl_git_pass(i32 %103)
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @cl_assert_equal_s(i32 %107, i8* %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @cl_assert_equal_s(i32 %116, i8* %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @cl_assert_equal_i(i32 %126, i64 %132)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 5
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @cl_assert_equal_i(i32 %137, i64 %143)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @cl_assert_equal_i(i32 %148, i64 %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %157 = call i32 @git_signature_free(%struct.TYPE_18__* %156)
  br label %158

158:                                              ; preds = %101, %98
  %159 = load i8*, i8** %14, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @cl_assert_equal_s(i32 %164, i8* %165)
  br label %172

167:                                              ; preds = %158
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @cl_assert_equal_p(i32 %170, i32* null)
  br label %172

172:                                              ; preds = %167, %161
  %173 = load i8*, i8** %15, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = call i32 @cl_assert_equal_s(i32 %178, i8* %179)
  br label %186

181:                                              ; preds = %172
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @cl_assert_equal_p(i32 %184, i32* null)
  br label %186

186:                                              ; preds = %181, %175
  %187 = load i8*, i8** %11, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @git_oid_fromstr(i32* %20, i8* %190)
  %192 = call i32 @cl_git_pass(i32 %191)
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 2
  %195 = call i32 @cl_assert_equal_oid(i32* %20, i32* %194)
  br label %196

196:                                              ; preds = %189, %186
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i64, i64* %16, align 8
  %202 = call i32 @cl_assert_equal_i(i32 %200, i64 %201)
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = call i32 @git_object__free(i32* %204)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object__from_raw(i32**, i8*, i64, i32) #1

declare dso_local i32 @git_signature_from_buffer(%struct.TYPE_18__**, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_signature__equal(%struct.TYPE_18__*, %struct.TYPE_12__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i32 @git_signature_free(%struct.TYPE_18__*) #1

declare dso_local i32 @cl_assert_equal_p(i32, i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @git_object__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
