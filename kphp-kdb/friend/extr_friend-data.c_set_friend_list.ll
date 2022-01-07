; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_set_friend_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_set_friend_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"set_friend_list. user_id = %d\0A\00", align 1
@reverse_friends_mode = common dso_local global i64 0, align 8
@rev_friends = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_friend_list(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %11, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %154

20:                                               ; preds = %4
  %21 = load i32, i32* @verbosity, align 4
  %22 = icmp sge i32 %21, 4
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = call i32 @free_friend_list(%struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %95

34:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %35

35:                                               ; preds = %91, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %35
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call %struct.TYPE_12__* @tree_lookup(%struct.TYPE_12__* %43, i32 %44)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %14, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %39
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %88

63:                                               ; preds = %39
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 (...) @lrand48()
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 1
  %71 = load i32, i32* %10, align 4
  %72 = call %struct.TYPE_12__* @tree_insert(%struct.TYPE_12__* %64, i32 %65, i32 %66, i32 %70, i32 %71)
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %12, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i64, i64* @reverse_friends_mode, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %63
  %80 = load i32, i32* @rev_friends, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (...) @lrand48()
  %86 = call i32 @rev_friends_insert(i32 %80, i32 %81, i32 %84, i32 %85, i32 0)
  store i32 %86, i32* @rev_friends, align 4
  br label %87

87:                                               ; preds = %79, %63
  br label %88

88:                                               ; preds = %87, %53
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 1
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %8, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %35

94:                                               ; preds = %35
  br label %141

95:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %137, %95
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %9, align 8
  %103 = load i32, i32* %101, align 4
  store i32 %103, i32* %15, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call %struct.TYPE_12__* @tree_lookup(%struct.TYPE_12__* %104, i32 %105)
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %16, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %108 = icmp ne %struct.TYPE_12__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  br label %136

115:                                              ; preds = %100
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 (...) @lrand48()
  %119 = load i32, i32* %10, align 4
  %120 = call %struct.TYPE_12__* @tree_insert(%struct.TYPE_12__* %116, i32 %117, i32 %118, i32 1, i32 %119)
  store %struct.TYPE_12__* %120, %struct.TYPE_12__** %12, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i64, i64* @reverse_friends_mode, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %115
  %128 = load i32, i32* @rev_friends, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (...) @lrand48()
  %134 = call i32 @rev_friends_insert(i32 %128, i32 %129, i32 %132, i32 %133, i32 0)
  store i32 %134, i32* @rev_friends, align 4
  br label %135

135:                                              ; preds = %127, %115
  br label %136

136:                                              ; preds = %135, %109
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %96

140:                                              ; preds = %96
  br label %141

141:                                              ; preds = %140, %94
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 4
  store %struct.TYPE_12__* %142, %struct.TYPE_12__** %144, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %141, %19
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @free_friend_list(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @tree_lookup(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @tree_insert(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @rev_friends_insert(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
