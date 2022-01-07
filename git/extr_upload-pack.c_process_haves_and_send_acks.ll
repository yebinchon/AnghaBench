; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_process_haves_and_send_acks.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_process_haves_and_send_acks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.upload_pack_data = type { %struct.oid_array, i32, i64 }
%struct.object_array = type { i32 }

@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.upload_pack_data*, %struct.object_array*, %struct.object_array*)* @process_haves_and_send_acks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_haves_and_send_acks(%struct.upload_pack_data* %0, %struct.object_array* %1, %struct.object_array* %2) #0 {
  %4 = alloca %struct.upload_pack_data*, align 8
  %5 = alloca %struct.object_array*, align 8
  %6 = alloca %struct.object_array*, align 8
  %7 = alloca %struct.oid_array, align 4
  %8 = alloca i32, align 4
  store %struct.upload_pack_data* %0, %struct.upload_pack_data** %4, align 8
  store %struct.object_array* %1, %struct.object_array** %5, align 8
  store %struct.object_array* %2, %struct.object_array** %6, align 8
  %9 = bitcast %struct.oid_array* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load %struct.upload_pack_data*, %struct.upload_pack_data** %4, align 8
  %11 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %10, i32 0, i32 0
  %12 = load %struct.object_array*, %struct.object_array** %5, align 8
  %13 = call i32 @process_haves(%struct.oid_array* %11, %struct.oid_array* %7, %struct.object_array* %12)
  %14 = load %struct.upload_pack_data*, %struct.upload_pack_data** %4, align 8
  %15 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.upload_pack_data*, %struct.upload_pack_data** %4, align 8
  %21 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %20, i32 0, i32 1
  %22 = load %struct.object_array*, %struct.object_array** %5, align 8
  %23 = load %struct.object_array*, %struct.object_array** %6, align 8
  %24 = call i64 @send_acks(i32* %21, %struct.oid_array* %7, %struct.object_array* %22, %struct.object_array* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.upload_pack_data*, %struct.upload_pack_data** %4, align 8
  %28 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %27, i32 0, i32 1
  %29 = call i32 @packet_writer_delim(i32* %28)
  store i32 1, i32* %8, align 4
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.upload_pack_data*, %struct.upload_pack_data** %4, align 8
  %32 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %31, i32 0, i32 1
  %33 = call i32 @packet_writer_flush(i32* %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.upload_pack_data*, %struct.upload_pack_data** %4, align 8
  %37 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %36, i32 0, i32 0
  %38 = call i32 @oid_array_clear(%struct.oid_array* %37)
  %39 = call i32 @oid_array_clear(%struct.oid_array* %7)
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @process_haves(%struct.oid_array*, %struct.oid_array*, %struct.object_array*) #2

declare dso_local i64 @send_acks(i32*, %struct.oid_array*, %struct.object_array*, %struct.object_array*) #2

declare dso_local i32 @packet_writer_delim(i32*) #2

declare dso_local i32 @packet_writer_flush(i32*) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
