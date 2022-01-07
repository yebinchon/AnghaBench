; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_send_unshallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_send_unshallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.object* }
%struct.object = type { i32, i32, i64 }
%struct.packet_writer = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.object }
%struct.commit = type { %struct.commit_list* }

@NOT_SHALLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unshallow %s\00", align 1
@CLIENT_SHALLOW = common dso_local global i32 0, align 4
@extra_edge_obj = common dso_local global %struct.object_array zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_writer*, %struct.object_array*, %struct.object_array*)* @send_unshallow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_unshallow(%struct.packet_writer* %0, %struct.object_array* %1, %struct.object_array* %2) #0 {
  %4 = alloca %struct.packet_writer*, align 8
  %5 = alloca %struct.object_array*, align 8
  %6 = alloca %struct.object_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object*, align 8
  %9 = alloca %struct.commit_list*, align 8
  store %struct.packet_writer* %0, %struct.packet_writer** %4, align 8
  store %struct.object_array* %1, %struct.object_array** %5, align 8
  store %struct.object_array* %2, %struct.object_array** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %76, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.object_array*, %struct.object_array** %5, align 8
  %13 = getelementptr inbounds %struct.object_array, %struct.object_array* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %10
  %17 = load %struct.object_array*, %struct.object_array** %5, align 8
  %18 = getelementptr inbounds %struct.object_array, %struct.object_array* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.object*, %struct.object** %23, align 8
  store %struct.object* %24, %struct.object** %8, align 8
  %25 = load %struct.object*, %struct.object** %8, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NOT_SHALLOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %16
  %32 = load %struct.packet_writer*, %struct.packet_writer** %4, align 8
  %33 = load %struct.object*, %struct.object** %8, align 8
  %34 = getelementptr inbounds %struct.object, %struct.object* %33, i32 0, i32 1
  %35 = call i32 @oid_to_hex(i32* %34)
  %36 = call i32 @packet_writer_write(%struct.packet_writer* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @CLIENT_SHALLOW, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.object*, %struct.object** %8, align 8
  %40 = getelementptr inbounds %struct.object, %struct.object* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.object*, %struct.object** %8, align 8
  %44 = getelementptr inbounds %struct.object, %struct.object* %43, i32 0, i32 1
  %45 = call i32 @unregister_shallow(i32* %44)
  %46 = load %struct.object*, %struct.object** %8, align 8
  %47 = getelementptr inbounds %struct.object, %struct.object* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.object*, %struct.object** %8, align 8
  %49 = bitcast %struct.object* %48 to %struct.commit*
  %50 = call i32 @parse_commit_or_die(%struct.commit* %49)
  %51 = load %struct.object*, %struct.object** %8, align 8
  %52 = bitcast %struct.object* %51 to %struct.commit*
  %53 = getelementptr inbounds %struct.commit, %struct.commit* %52, i32 0, i32 0
  %54 = load %struct.commit_list*, %struct.commit_list** %53, align 8
  store %struct.commit_list* %54, %struct.commit_list** %9, align 8
  br label %55

55:                                               ; preds = %58, %31
  %56 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %57 = icmp ne %struct.commit_list* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %60 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.object_array*, %struct.object_array** %6, align 8
  %64 = call i32 @add_object_array(%struct.object* %62, i32* null, %struct.object_array* %63)
  %65 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %66 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %65, i32 0, i32 0
  %67 = load %struct.commit_list*, %struct.commit_list** %66, align 8
  store %struct.commit_list* %67, %struct.commit_list** %9, align 8
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.object*, %struct.object** %8, align 8
  %70 = call i32 @add_object_array(%struct.object* %69, i32* null, %struct.object_array* @extra_edge_obj)
  br label %71

71:                                               ; preds = %68, %16
  %72 = load i32, i32* @the_repository, align 4
  %73 = load %struct.object*, %struct.object** %8, align 8
  %74 = getelementptr inbounds %struct.object, %struct.object* %73, i32 0, i32 1
  %75 = call i32 @register_shallow(i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %10

79:                                               ; preds = %10
  ret void
}

declare dso_local i32 @packet_writer_write(%struct.packet_writer*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @unregister_shallow(i32*) #1

declare dso_local i32 @parse_commit_or_die(%struct.commit*) #1

declare dso_local i32 @add_object_array(%struct.object*, i32*, %struct.object_array*) #1

declare dso_local i32 @register_shallow(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
