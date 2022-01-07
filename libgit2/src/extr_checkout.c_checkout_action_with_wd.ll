; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action_with_wd.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action_with_wd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@CHECKOUT_ACTION__NONE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_DIRTY = common dso_local global i32 0, align 4
@FORCE = common dso_local global i32 0, align 4
@UPDATE_BLOB = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@DONT_OVERWRITE_IGNORED = common dso_local global i32 0, align 4
@CONFLICT = common dso_local global i32 0, align 4
@REMOVE = common dso_local global i32 0, align 4
@SAFE = common dso_local global i32 0, align 4
@GIT_FILEMODE_COMMIT = common dso_local global i32 0, align 4
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@REMOVE_AND_UPDATE = common dso_local global i32 0, align 4
@CHECKOUT_ACTION__UPDATE_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_13__*, i32*, %struct.TYPE_12__*)* @checkout_action_with_wd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_action_with_wd(i32* %0, i32* %1, %struct.TYPE_13__* %2, i32* %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %10, align 8
  %11 = load i32, i32* @CHECKOUT_ACTION__NONE, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %195 [
    i32 128, label %16
    i32 132, label %38
    i32 131, label %55
    i32 130, label %77
    i32 129, label %105
  ]

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = call i32 @checkout_is_workdir_modified(i32* %17, %struct.TYPE_14__* %19, %struct.TYPE_15__* %21, %struct.TYPE_12__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @GIT_CHECKOUT_NOTIFY_DIRTY, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = call i32 @checkout_notify(i32* %26, i32 %27, %struct.TYPE_13__* %28, %struct.TYPE_12__* %29)
  %31 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %30)
  %32 = load i32, i32* @FORCE, align 4
  %33 = load i32, i32* @UPDATE_BLOB, align 4
  %34 = load i32, i32* @NONE, align 4
  %35 = call i32 @CHECKOUT_ACTION_IF(i32 %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %25, %16
  br label %196

38:                                               ; preds = %5
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @git_iterator_current_is_ignored(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @DONT_OVERWRITE_IGNORED, align 4
  %44 = load i32, i32* @CONFLICT, align 4
  %45 = load i32, i32* @UPDATE_BLOB, align 4
  %46 = call i32 @CHECKOUT_ACTION_IF(i32 %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %54

48:                                               ; preds = %38
  %49 = load i32, i32* @FORCE, align 4
  %50 = load i32, i32* @UPDATE_BLOB, align 4
  %51 = load i32, i32* @CONFLICT, align 4
  %52 = call i32 @CHECKOUT_ACTION_IF(i32 %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %42
  br label %196

55:                                               ; preds = %5
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = call i32 @checkout_is_workdir_modified(i32* %56, %struct.TYPE_14__* %58, %struct.TYPE_15__* %60, %struct.TYPE_12__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i32, i32* @FORCE, align 4
  %66 = load i32, i32* @REMOVE, align 4
  %67 = load i32, i32* @CONFLICT, align 4
  %68 = call i32 @CHECKOUT_ACTION_IF(i32 %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %76

70:                                               ; preds = %55
  %71 = load i32, i32* @SAFE, align 4
  %72 = load i32, i32* @REMOVE, align 4
  %73 = load i32, i32* @NONE, align 4
  %74 = call i32 @CHECKOUT_ACTION_IF(i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %64
  br label %196

77:                                               ; preds = %5
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = call i32 @checkout_is_workdir_modified(i32* %84, %struct.TYPE_14__* %86, %struct.TYPE_15__* %88, %struct.TYPE_12__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load i32, i32* @FORCE, align 4
  %94 = load i32, i32* @UPDATE_BLOB, align 4
  %95 = load i32, i32* @CONFLICT, align 4
  %96 = call i32 @CHECKOUT_ACTION_IF(i32 %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  br label %104

98:                                               ; preds = %83, %77
  %99 = load i32, i32* @SAFE, align 4
  %100 = load i32, i32* @UPDATE_BLOB, align 4
  %101 = load i32, i32* @NONE, align 4
  %102 = call i32 @CHECKOUT_ACTION_IF(i32 %99, i32 %100, i32 %101)
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %92
  br label %196

105:                                              ; preds = %5
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %158

112:                                              ; preds = %105
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load i32, i32* @SAFE, align 4
  %120 = load i32, i32* @UPDATE_BLOB, align 4
  %121 = load i32, i32* @NONE, align 4
  %122 = call i32 @CHECKOUT_ACTION_IF(i32 %119, i32 %120, i32 %121)
  %123 = load i32*, i32** %6, align 8
  store i32 %122, i32* %123, align 4
  br label %157

124:                                              ; preds = %112
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %124
  %131 = load i32*, i32** %7, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @submodule_is_config_only(i32* %131, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load i32, i32* @SAFE, align 4
  %139 = load i32, i32* @UPDATE_BLOB, align 4
  %140 = load i32, i32* @NONE, align 4
  %141 = call i32 @CHECKOUT_ACTION_IF(i32 %138, i32 %139, i32 %140)
  %142 = load i32*, i32** %6, align 8
  store i32 %141, i32* %142, align 4
  br label %149

143:                                              ; preds = %130
  %144 = load i32, i32* @FORCE, align 4
  %145 = load i32, i32* @REMOVE_AND_UPDATE, align 4
  %146 = load i32, i32* @CONFLICT, align 4
  %147 = call i32 @CHECKOUT_ACTION_IF(i32 %144, i32 %145, i32 %146)
  %148 = load i32*, i32** %6, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %143, %137
  br label %156

150:                                              ; preds = %124
  %151 = load i32, i32* @FORCE, align 4
  %152 = load i32, i32* @REMOVE, align 4
  %153 = load i32, i32* @CONFLICT, align 4
  %154 = call i32 @CHECKOUT_ACTION_IF(i32 %151, i32 %152, i32 %153)
  %155 = load i32*, i32** %6, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %149
  br label %157

157:                                              ; preds = %156, %118
  br label %180

158:                                              ; preds = %105
  %159 = load i32*, i32** %7, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %165 = call i32 @checkout_is_workdir_modified(i32* %159, %struct.TYPE_14__* %161, %struct.TYPE_15__* %163, %struct.TYPE_12__* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = load i32, i32* @FORCE, align 4
  %169 = load i32, i32* @REMOVE_AND_UPDATE, align 4
  %170 = load i32, i32* @CONFLICT, align 4
  %171 = call i32 @CHECKOUT_ACTION_IF(i32 %168, i32 %169, i32 %170)
  %172 = load i32*, i32** %6, align 8
  store i32 %171, i32* %172, align 4
  br label %179

173:                                              ; preds = %158
  %174 = load i32, i32* @SAFE, align 4
  %175 = load i32, i32* @REMOVE_AND_UPDATE, align 4
  %176 = load i32, i32* @NONE, align 4
  %177 = call i32 @CHECKOUT_ACTION_IF(i32 %174, i32 %175, i32 %176)
  %178 = load i32*, i32** %6, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %167
  br label %180

180:                                              ; preds = %179, %157
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %180
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @CHECKOUT_ACTION__UPDATE_BLOB, align 4
  %191 = xor i32 %190, -1
  %192 = and i32 %189, %191
  %193 = load i32*, i32** %6, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %187, %180
  br label %196

195:                                              ; preds = %5
  br label %196

196:                                              ; preds = %195, %194, %104, %76, %54, %37
  %197 = load i32*, i32** %6, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %201 = call i32 @checkout_action_common(i32* %197, i32* %198, %struct.TYPE_13__* %199, %struct.TYPE_12__* %200)
  ret i32 %201
}

declare dso_local i32 @checkout_is_workdir_modified(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_12__*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ERROR(i32) #1

declare dso_local i32 @checkout_notify(i32*, i32, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @CHECKOUT_ACTION_IF(i32, i32, i32) #1

declare dso_local i32 @git_iterator_current_is_ignored(i32*) #1

declare dso_local i32 @submodule_is_config_only(i32*, i32) #1

declare dso_local i32 @checkout_action_common(i32*, i32*, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
