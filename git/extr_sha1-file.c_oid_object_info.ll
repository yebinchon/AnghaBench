; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_oid_object_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_oid_object_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_info = type { i32*, i64* }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@OBJECT_INFO_INIT = common dso_local global %struct.object_info zeroinitializer, align 8
@OBJECT_INFO_LOOKUP_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_object_info(%struct.repository* %0, %struct.object_id* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_info, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = bitcast %struct.object_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.object_info* @OBJECT_INFO_INIT to i8*), i64 16, i1 false)
  %11 = getelementptr inbounds %struct.object_info, %struct.object_info* %9, i32 0, i32 0
  store i32* %8, i32** %11, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = getelementptr inbounds %struct.object_info, %struct.object_info* %9, i32 0, i32 1
  store i64* %12, i64** %13, align 8
  %14 = load %struct.repository*, %struct.repository** %5, align 8
  %15 = load %struct.object_id*, %struct.object_id** %6, align 8
  %16 = load i32, i32* @OBJECT_INFO_LOOKUP_REPLACE, align 4
  %17 = call i64 @oid_object_info_extended(%struct.repository* %14, %struct.object_id* %15, %struct.object_info* %9, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @oid_object_info_extended(%struct.repository*, %struct.object_id*, %struct.object_info*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
