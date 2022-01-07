; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_get_stale_heads.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_get_stale_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.refspec = type { i32 }
%struct.ref = type { i32, %struct.ref* }
%struct.stale_heads_info = type { %struct.refspec*, %struct.ref**, %struct.string_list* }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@get_stale_heads_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @get_stale_heads(%struct.refspec* %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.refspec*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.string_list, align 4
  %8 = alloca %struct.stale_heads_info, align 8
  store %struct.refspec* %0, %struct.refspec** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  store %struct.ref* null, %struct.ref** %6, align 8
  %9 = bitcast %struct.string_list* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %10 = getelementptr inbounds %struct.stale_heads_info, %struct.stale_heads_info* %8, i32 0, i32 2
  store %struct.string_list* %7, %struct.string_list** %10, align 8
  %11 = getelementptr inbounds %struct.stale_heads_info, %struct.stale_heads_info* %8, i32 0, i32 1
  store %struct.ref** %6, %struct.ref*** %11, align 8
  %12 = load %struct.refspec*, %struct.refspec** %3, align 8
  %13 = getelementptr inbounds %struct.stale_heads_info, %struct.stale_heads_info* %8, i32 0, i32 0
  store %struct.refspec* %12, %struct.refspec** %13, align 8
  %14 = load %struct.ref*, %struct.ref** %4, align 8
  store %struct.ref* %14, %struct.ref** %5, align 8
  br label %15

15:                                               ; preds = %23, %2
  %16 = load %struct.ref*, %struct.ref** %5, align 8
  %17 = icmp ne %struct.ref* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.ref*, %struct.ref** %5, align 8
  %20 = getelementptr inbounds %struct.ref, %struct.ref* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @string_list_append(%struct.string_list* %7, i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load %struct.ref*, %struct.ref** %5, align 8
  %25 = getelementptr inbounds %struct.ref, %struct.ref* %24, i32 0, i32 1
  %26 = load %struct.ref*, %struct.ref** %25, align 8
  store %struct.ref* %26, %struct.ref** %5, align 8
  br label %15

27:                                               ; preds = %15
  %28 = call i32 @string_list_sort(%struct.string_list* %7)
  %29 = load i32, i32* @get_stale_heads_cb, align 4
  %30 = call i32 @for_each_ref(i32 %29, %struct.stale_heads_info* %8)
  %31 = call i32 @string_list_clear(%struct.string_list* %7, i32 0)
  %32 = load %struct.ref*, %struct.ref** %6, align 8
  ret %struct.ref* %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i32 @for_each_ref(i32, %struct.stale_heads_info*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
