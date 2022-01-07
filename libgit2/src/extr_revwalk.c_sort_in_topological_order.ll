; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_sort_in_topological_order.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_sort_in_topological_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i16, %struct.TYPE_13__** }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }

@GIT_SORT_TIME = common dso_local global i32 0, align 4
@git_commit_list_time_cmp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__**, %struct.TYPE_12__*, %struct.TYPE_14__*)* @sort_in_topological_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_in_topological_order(%struct.TYPE_14__** %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  store i32* null, i32** %13, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GIT_SORT_TIME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32*, i32** @git_commit_list_time_cmp, align 8
  store i32* %25, i32** %13, align 8
  br label %26

26:                                               ; preds = %24, %3
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @git_pqueue_init(i32* %12, i32 0, i32 8, i32* %27)
  store i32 %28, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %4, align 4
  br label %179

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %8, align 8
  br label %34

34:                                               ; preds = %42, %32
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %8, align 8
  br label %34

46:                                               ; preds = %34
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %8, align 8
  br label %48

48:                                               ; preds = %86, %46
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %90

51:                                               ; preds = %48
  store i16 0, i16* %14, align 2
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i16, i16* %14, align 2
  %54 = zext i16 %53 to i32
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i16, i16* %58, align 4
  %60 = zext i16 %59 to i32
  %61 = icmp slt i32 %54, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %52
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %66, align 8
  %68 = load i16, i16* %14, align 2
  %69 = zext i16 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %67, i64 %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %16, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %62
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %76, %62
  br label %82

82:                                               ; preds = %81
  %83 = load i16, i16* %14, align 2
  %84 = add i16 %83, 1
  store i16 %84, i16* %14, align 2
  br label %52

85:                                               ; preds = %52
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %8, align 8
  br label %48

90:                                               ; preds = %48
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %8, align 8
  br label %92

92:                                               ; preds = %111, %90
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = icmp ne %struct.TYPE_14__* %93, null
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = call i32 @git_pqueue_insert(i32* %12, %struct.TYPE_13__* %105)
  store i32 %106, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %176

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %95
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %8, align 8
  br label %92

115:                                              ; preds = %92
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @GIT_SORT_TIME, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = call i32 @git_pqueue_reverse(i32* %12)
  br label %124

124:                                              ; preds = %122, %115
  store %struct.TYPE_14__** %9, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %125

125:                                              ; preds = %166, %124
  %126 = call %struct.TYPE_13__* @git_pqueue_pop(i32* %12)
  store %struct.TYPE_13__* %126, %struct.TYPE_13__** %11, align 8
  %127 = icmp ne %struct.TYPE_13__* %126, null
  br i1 %127, label %128, label %173

128:                                              ; preds = %125
  store i16 0, i16* %14, align 2
  br label %129

129:                                              ; preds = %163, %128
  %130 = load i16, i16* %14, align 2
  %131 = zext i16 %130 to i32
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i16, i16* %133, align 4
  %135 = zext i16 %134 to i32
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %166

137:                                              ; preds = %129
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %139, align 8
  %141 = load i16, i16* %14, align 2
  %142 = zext i16 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %140, i64 %142
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %17, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %163

150:                                              ; preds = %137
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %158 = call i32 @git_pqueue_insert(i32* %12, %struct.TYPE_13__* %157)
  store i32 %158, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %176

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %150
  br label %163

163:                                              ; preds = %162, %149
  %164 = load i16, i16* %14, align 2
  %165 = add i16 %164, 1
  store i16 %165, i16* %14, align 2
  br label %129

166:                                              ; preds = %129
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %170 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %171 = call %struct.TYPE_15__* @git_commit_list_insert(%struct.TYPE_13__* %169, %struct.TYPE_14__** %170)
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  store %struct.TYPE_14__** %172, %struct.TYPE_14__*** %10, align 8
  br label %125

173:                                              ; preds = %125
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %175 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  store %struct.TYPE_14__* %174, %struct.TYPE_14__** %175, align 8
  store i32 0, i32* %15, align 4
  br label %176

176:                                              ; preds = %173, %160, %108
  %177 = call i32 @git_pqueue_free(i32* %12)
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %176, %30
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @git_pqueue_init(i32*, i32, i32, i32*) #1

declare dso_local i32 @git_pqueue_insert(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @git_pqueue_reverse(i32*) #1

declare dso_local %struct.TYPE_13__* @git_pqueue_pop(i32*) #1

declare dso_local %struct.TYPE_15__* @git_commit_list_insert(%struct.TYPE_13__*, %struct.TYPE_14__**) #1

declare dso_local i32 @git_pqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
