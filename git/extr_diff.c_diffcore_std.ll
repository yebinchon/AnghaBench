; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diffcore_std.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diffcore_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32, i32 }
%struct.oid_array = type { i64, i32 }
%struct.diff_options = type { i64, i32, i32, i64, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@the_repository = common dso_local global i64 0, align 8
@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 8
@DIFF_PICKAXE_KINDS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diffcore_std(%struct.diff_options* %0) #0 {
  %2 = alloca %struct.diff_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.oid_array, align 8
  %6 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %2, align 8
  %7 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %8 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @the_repository, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %63

12:                                               ; preds = %1
  %13 = call i64 (...) @has_promisor_remote()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %12
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %4, align 8
  %16 = bitcast %struct.oid_array* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %45, %15
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %20 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %25 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %24, i32 0, i32 1
  %26 = load %struct.diff_filepair**, %struct.diff_filepair*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %26, i64 %28
  %30 = load %struct.diff_filepair*, %struct.diff_filepair** %29, align 8
  store %struct.diff_filepair* %30, %struct.diff_filepair** %6, align 8
  %31 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %32 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %35 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @add_if_missing(i64 %33, %struct.oid_array* %5, i32 %36)
  %38 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %42 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @add_if_missing(i64 %40, %struct.oid_array* %5, i32 %43)
  br label %45

45:                                               ; preds = %23
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %17

48:                                               ; preds = %17
  %49 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %5, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %54 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %5, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @promisor_remote_get_direct(i64 %55, i32 %57, i64 %59)
  br label %61

61:                                               ; preds = %52, %48
  %62 = call i32 @oid_array_clear(%struct.oid_array* %5)
  br label %63

63:                                               ; preds = %61, %12, %1
  %64 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %65 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %70 = call i32 @diffcore_skip_stat_unmatch(%struct.diff_options* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %73 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %71
  %77 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %78 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %83 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %86 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @diffcore_break(i64 %84, i32 %87)
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %91 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %96 = call i32 @diffcore_rename(%struct.diff_options* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %99 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (...) @diffcore_merge_broken()
  br label %104

104:                                              ; preds = %102, %97
  br label %105

105:                                              ; preds = %104, %71
  %106 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %107 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DIFF_PICKAXE_KINDS_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %114 = call i32 @diffcore_pickaxe(%struct.diff_options* %113)
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %117 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %122 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @diffcore_order(i64 %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %127 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = call i32 (...) @diff_resolve_rename_copy()
  br label %132

132:                                              ; preds = %130, %125
  %133 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %134 = call i32 @diffcore_apply_filter(%struct.diff_options* %133)
  %135 = load i32, i32* getelementptr inbounds (%struct.diff_queue_struct, %struct.diff_queue_struct* @diff_queued_diff, i32 0, i32 0), align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %139 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %137
  %144 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %145 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %151

147:                                              ; preds = %137, %132
  %148 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %149 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %153 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  ret void
}

declare dso_local i64 @has_promisor_remote(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_if_missing(i64, %struct.oid_array*, i32) #1

declare dso_local i32 @promisor_remote_get_direct(i64, i32, i64) #1

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #1

declare dso_local i32 @diffcore_skip_stat_unmatch(%struct.diff_options*) #1

declare dso_local i32 @diffcore_break(i64, i32) #1

declare dso_local i32 @diffcore_rename(%struct.diff_options*) #1

declare dso_local i32 @diffcore_merge_broken(...) #1

declare dso_local i32 @diffcore_pickaxe(%struct.diff_options*) #1

declare dso_local i32 @diffcore_order(i64) #1

declare dso_local i32 @diff_resolve_rename_copy(...) #1

declare dso_local i32 @diffcore_apply_filter(%struct.diff_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
