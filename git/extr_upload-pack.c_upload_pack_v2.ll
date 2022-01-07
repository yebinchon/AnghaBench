; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_upload_pack_v2.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_upload_pack_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32 }
%struct.repository = type { i32 }
%struct.argv_array = type { i32 }
%struct.packet_reader = type { i32 }
%struct.upload_pack_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 4
@ALL_FLAGS = common dso_local global i32 0, align 4
@upload_pack_config = common dso_local global i32 0, align 4
@LARGE_PACKET_MAX = common dso_local global i32 0, align 4
@use_sideband = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"packfile\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @upload_pack_v2(%struct.repository* %0, %struct.argv_array* %1, %struct.packet_reader* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.argv_array*, align 8
  %6 = alloca %struct.packet_reader*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.upload_pack_data, align 4
  %9 = alloca %struct.object_array, align 4
  %10 = alloca %struct.object_array, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.argv_array* %1, %struct.argv_array** %5, align 8
  store %struct.packet_reader* %2, %struct.packet_reader** %6, align 8
  store i32 130, i32* %7, align 4
  %11 = bitcast %struct.object_array* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 4, i1 false)
  %12 = bitcast %struct.object_array* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 4, i1 false)
  %13 = load i32, i32* @ALL_FLAGS, align 4
  %14 = call i32 @clear_object_flags(i32 %13)
  %15 = load i32, i32* @upload_pack_config, align 4
  %16 = call i32 @git_config(i32 %15, i32* null)
  %17 = call i32 @upload_pack_data_init(%struct.upload_pack_data* %8)
  %18 = load i32, i32* @LARGE_PACKET_MAX, align 4
  store i32 %18, i32* @use_sideband, align 4
  br label %19

19:                                               ; preds = %53, %52, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 131
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %53 [
    i32 130, label %24
    i32 129, label %40
    i32 128, label %46
    i32 131, label %52
  ]

24:                                               ; preds = %22
  %25 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %26 = call i32 @process_args(%struct.packet_reader* %25, %struct.upload_pack_data* %8, %struct.object_array* %10)
  %27 = getelementptr inbounds %struct.object_array, %struct.object_array* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 131, i32* %7, align 4
  br label %39

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %8, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 129, i32* %7, align 4
  br label %38

37:                                               ; preds = %31
  store i32 128, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %30
  br label %53

40:                                               ; preds = %22
  %41 = call i32 @process_haves_and_send_acks(%struct.upload_pack_data* %8, %struct.object_array* %9, %struct.object_array* %10)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 128, i32* %7, align 4
  br label %45

44:                                               ; preds = %40
  store i32 131, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %53

46:                                               ; preds = %22
  %47 = call i32 @send_wanted_ref_info(%struct.upload_pack_data* %8)
  %48 = call i32 @send_shallow_info(%struct.upload_pack_data* %8, %struct.object_array* %10)
  %49 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %8, i32 0, i32 0
  %50 = call i32 @packet_writer_write(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @create_pack_file(%struct.object_array* %9, %struct.object_array* %10)
  store i32 131, i32* %7, align 4
  br label %53

52:                                               ; preds = %22
  br label %19

53:                                               ; preds = %22, %46, %45, %39
  br label %19

54:                                               ; preds = %19
  %55 = call i32 @upload_pack_data_clear(%struct.upload_pack_data* %8)
  %56 = call i32 @object_array_clear(%struct.object_array* %9)
  %57 = call i32 @object_array_clear(%struct.object_array* %10)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @clear_object_flags(i32) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @upload_pack_data_init(%struct.upload_pack_data*) #2

declare dso_local i32 @process_args(%struct.packet_reader*, %struct.upload_pack_data*, %struct.object_array*) #2

declare dso_local i32 @process_haves_and_send_acks(%struct.upload_pack_data*, %struct.object_array*, %struct.object_array*) #2

declare dso_local i32 @send_wanted_ref_info(%struct.upload_pack_data*) #2

declare dso_local i32 @send_shallow_info(%struct.upload_pack_data*, %struct.object_array*) #2

declare dso_local i32 @packet_writer_write(i32*, i8*) #2

declare dso_local i32 @create_pack_file(%struct.object_array*, %struct.object_array*) #2

declare dso_local i32 @upload_pack_data_clear(%struct.upload_pack_data*) #2

declare dso_local i32 @object_array_clear(%struct.object_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
