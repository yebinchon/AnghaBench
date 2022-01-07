; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_prepare_packed_git_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_prepare_packed_git_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.repository = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }
%struct.prepare_pack_data = type { i32, %struct.string_list*, %struct.repository*, %struct.TYPE_4__* }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@prepare_pack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i8*, i32)* @prepare_packed_git_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_packed_git_one(%struct.repository* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.prepare_pack_data, align 8
  %8 = alloca %struct.string_list, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %10 = load %struct.repository*, %struct.repository** %4, align 8
  %11 = getelementptr inbounds %struct.repository, %struct.repository* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 3
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %15, align 8
  br label %16

16:                                               ; preds = %30, %3
  %17 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %20, %16
  %29 = phi i1 [ false, %16 ], [ %27, %20 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 3
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %35, align 8
  br label %16

36:                                               ; preds = %28
  %37 = load %struct.repository*, %struct.repository** %4, align 8
  %38 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 2
  store %struct.repository* %37, %struct.repository** %38, align 8
  %39 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 1
  store %struct.string_list* %8, %struct.string_list** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @prepare_pack, align 4
  %44 = call i32 @for_each_file_in_pack_dir(i8* %42, i32 %43, %struct.prepare_pack_data* %7)
  %45 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 1
  %46 = load %struct.string_list*, %struct.string_list** %45, align 8
  %47 = call i32 @report_pack_garbage(%struct.string_list* %46)
  %48 = getelementptr inbounds %struct.prepare_pack_data, %struct.prepare_pack_data* %7, i32 0, i32 1
  %49 = load %struct.string_list*, %struct.string_list** %48, align 8
  %50 = call i32 @string_list_clear(%struct.string_list* %49, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @for_each_file_in_pack_dir(i8*, i32, %struct.prepare_pack_data*) #2

declare dso_local i32 @report_pack_garbage(%struct.string_list*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
