; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__read_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__read_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_entry = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i8*, i32* }
%struct.pack_backend = type { i32 }

@GIT_OID_MINPREFIXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"prefix length too short\00", align 1
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*, i32*, i32*, i32*, i64)* @pack_backend__read_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_backend__read_prefix(i32* %0, i8** %1, i64* %2, i32* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.git_pack_entry, align 4
  %17 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @GIT_OID_MINPREFIXLEN, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = call i32 @git_odb__error_ambiguous(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %15, align 4
  br label %70

23:                                               ; preds = %7
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i8**, i8*** %9, align 8
  %29 = load i64*, i64** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @pack_backend__read(i8** %28, i64* %29, i32* %30, i32* %31, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @git_oid_cpy(i32* %37, i32* %38)
  br label %40

40:                                               ; preds = %36, %27
  br label %69

41:                                               ; preds = %23
  %42 = bitcast %struct.TYPE_3__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 32, i1 false)
  %43 = load i32*, i32** %12, align 8
  %44 = bitcast i32* %43 to %struct.pack_backend*
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @pack_entry_find_prefix(%struct.git_pack_entry* %16, %struct.pack_backend* %44, i32* %45, i64 %46)
  store i32 %47, i32* %15, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %16, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %16, i32 0, i32 1
  %53 = call i32 @git_packfile_unpack(%struct.TYPE_3__* %17, i32 %51, i32* %52)
  store i32 %53, i32* %15, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %10, align 8
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %16, i32 0, i32 0
  %67 = call i32 @git_oid_cpy(i32* %65, i32* %66)
  br label %68

68:                                               ; preds = %55, %49, %41
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %21
  %71 = load i32, i32* %15, align 4
  ret i32 %71
}

declare dso_local i32 @git_odb__error_ambiguous(i8*) #1

declare dso_local i32 @pack_backend__read(i8**, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pack_entry_find_prefix(%struct.git_pack_entry*, %struct.pack_backend*, i32*, i64) #1

declare dso_local i32 @git_packfile_unpack(%struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
