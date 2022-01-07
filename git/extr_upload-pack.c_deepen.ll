; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_deepen.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_deepen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object* }
%struct.object = type { i32 }
%struct.packet_writer = type { i32 }
%struct.commit_list = type { i32 }

@INFINITE_DEPTH = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@NOT_SHALLOW = common dso_local global i32 0, align 4
@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 8
@check_ref = common dso_local global i32 0, align 4
@SHALLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_writer*, i32, i32, %struct.object_array*, %struct.object_array*)* @deepen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deepen(%struct.packet_writer* %0, i32 %1, i32 %2, %struct.object_array* %3, %struct.object_array* %4) #0 {
  %6 = alloca %struct.packet_writer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_array*, align 8
  %10 = alloca %struct.object_array*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object*, align 8
  %13 = alloca %struct.object_array, align 8
  %14 = alloca %struct.commit_list*, align 8
  %15 = alloca %struct.commit_list*, align 8
  store %struct.packet_writer* %0, %struct.packet_writer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.object_array* %3, %struct.object_array** %9, align 8
  store %struct.object_array* %4, %struct.object_array** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @INFINITE_DEPTH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %5
  %20 = load i32, i32* @the_repository, align 4
  %21 = call i32 @is_repository_shallow(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.object_array*, %struct.object_array** %9, align 8
  %27 = getelementptr inbounds %struct.object_array, %struct.object_array* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.object_array*, %struct.object_array** %9, align 8
  %32 = getelementptr inbounds %struct.object_array, %struct.object_array* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.object*, %struct.object** %37, align 8
  store %struct.object* %38, %struct.object** %12, align 8
  %39 = load i32, i32* @NOT_SHALLOW, align 4
  %40 = load %struct.object*, %struct.object** %12, align 8
  %41 = getelementptr inbounds %struct.object, %struct.object* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %24

47:                                               ; preds = %24
  br label %82

48:                                               ; preds = %19, %5
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = bitcast %struct.object_array* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 16, i1 false)
  %53 = load i32, i32* @check_ref, align 4
  %54 = call i32 @head_ref_namespaced(i32 %53, i32* null)
  %55 = load i32, i32* @check_ref, align 4
  %56 = call i32 @for_each_namespaced_ref(i32 %55, i32* null)
  %57 = load %struct.object_array*, %struct.object_array** %9, align 8
  %58 = call i32 @get_reachable_list(%struct.object_array* %57, %struct.object_array* %13)
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @SHALLOW, align 4
  %62 = load i32, i32* @NOT_SHALLOW, align 4
  %63 = call %struct.commit_list* @get_shallow_commits(%struct.object_array* %13, i32 %60, i32 %61, i32 %62)
  store %struct.commit_list* %63, %struct.commit_list** %14, align 8
  %64 = load %struct.packet_writer*, %struct.packet_writer** %6, align 8
  %65 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %66 = call i32 @send_shallow(%struct.packet_writer* %64, %struct.commit_list* %65)
  %67 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %68 = call i32 @free_commit_list(%struct.commit_list* %67)
  %69 = call i32 @object_array_clear(%struct.object_array* %13)
  br label %81

70:                                               ; preds = %48
  %71 = load %struct.object_array*, %struct.object_array** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @SHALLOW, align 4
  %74 = load i32, i32* @NOT_SHALLOW, align 4
  %75 = call %struct.commit_list* @get_shallow_commits(%struct.object_array* %71, i32 %72, i32 %73, i32 %74)
  store %struct.commit_list* %75, %struct.commit_list** %15, align 8
  %76 = load %struct.packet_writer*, %struct.packet_writer** %6, align 8
  %77 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %78 = call i32 @send_shallow(%struct.packet_writer* %76, %struct.commit_list* %77)
  %79 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %80 = call i32 @free_commit_list(%struct.commit_list* %79)
  br label %81

81:                                               ; preds = %70, %51
  br label %82

82:                                               ; preds = %81, %47
  %83 = load %struct.packet_writer*, %struct.packet_writer** %6, align 8
  %84 = load %struct.object_array*, %struct.object_array** %9, align 8
  %85 = load %struct.object_array*, %struct.object_array** %10, align 8
  %86 = call i32 @send_unshallow(%struct.packet_writer* %83, %struct.object_array* %84, %struct.object_array* %85)
  ret void
}

declare dso_local i32 @is_repository_shallow(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @head_ref_namespaced(i32, i32*) #1

declare dso_local i32 @for_each_namespaced_ref(i32, i32*) #1

declare dso_local i32 @get_reachable_list(%struct.object_array*, %struct.object_array*) #1

declare dso_local %struct.commit_list* @get_shallow_commits(%struct.object_array*, i32, i32, i32) #1

declare dso_local i32 @send_shallow(%struct.packet_writer*, %struct.commit_list*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @object_array_clear(%struct.object_array*) #1

declare dso_local i32 @send_unshallow(%struct.packet_writer*, %struct.object_array*, %struct.object_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
