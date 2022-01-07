; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_run_service.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_run_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.daemon_service = type { i32, i32 (%struct.argv_array*)*, i32, i32, i64 }
%struct.argv_array = type opaque
%struct.hostinfo = type { i32 }
%struct.argv_array.0 = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"Request %s for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"'%s': service not enabled.\00", align 1
@EACCES = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"service not enabled\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"no such repository\00", align 1
@export_all_trees = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"git-daemon-export-ok\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"'%s': repository not exported.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"repository not exported\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"daemon.%s\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"'%s': service not enabled for '%s'\00", align 1
@access_hook = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.daemon_service*, %struct.hostinfo*, %struct.argv_array.0*)* @run_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_service(i8* %0, %struct.daemon_service* %1, %struct.hostinfo* %2, %struct.argv_array.0* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.daemon_service*, align 8
  %8 = alloca %struct.hostinfo*, align 8
  %9 = alloca %struct.argv_array.0*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %6, align 8
  store %struct.daemon_service* %1, %struct.daemon_service** %7, align 8
  store %struct.hostinfo* %2, %struct.hostinfo** %8, align 8
  store %struct.argv_array.0* %3, %struct.argv_array.0** %9, align 8
  %13 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %14 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %18 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @loginfo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20)
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %4
  %25 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %26 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %31 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 (i8*, i8*, ...) @logerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @EACCES, align 4
  store i32 %36, i32* @errno, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @daemon_error(i8* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  br label %109

39:                                               ; preds = %24, %4
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.hostinfo*, %struct.hostinfo** %8, align 8
  %42 = call i8* @path_ok(i8* %40, %struct.hostinfo* %41)
  store i8* %42, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @daemon_error(i8* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %5, align 4
  br label %109

47:                                               ; preds = %39
  %48 = load i32, i32* @export_all_trees, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @F_OK, align 4
  %52 = call i64 @access(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 (i8*, i8*, ...) @logerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EACCES, align 4
  store i32 %57, i32* @errno, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @daemon_error(i8* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 %59, i32* %5, align 4
  br label %109

60:                                               ; preds = %50, %47
  %61 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %62 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %67 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @git_config_get_bool(i32 %71, i32* %11)
  %73 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %74

74:                                               ; preds = %65, %60
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  %78 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %79 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 (i8*, i8*, ...) @logerror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load i32, i32* @EACCES, align 4
  store i32 %85, i32* @errno, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @daemon_error(i8* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %87, i32* %5, align 4
  br label %109

88:                                               ; preds = %74
  %89 = load i64, i64* @access_hook, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.hostinfo*, %struct.hostinfo** %8, align 8
  %96 = call i64 @run_access_hook(%struct.daemon_service* %92, i8* %93, i8* %94, %struct.hostinfo* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 -1, i32* %5, align 4
  br label %109

99:                                               ; preds = %91, %88
  %100 = load i32, i32* @SIGTERM, align 4
  %101 = load i32, i32* @SIG_IGN, align 4
  %102 = call i32 @signal(i32 %100, i32 %101)
  %103 = load %struct.daemon_service*, %struct.daemon_service** %7, align 8
  %104 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %103, i32 0, i32 1
  %105 = load i32 (%struct.argv_array*)*, i32 (%struct.argv_array*)** %104, align 8
  %106 = load %struct.argv_array.0*, %struct.argv_array.0** %9, align 8
  %107 = bitcast %struct.argv_array.0* %106 to %struct.argv_array*
  %108 = call i32 %105(%struct.argv_array* %107)
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %99, %98, %77, %54, %44, %29
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @loginfo(i8*, i32, i8*) #2

declare dso_local i32 @logerror(i8*, i8*, ...) #2

declare dso_local i32 @daemon_error(i8*, i8*) #2

declare dso_local i8* @path_ok(i8*, %struct.hostinfo*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @git_config_get_bool(i32, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @run_access_hook(%struct.daemon_service*, i8*, i8*, %struct.hostinfo*) #2

declare dso_local i32 @signal(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
