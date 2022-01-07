; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_compact_treesame.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_compact_treesame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i64 }
%struct.commit = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.treesame_state = type { i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"compact_treesame %u\00", align 1
@TREESAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"compact_treesame parents mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit*, i32)* @compact_treesame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compact_treesame(%struct.rev_info* %0, %struct.commit* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.treesame_state*, align 8
  %9 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.commit*, %struct.commit** %6, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.commit*, %struct.commit** %6, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TREESAME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %32 = load %struct.commit*, %struct.commit** %6, align 8
  %33 = call i64 @rev_same_tree_as_empty(%struct.rev_info* %31, %struct.commit* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load i32, i32* @TREESAME, align 4
  %37 = load %struct.commit*, %struct.commit** %6, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 8
  br label %50

42:                                               ; preds = %20
  %43 = load i32, i32* @TREESAME, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.commit*, %struct.commit** %6, align 8
  %46 = getelementptr inbounds %struct.commit, %struct.commit* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %44
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %42, %35
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %147

52:                                               ; preds = %3
  %53 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %54 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %53, i32 0, i32 0
  %55 = load %struct.commit*, %struct.commit** %6, align 8
  %56 = getelementptr inbounds %struct.commit, %struct.commit* %55, i32 0, i32 0
  %57 = call %struct.treesame_state* @lookup_decoration(i32* %54, %struct.TYPE_5__* %56)
  store %struct.treesame_state* %57, %struct.treesame_state** %8, align 8
  %58 = load %struct.treesame_state*, %struct.treesame_state** %8, align 8
  %59 = icmp ne %struct.treesame_state* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.treesame_state*, %struct.treesame_state** %8, align 8
  %63 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp uge i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %52
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.treesame_state*, %struct.treesame_state** %8, align 8
  %71 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load %struct.treesame_state*, %struct.treesame_state** %8, align 8
  %78 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load %struct.treesame_state*, %struct.treesame_state** %8, align 8
  %84 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load %struct.treesame_state*, %struct.treesame_state** %8, align 8
  %91 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sub i32 %92, %93
  %95 = sub i32 %94, 1
  %96 = call i32 @memmove(i32* %82, i32* %89, i32 %95)
  %97 = load %struct.treesame_state*, %struct.treesame_state** %8, align 8
  %98 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %99, -1
  store i32 %100, i32* %98, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %145

102:                                              ; preds = %69
  %103 = load %struct.commit*, %struct.commit** %6, align 8
  %104 = getelementptr inbounds %struct.commit, %struct.commit* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %102
  %112 = load %struct.treesame_state*, %struct.treesame_state** %8, align 8
  %113 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %111
  %119 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %120 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* @TREESAME, align 4
  %125 = load %struct.commit*, %struct.commit** %6, align 8
  %126 = getelementptr inbounds %struct.commit, %struct.commit* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 8
  br label %138

130:                                              ; preds = %118, %111
  %131 = load i32, i32* @TREESAME, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.commit*, %struct.commit** %6, align 8
  %134 = getelementptr inbounds %struct.commit, %struct.commit* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %130, %123
  %139 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %140 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %139, i32 0, i32 0
  %141 = load %struct.commit*, %struct.commit** %6, align 8
  %142 = getelementptr inbounds %struct.commit, %struct.commit* %141, i32 0, i32 0
  %143 = call i32 @add_decoration(i32* %140, %struct.TYPE_5__* %142, i32* null)
  %144 = call i32 @free(i32 %143)
  br label %145

145:                                              ; preds = %138, %69
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %50
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @rev_same_tree_as_empty(%struct.rev_info*, %struct.commit*) #1

declare dso_local %struct.treesame_state* @lookup_decoration(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @add_decoration(i32*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
