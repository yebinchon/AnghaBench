; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_is_workdir_modified.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_is_workdir_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }

@GIT_FILEMODE_COMMIT = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_12__*)* @checkout_is_workdir_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_is_workdir_modified(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @git_submodule_lookup(i32** %12, i32 %24, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 (...) @git_error_clear()
  store i32 1, i32* %5, align 4
  br label %175

32:                                               ; preds = %21
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %40 = call i64 @git_submodule_status(i32* %13, i32 %35, i32 %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @GIT_SUBMODULE_STATUS_IS_WD_DIRTY(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %32
  store i32 1, i32* %15, align 4
  br label %60

47:                                               ; preds = %42
  %48 = load i32*, i32** %12, align 8
  %49 = call i32* @git_submodule_wd_id(i32* %48)
  store i32* %49, i32** %14, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  br label %59

52:                                               ; preds = %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32*, i32** %14, align 8
  %56 = call i64 @git_oid__cmp(i32* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %52, %51
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @git_submodule_free(i32* %61)
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %5, align 4
  br label %175

64:                                               ; preds = %4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_12__* @git_index_get_bypath(i32 %67, i32 %70, i32 0)
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %11, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %123

74:                                               ; preds = %64
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = call i64 @git_index_time_eq(i32* %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %74
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %81
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @is_filemode_changed(i32 %92, i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %123, label %101

101:                                              ; preds = %89
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = call i32 @is_workdir_base_or_new(i32* %103, %struct.TYPE_13__* %104, %struct.TYPE_13__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @is_filemode_changed(i32 %111, i32 %114, i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %108, %101
  %121 = phi i1 [ true, %101 ], [ %119, %108 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %5, align 4
  br label %175

123:                                              ; preds = %89, %81, %74, %64
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 1, i32* %5, align 4
  br label %175

137:                                              ; preds = %128, %123
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @S_ISDIR(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %175

144:                                              ; preds = %137
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @is_filemode_changed(i32 %147, i32 %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  store i32 1, i32* %5, align 4
  br label %175

157:                                              ; preds = %144
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @git_diff__oid_for_entry(i32* %10, i32 %160, %struct.TYPE_12__* %161, i32 %164, i32* null)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  br label %175

168:                                              ; preds = %157
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %171 = call i32 @is_workdir_base_or_new(i32* %10, %struct.TYPE_13__* %169, %struct.TYPE_13__* %170)
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %168, %167, %156, %143, %136, %120, %60, %30
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i64 @git_submodule_lookup(i32**, i32, i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i64 @git_submodule_status(i32*, i32, i32, i32) #1

declare dso_local i64 @GIT_SUBMODULE_STATUS_IS_WD_DIRTY(i32) #1

declare dso_local i32* @git_submodule_wd_id(i32*) #1

declare dso_local i64 @git_oid__cmp(i32*, i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

declare dso_local %struct.TYPE_12__* @git_index_get_bypath(i32, i32, i32) #1

declare dso_local i64 @git_index_time_eq(i32*, i32*) #1

declare dso_local i64 @is_filemode_changed(i32, i32, i32) #1

declare dso_local i32 @is_workdir_base_or_new(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @git_diff__oid_for_entry(i32*, i32, %struct.TYPE_12__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
