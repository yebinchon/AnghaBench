; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_remove_loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_remove_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.packref = type { i32, i32, i32 }

@GIT_FILEBUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@PACKREF_WAS_LOOSE = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to lock loose reference '%s'\00", align 1
@GIT_SYMREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @packed_remove_loose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_remove_loose(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.packref*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = bitcast %struct.TYPE_14__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_FILEBUF_INIT to i8*), i64 4, i1 false)
  %11 = bitcast %struct.TYPE_15__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_15__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %92, %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @git_sortedcache_entrycount(i32 %16)
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %12
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call %struct.packref* @git_sortedcache_entry(i32 %22, i64 %23)
  store %struct.packref* %24, %struct.packref** %8, align 8
  %25 = load %struct.packref*, %struct.packref** %8, align 8
  %26 = icmp ne %struct.packref* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.packref*, %struct.packref** %8, align 8
  %29 = getelementptr inbounds %struct.packref, %struct.packref* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PACKREF_WAS_LOOSE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %19
  br label %92

35:                                               ; preds = %27
  %36 = call i32 @git_filebuf_cleanup(%struct.TYPE_14__* %5)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = load %struct.packref*, %struct.packref** %8, align 8
  %39 = getelementptr inbounds %struct.packref, %struct.packref* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @loose_lock(%struct.TYPE_14__* %5, %struct.TYPE_13__* %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GIT_EEXISTS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @GIT_ENOTFOUND, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %35
  br label %92

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = call i32 @git_buf_dispose(%struct.TYPE_15__* %6)
  %55 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %56 = load %struct.packref*, %struct.packref** %8, align 8
  %57 = getelementptr inbounds %struct.packref, %struct.packref* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @git_error_set(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %98

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @git_futils_readbuffer(%struct.TYPE_15__* %6, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @GIT_ENOTFOUND, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %92

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @GIT_SYMREF, align 4
  %73 = call i32 @git__prefixcmp(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %92

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @loose_parse_oid(i32* %9, i32 %78, %struct.TYPE_15__* %6)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %92

82:                                               ; preds = %76
  %83 = load %struct.packref*, %struct.packref** %8, align 8
  %84 = getelementptr inbounds %struct.packref, %struct.packref* %83, i32 0, i32 1
  %85 = call i32 @git_oid_equal(i32* %9, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %92

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @p_unlink(i32 %90)
  br label %92

92:                                               ; preds = %88, %87, %81, %75, %68, %49, %34
  %93 = load i64, i64* %4, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %4, align 8
  br label %12

95:                                               ; preds = %12
  %96 = call i32 @git_buf_dispose(%struct.TYPE_15__* %6)
  %97 = call i32 @git_filebuf_cleanup(%struct.TYPE_14__* %5)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %53
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_sortedcache_entrycount(i32) #2

declare dso_local %struct.packref* @git_sortedcache_entry(i32, i64) #2

declare dso_local i32 @git_filebuf_cleanup(%struct.TYPE_14__*) #2

declare dso_local i32 @loose_lock(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_15__*) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @git__prefixcmp(i32, i32) #2

declare dso_local i64 @loose_parse_oid(i32*, i32, %struct.TYPE_15__*) #2

declare dso_local i32 @git_oid_equal(i32*, i32*) #2

declare dso_local i32 @p_unlink(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
