; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_midx_repack.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_midx_repack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32 }
%struct.strbuf = type { i8* }
%struct.TYPE_2__ = type { i32 }
%struct.repository = type { i32 }
%struct.multi_pack_index = type { i64, i32 }
%struct.object_id = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"pack-objects\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/pack/pack\00", align 1
@MIDX_PROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"--progress\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not start pack-objects\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not finish pack-objects\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midx_repack(%struct.repository* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.child_process, align 4
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca %struct.multi_pack_index*, align 8
  %16 = alloca %struct.object_id, align 4
  %17 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = bitcast %struct.child_process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %19 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.multi_pack_index* @load_multi_pack_index(i8* %20, i32 1)
  store %struct.multi_pack_index* %21, %struct.multi_pack_index** %15, align 8
  %22 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %23 = icmp ne %struct.multi_pack_index* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %136

25:                                               ; preds = %4
  %26 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %27 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @xcalloc(i32 %28, i32 1)
  store i8* %29, i8** %12, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.repository*, %struct.repository** %6, align 8
  %34 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @fill_included_packs_batch(%struct.repository* %33, %struct.multi_pack_index* %34, i8* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %126

40:                                               ; preds = %32
  br label %48

41:                                               ; preds = %25
  %42 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i64 @fill_included_packs_all(%struct.multi_pack_index* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %126

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %40
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %50 = call i32 @argv_array_push(i32* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %51)
  %53 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @argv_array_push(i32* %54, i8* %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MIDX_PROGRESS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %64 = call i32 @argv_array_push(i32* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %68

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %67 = call i32 @argv_array_push(i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  %69 = call i32 @strbuf_release(%struct.strbuf* %14)
  %70 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  store i32 -1, i32* %71, align 4
  %72 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i32 -1, i32* %72, align 4
  %73 = call i64 @start_command(%struct.child_process* %13)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %77 = call i32 @error(i32 %76)
  store i32 1, i32* %10, align 4
  br label %126

78:                                               ; preds = %68
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %109, %78
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %82 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %79
  %86 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @nth_midxed_pack_int_id(%struct.multi_pack_index* %86, i64 %87)
  store i64 %88, i64* %17, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i64, i64* %17, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  br label %109

95:                                               ; preds = %85
  %96 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @nth_midxed_object_oid(%struct.object_id* %16, %struct.multi_pack_index* %96, i64 %97)
  %99 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @oid_to_hex(%struct.object_id* %16)
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @xwrite(i32 %100, i8* %101, i32 %104)
  %106 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @xwrite(i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %109

109:                                              ; preds = %95, %94
  %110 = load i64, i64* %11, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %79

112:                                              ; preds = %79
  %113 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @close(i32 %114)
  %116 = call i64 @finish_command(%struct.child_process* %13)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %120 = call i32 @error(i32 %119)
  store i32 1, i32* %10, align 4
  br label %126

121:                                              ; preds = %112
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @write_midx_internal(i8* %122, %struct.multi_pack_index* %123, i32* null, i32 %124)
  store i32 %125, i32* %10, align 4
  store %struct.multi_pack_index* null, %struct.multi_pack_index** %15, align 8
  br label %126

126:                                              ; preds = %121, %118, %75, %46, %39
  %127 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %128 = icmp ne %struct.multi_pack_index* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.multi_pack_index*, %struct.multi_pack_index** %15, align 8
  %131 = call i32 @close_midx(%struct.multi_pack_index* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %132, %24
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.multi_pack_index* @load_multi_pack_index(i8*, i32) #2

declare dso_local i8* @xcalloc(i32, i32) #2

declare dso_local i64 @fill_included_packs_batch(%struct.repository*, %struct.multi_pack_index*, i8*, i64) #2

declare dso_local i64 @fill_included_packs_all(%struct.multi_pack_index*, i8*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @nth_midxed_pack_int_id(%struct.multi_pack_index*, i64) #2

declare dso_local i32 @nth_midxed_object_oid(%struct.object_id*, %struct.multi_pack_index*, i64) #2

declare dso_local i32 @xwrite(i32, i8*, i32) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @write_midx_internal(i8*, %struct.multi_pack_index*, i32*, i32) #2

declare dso_local i32 @close_midx(%struct.multi_pack_index*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
