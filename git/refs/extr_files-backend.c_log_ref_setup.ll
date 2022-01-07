; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_log_ref_setup.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_log_ref_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@open_or_create_logfile = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"unable to create directory for '%s': %s\00", align 1
@EISDIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"there are still logs under '%s'\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to append to '%s': %s\00", align 1
@O_APPEND = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.files_ref_store*, i8*, i32, i32*, %struct.strbuf*)* @log_ref_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_ref_setup(%struct.files_ref_store* %0, i8* %1, i32 %2, i32* %3, %struct.strbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.files_ref_store*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca i8*, align 8
  store %struct.files_ref_store* %0, %struct.files_ref_store** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  %14 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @files_reflog_path(%struct.files_ref_store* %15, %struct.strbuf* %12, i8* %16)
  %18 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %18, i8** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @should_autocreate_reflog(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %21, %5
  %26 = load i8*, i8** %13, align 8
  %27 = load i32, i32* @open_or_create_logfile, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @raceproof_create_file(i8* %26, i32 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @ENOENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = call i32 @strerror(i64 %38)
  %40 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  br label %56

41:                                               ; preds = %31
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EISDIR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %55

49:                                               ; preds = %41
  %50 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i64, i64* @errno, align 8
  %53 = call i32 @strerror(i64 %52)
  %54 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %35
  br label %95

57:                                               ; preds = %25
  br label %85

58:                                               ; preds = %21
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @O_APPEND, align 4
  %61 = load i32, i32* @O_WRONLY, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @open(i8* %59, i32 %62, i32 438)
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %58
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @ENOENT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EISDIR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  br label %83

77:                                               ; preds = %72
  %78 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* @errno, align 8
  %81 = call i32 @strerror(i64 %80)
  %82 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %79, i32 %81)
  br label %95

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @adjust_shared_perm(i8* %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @free(i8* %93)
  store i32 0, i32* %6, align 4
  br label %98

95:                                               ; preds = %77, %56
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @free(i8* %96)
  store i32 -1, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i64 @should_autocreate_reflog(i8*) #2

declare dso_local i64 @raceproof_create_file(i8*, i32, i32*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @adjust_shared_perm(i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
