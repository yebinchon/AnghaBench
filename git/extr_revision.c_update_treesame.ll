; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_update_treesame.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_update_treesame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.commit_list = type { i32, %struct.commit_list* }
%struct.treesame_state = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"update_treesame %s\00", align 1
@TREESAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit*)* @update_treesame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_treesame(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.treesame_state*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %11 = load %struct.commit*, %struct.commit** %4, align 8
  %12 = getelementptr inbounds %struct.commit, %struct.commit* %11, i32 0, i32 1
  %13 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %14 = icmp ne %struct.commit_list* %13, null
  br i1 %14, label %15, label %109

15:                                               ; preds = %2
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 1
  %18 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %19 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %18, i32 0, i32 1
  %20 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %21 = icmp ne %struct.commit_list* %20, null
  br i1 %21, label %22, label %109

22:                                               ; preds = %15
  %23 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 0
  %25 = load %struct.commit*, %struct.commit** %4, align 8
  %26 = getelementptr inbounds %struct.commit, %struct.commit* %25, i32 0, i32 0
  %27 = call %struct.treesame_state* @lookup_decoration(i32* %24, %struct.TYPE_2__* %26)
  store %struct.treesame_state* %27, %struct.treesame_state** %6, align 8
  %28 = load %struct.treesame_state*, %struct.treesame_state** %6, align 8
  %29 = icmp ne %struct.treesame_state* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load %struct.commit*, %struct.commit** %4, align 8
  %32 = getelementptr inbounds %struct.commit, %struct.commit* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @oid_to_hex(i32* %33)
  %35 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %22
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %37 = load %struct.commit*, %struct.commit** %4, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 1
  %39 = load %struct.commit_list*, %struct.commit_list** %38, align 8
  store %struct.commit_list* %39, %struct.commit_list** %7, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %78, %36
  %41 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %42 = icmp ne %struct.commit_list* %41, null
  br i1 %42, label %43, label %84

43:                                               ; preds = %40
  %44 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %45 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @relevant_commit(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.treesame_state*, %struct.treesame_state** %6, align 8
  %51 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %77

64:                                               ; preds = %43
  %65 = load %struct.treesame_state*, %struct.treesame_state** %6, align 8
  %66 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %64, %49
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %82 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %81, i32 0, i32 1
  %83 = load %struct.commit_list*, %struct.commit_list** %82, align 8
  store %struct.commit_list* %83, %struct.commit_list** %7, align 8
  br label %40

84:                                               ; preds = %40
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %101

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @TREESAME, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.commit*, %struct.commit** %4, align 8
  %97 = getelementptr inbounds %struct.commit, %struct.commit* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %95
  store i32 %100, i32* %98, align 8
  br label %108

101:                                              ; preds = %90, %87
  %102 = load i32, i32* @TREESAME, align 4
  %103 = load %struct.commit*, %struct.commit** %4, align 8
  %104 = getelementptr inbounds %struct.commit, %struct.commit* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %101, %93
  br label %109

109:                                              ; preds = %108, %15, %2
  %110 = load %struct.commit*, %struct.commit** %4, align 8
  %111 = getelementptr inbounds %struct.commit, %struct.commit* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TREESAME, align 4
  %115 = and i32 %113, %114
  ret i32 %115
}

declare dso_local %struct.treesame_state* @lookup_decoration(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @relevant_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
