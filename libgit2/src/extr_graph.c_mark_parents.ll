; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_graph.c_mark_parents.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_graph.c_mark_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__** }

@PARENT1 = common dso_local global i32 0, align 4
@PARENT2 = common dso_local global i32 0, align 4
@RESULT = common dso_local global i32 0, align 4
@git_commit_list_time_cmp = common dso_local global i32 0, align 4
@STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @mark_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_parents(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32* null, i32** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = icmp eq %struct.TYPE_8__* %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, i32* @PARENT1, align 4
  %19 = load i32, i32* @PARENT2, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RESULT, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  store i32 0, i32* %4, align 4
  br label %167

27:                                               ; preds = %3
  %28 = load i32, i32* @git_commit_list_time_cmp, align 4
  %29 = call i64 @git_pqueue_init(i32* %10, i32 0, i32 2, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %167

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = call i64 @git_commit_list_parse(i32* %33, %struct.TYPE_8__* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %164

38:                                               ; preds = %32
  %39 = load i32, i32* @PARENT1, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = call i64 @git_pqueue_insert(i32* %10, %struct.TYPE_8__* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %164

48:                                               ; preds = %38
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = call i64 @git_commit_list_parse(i32* %49, %struct.TYPE_8__* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %164

54:                                               ; preds = %48
  %55 = load i32, i32* @PARENT2, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = call i64 @git_pqueue_insert(i32* %10, %struct.TYPE_8__* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %164

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %160, %64
  %66 = load i32*, i32** %9, align 8
  %67 = call i64 @interesting(i32* %10, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %161

69:                                               ; preds = %65
  %70 = call %struct.TYPE_8__* @git_pqueue_pop(i32* %10)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %11, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = icmp eq %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %161

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PARENT1, align 4
  %79 = load i32, i32* @PARENT2, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @STALE, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %77, %82
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @PARENT1, align 4
  %86 = load i32, i32* @PARENT2, align 4
  %87 = or i32 %85, %86
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %74
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RESULT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @RESULT, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %89
  %103 = load i32, i32* @STALE, align 4
  %104 = load i32, i32* %12, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %102, %74
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %146, %106
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ult i32 %108, %111
  br i1 %112, label %113, label %149

113:                                              ; preds = %107
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %116, i64 %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  store %struct.TYPE_8__* %120, %struct.TYPE_8__** %13, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  br label %146

129:                                              ; preds = %113
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %132 = call i64 @git_commit_list_parse(i32* %130, %struct.TYPE_8__* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %164

135:                                              ; preds = %129
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %142 = call i64 @git_pqueue_insert(i32* %10, %struct.TYPE_8__* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %164

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %128
  %147 = load i32, i32* %8, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %107

149:                                              ; preds = %107
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %156 = call i32* @git_commit_list_insert(%struct.TYPE_8__* %155, i32** %9)
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %164

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159, %149
  br label %65

161:                                              ; preds = %73, %65
  %162 = call i32 @git_commit_list_free(i32** %9)
  %163 = call i32 @git_pqueue_free(i32* %10)
  store i32 0, i32* %4, align 4
  br label %167

164:                                              ; preds = %158, %144, %134, %63, %53, %47, %37
  %165 = call i32 @git_commit_list_free(i32** %9)
  %166 = call i32 @git_pqueue_free(i32* %10)
  store i32 -1, i32* %4, align 4
  br label %167

167:                                              ; preds = %164, %161, %31, %17
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @git_pqueue_init(i32*, i32, i32, i32) #1

declare dso_local i64 @git_commit_list_parse(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @git_pqueue_insert(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @interesting(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @git_pqueue_pop(i32*) #1

declare dso_local i32* @git_commit_list_insert(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @git_commit_list_free(i32**) #1

declare dso_local i32 @git_pqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
