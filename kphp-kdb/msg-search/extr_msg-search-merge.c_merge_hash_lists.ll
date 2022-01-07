; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_merge_hash_lists.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_merge_hash_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@Dc = common dso_local global i32 0, align 4
@Dc0 = common dso_local global i32 0, align 4
@MAX_DATA = common dso_local global i32 0, align 4
@D = common dso_local global i32* null, align 8
@CurL = common dso_local global i32* null, align 8
@Qc = common dso_local global i64 0, align 8
@MAX_PAIRS = common dso_local global i64 0, align 8
@Q = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, i32)* @merge_hash_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_hash_lists(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 2147483647, i32* %7, align 4
  store i32 -2147483647, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  br label %28

27:                                               ; preds = %20
  br label %156

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* @Dc, align 4
  store i32 %30, i32* @Dc0, align 4
  %31 = load i32, i32* @Dc, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @MAX_DATA, align 4
  %35 = icmp sle i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %60, %29
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 1
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %7, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** @D, align 8
  %56 = load i32, i32* @Dc, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @Dc, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %110

66:                                               ; preds = %63
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  br label %87

80:                                               ; preds = %71
  %81 = load i32*, i32** @CurL, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  br label %87

87:                                               ; preds = %80, %77
  %88 = phi i32* [ %79, %77 ], [ %86, %80 ]
  store i32* %88, i32** %13, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @MAX_DATA, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @Dc, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @MAX_DATA, align 4
  %97 = icmp sle i32 %95, %96
  br label %98

98:                                               ; preds = %92, %87
  %99 = phi i1 [ false, %87 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32*, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @prune_list(i32* %102, i32* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %98, %66, %63
  %111 = load i32, i32* @Dc, align 4
  %112 = load i32, i32* @Dc0, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %110
  %115 = load i64, i64* @Qc, align 8
  %116 = load i64, i64* @MAX_PAIRS, align 8
  %117 = icmp ult i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Q, align 8
  %122 = load i64, i64* @Qc, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* @Dc, align 4
  %126 = load i32, i32* @Dc0, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Q, align 8
  %129 = load i64, i64* @Qc, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @Dc, align 4
  %133 = load i32, i32* @Dc0, align 4
  %134 = sub nsw i32 %132, %133
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %143

136:                                              ; preds = %114
  %137 = load i32, i32* @Dc0, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Q, align 8
  %139 = load i64, i64* @Qc, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* @Qc, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %139
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32 %137, i32* %142, align 4
  br label %155

143:                                              ; preds = %114
  %144 = load i32*, i32** @D, align 8
  %145 = load i32, i32* @Dc0, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Q, align 8
  %150 = load i64, i64* @Qc, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* @Qc, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %150
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  store i32 %148, i32* %153, align 4
  %154 = load i32, i32* @Dc0, align 4
  store i32 %154, i32* @Dc, align 4
  br label %155

155:                                              ; preds = %143, %136
  br label %156

156:                                              ; preds = %27, %155, %110
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prune_list(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
