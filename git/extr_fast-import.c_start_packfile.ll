; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_start_packfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_start_packfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.packed_git = type { i32, i32, i32 }
%struct.pack_header = type { i64, i8*, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"pack/tmp_pack_XXXXXX\00", align 1
@pack_name = common dso_local global i32 0, align 4
@pack_file = common dso_local global i32 0, align 4
@PACK_SIGNATURE = common dso_local global i32 0, align 4
@pack_data = common dso_local global %struct.packed_git* null, align 8
@pack_size = common dso_local global i32 0, align 4
@object_count = common dso_local global i64 0, align 8
@all_packs = common dso_local global %struct.packed_git** null, align 8
@pack_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_packfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_packfile() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = alloca %struct.packed_git*, align 8
  %3 = alloca %struct.pack_header, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = call i32 @odb_mkstemp(%struct.strbuf* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %8 = load i32, i32* @pack_name, align 4
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @FLEX_ALLOC_STR(%struct.packed_git* %7, i32 %8, i32 %10)
  %12 = call i32 @strbuf_release(%struct.strbuf* %1)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %15 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %17 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %20 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hashfd(i32 %18, i32 %21)
  store i32 %22, i32* @pack_file, align 4
  %23 = load i32, i32* @PACK_SIGNATURE, align 4
  %24 = call i8* @htonl(i32 %23)
  %25 = getelementptr inbounds %struct.pack_header, %struct.pack_header* %3, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = call i8* @htonl(i32 2)
  %27 = getelementptr inbounds %struct.pack_header, %struct.pack_header* %3, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.pack_header, %struct.pack_header* %3, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @pack_file, align 4
  %30 = call i32 @hashwrite(i32 %29, %struct.pack_header* %3, i32 24)
  %31 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  store %struct.packed_git* %31, %struct.packed_git** @pack_data, align 8
  store i32 24, i32* @pack_size, align 4
  store i64 0, i64* @object_count, align 8
  %32 = load %struct.packed_git**, %struct.packed_git*** @all_packs, align 8
  %33 = load i32, i32* @pack_id, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @REALLOC_ARRAY(%struct.packed_git** %32, i32 %34)
  %36 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %37 = load %struct.packed_git**, %struct.packed_git*** @all_packs, align 8
  %38 = load i32, i32* @pack_id, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %37, i64 %39
  store %struct.packed_git* %36, %struct.packed_git** %40, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @odb_mkstemp(%struct.strbuf*, i8*) #2

declare dso_local i32 @FLEX_ALLOC_STR(%struct.packed_git*, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @hashfd(i32, i32) #2

declare dso_local i8* @htonl(i32) #2

declare dso_local i32 @hashwrite(i32, %struct.pack_header*, i32) #2

declare dso_local i32 @REALLOC_ARRAY(%struct.packed_git**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
