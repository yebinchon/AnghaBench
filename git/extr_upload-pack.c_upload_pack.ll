; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_upload_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_upload_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.object_array = type { i64 }
%struct.upload_pack_options = type { i64, i32, i32, i32 }
%struct.packet_reader = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 8
@stateless_rpc = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@daemon_mode = common dso_local global i32 0, align 4
@upload_pack_config = common dso_local global i32 0, align 4
@find_symref = common dso_local global i32 0, align 4
@send_ref = common dso_local global i32 0, align 4
@check_ref = common dso_local global i32 0, align 4
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upload_pack(%struct.upload_pack_options* %0) #0 {
  %2 = alloca %struct.upload_pack_options*, align 8
  %3 = alloca %struct.string_list, align 4
  %4 = alloca %struct.object_array, align 8
  %5 = alloca %struct.packet_reader, align 4
  %6 = alloca %struct.object_array, align 8
  store %struct.upload_pack_options* %0, %struct.upload_pack_options** %2, align 8
  %7 = bitcast %struct.string_list* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %8 = bitcast %struct.object_array* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 8, i1 false)
  %9 = load %struct.upload_pack_options*, %struct.upload_pack_options** %2, align 8
  %10 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* @stateless_rpc, align 4
  %12 = load %struct.upload_pack_options*, %struct.upload_pack_options** %2, align 8
  %13 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @timeout, align 4
  %15 = load %struct.upload_pack_options*, %struct.upload_pack_options** %2, align 8
  %16 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* @daemon_mode, align 4
  %18 = load i32, i32* @upload_pack_config, align 4
  %19 = call i32 @git_config(i32 %18, i32* null)
  %20 = load i32, i32* @find_symref, align 4
  %21 = call i32 @head_ref_namespaced(i32 %20, %struct.string_list* %3)
  %22 = load %struct.upload_pack_options*, %struct.upload_pack_options** %2, align 8
  %23 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @stateless_rpc, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26, %1
  %30 = call i32 (...) @reset_timeout()
  %31 = load i32, i32* @send_ref, align 4
  %32 = call i32 @head_ref_namespaced(i32 %31, %struct.string_list* %3)
  %33 = load i32, i32* @send_ref, align 4
  %34 = call i32 @for_each_namespaced_ref(i32 %33, %struct.string_list* %3)
  %35 = call i32 @advertise_shallow_grafts(i32 1)
  %36 = call i32 @packet_flush(i32 1)
  br label %42

37:                                               ; preds = %26
  %38 = load i32, i32* @check_ref, align 4
  %39 = call i32 @head_ref_namespaced(i32 %38, %struct.string_list* null)
  %40 = load i32, i32* @check_ref, align 4
  %41 = call i32 @for_each_namespaced_ref(i32 %40, %struct.string_list* null)
  br label %42

42:                                               ; preds = %37, %29
  %43 = call i32 @string_list_clear(%struct.string_list* %3, i32 1)
  %44 = load %struct.upload_pack_options*, %struct.upload_pack_options** %2, align 8
  %45 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %62

49:                                               ; preds = %42
  %50 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %51 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @packet_reader_init(%struct.packet_reader* %5, i32 0, i32* null, i32 0, i32 %52)
  %54 = call i32 @receive_needs(%struct.packet_reader* %5, %struct.object_array* %4)
  %55 = getelementptr inbounds %struct.object_array, %struct.object_array* %4, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = bitcast %struct.object_array* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 8, i1 false)
  %60 = call i32 @get_common_commits(%struct.packet_reader* %5, %struct.object_array* %6, %struct.object_array* %4)
  %61 = call i32 @create_pack_file(%struct.object_array* %6, %struct.object_array* %4)
  br label %62

62:                                               ; preds = %48, %58, %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @head_ref_namespaced(i32, %struct.string_list*) #2

declare dso_local i32 @reset_timeout(...) #2

declare dso_local i32 @for_each_namespaced_ref(i32, %struct.string_list*) #2

declare dso_local i32 @advertise_shallow_grafts(i32) #2

declare dso_local i32 @packet_flush(i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32*, i32, i32) #2

declare dso_local i32 @receive_needs(%struct.packet_reader*, %struct.object_array*) #2

declare dso_local i32 @get_common_commits(%struct.packet_reader*, %struct.object_array*, %struct.object_array*) #2

declare dso_local i32 @create_pack_file(%struct.object_array*, %struct.object_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
