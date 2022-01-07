; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_read_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_read_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_info = type { i32*, i64*, i8** }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@OBJECT_INFO_INIT = common dso_local global %struct.object_info zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.repository*, %struct.object_id*, i32*, i64*)* @read_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_object(%struct.repository* %0, %struct.object_id* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.object_info, align 8
  %11 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = bitcast %struct.object_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.object_info* @OBJECT_INFO_INIT to i8*), i64 24, i1 false)
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 0
  store i32* %13, i32** %14, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 1
  store i64* %15, i64** %16, align 8
  %17 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 2
  store i8** %11, i8*** %17, align 8
  %18 = load %struct.repository*, %struct.repository** %6, align 8
  %19 = load %struct.object_id*, %struct.object_id** %7, align 8
  %20 = call i64 @oid_object_info_extended(%struct.repository* %18, %struct.object_id* %19, %struct.object_info* %10, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i8*, i8** %5, align 8
  ret i8* %26
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
