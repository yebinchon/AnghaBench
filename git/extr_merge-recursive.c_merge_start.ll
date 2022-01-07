; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_start.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.merge_options = type { i32, i32, i64, i32, i64, i32, i64, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.tree = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DIFF_DETECT_COPY = common dso_local global i32 0, align 4
@MERGE_DIRECTORY_RENAMES_NONE = common dso_local global i64 0, align 8
@MERGE_DIRECTORY_RENAMES_TRUE = common dso_local global i64 0, align 8
@MAX_SCORE = common dso_local global i64 0, align 8
@MERGE_VARIANT_NORMAL = common dso_local global i64 0, align 8
@MERGE_VARIANT_THEIRS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"Your local changes to the following files would be overwritten by merge:\0A  %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.tree*)* @merge_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_start(%struct.merge_options* %0, %struct.tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.strbuf, align 4
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.tree* %1, %struct.tree** %5, align 8
  %7 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %9 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %13 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %12, i32 0, i32 13
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %18 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ false, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %26 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %31 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DIFF_DETECT_COPY, align 4
  %34 = icmp sle i32 %32, %33
  br label %35

35:                                               ; preds = %29, %21
  %36 = phi i1 [ false, %21 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %40 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MERGE_DIRECTORY_RENAMES_NONE, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %46 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MERGE_DIRECTORY_RENAMES_TRUE, align 8
  %49 = icmp sle i64 %47, %48
  br label %50

50:                                               ; preds = %44, %35
  %51 = phi i1 [ false, %35 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %55 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, -1
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %61 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %50
  %65 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %66 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MAX_SCORE, align 8
  %69 = icmp sle i64 %67, %68
  br label %70

70:                                               ; preds = %64, %50
  %71 = phi i1 [ false, %50 ], [ %69, %64 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %75 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %80 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp sle i32 %81, 1
  br label %83

83:                                               ; preds = %78, %70
  %84 = phi i1 [ false, %70 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %88 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %94 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MERGE_VARIANT_NORMAL, align 8
  %97 = icmp sge i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %83
  %99 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %100 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MERGE_VARIANT_THEIRS, align 8
  %103 = icmp sle i64 %101, %102
  br label %104

104:                                              ; preds = %98, %83
  %105 = phi i1 [ false, %83 ], [ %103, %98 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %109 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %114 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = icmp sle i32 %115, 5
  br label %117

117:                                              ; preds = %112, %104
  %118 = phi i1 [ false, %104 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %122 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %123, 2
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %128 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %127, i32 0, i32 11
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %135 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %134, i32 0, i32 10
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = icmp eq %struct.TYPE_4__* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %141 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.tree*, %struct.tree** %5, align 8
  %144 = call i64 @repo_index_has_changes(i32 %142, %struct.tree* %143, %struct.strbuf* %6)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %117
  %147 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %148 = call i32 @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %149 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @err(%struct.merge_options* %147, i32 %148, i32 %150)
  %152 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 -1, i32* %3, align 4
  br label %162

153:                                              ; preds = %117
  %154 = call %struct.TYPE_4__* @xcalloc(i32 1, i32 4)
  %155 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %156 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %155, i32 0, i32 10
  store %struct.TYPE_4__* %154, %struct.TYPE_4__** %156, align 8
  %157 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %158 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %157, i32 0, i32 10
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i32 @string_list_init(i32* %160, i32 1)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %153, %146
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @repo_index_has_changes(i32, %struct.tree*, %struct.strbuf*) #2

declare dso_local i32 @err(%struct.merge_options*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local %struct.TYPE_4__* @xcalloc(i32, i32) #2

declare dso_local i32 @string_list_init(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
