; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_serve_one_client.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_serve_one_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i32 }
%struct.strbuf = type { i32 }
%struct.credential_cache_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@CREDENTIAL_INIT = common dso_local global %struct.credential zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"username=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"password=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"cache client didn't specify a timeout\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"cache client gave us a partial credential\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"cache client sent unknown action: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @serve_one_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serve_one_client(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.credential, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.credential_cache_entry*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = bitcast %struct.credential* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.credential* @CREDENTIAL_INIT to i8*), i64 8, i1 false)
  %10 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 -1, i32* %7, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @read_request(i32* %11, %struct.credential* %5, %struct.strbuf* %6, i32* %7)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %86

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcmp(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  %21 = call %struct.credential_cache_entry* @lookup_credential(%struct.credential* %5)
  store %struct.credential_cache_entry* %21, %struct.credential_cache_entry** %8, align 8
  %22 = load %struct.credential_cache_entry*, %struct.credential_cache_entry** %8, align 8
  %23 = icmp ne %struct.credential_cache_entry* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.credential_cache_entry*, %struct.credential_cache_entry** %8, align 8
  %27 = getelementptr inbounds %struct.credential_cache_entry, %struct.credential_cache_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.credential_cache_entry*, %struct.credential_cache_entry** %8, align 8
  %33 = getelementptr inbounds %struct.credential_cache_entry, %struct.credential_cache_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %24, %20
  br label %85

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = call i32 @exit(i32 0) #4
  unreachable

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcmp(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 @remove_credential(%struct.credential* %5)
  br label %83

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %77

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.credential, %struct.credential* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.credential, %struct.credential* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66, %62
  %71 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %76

72:                                               ; preds = %66
  %73 = call i32 @remove_credential(%struct.credential* %5)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @cache_credential(%struct.credential* %5, i32 %74)
  br label %76

76:                                               ; preds = %72, %70
  br label %77

77:                                               ; preds = %76, %60
  br label %82

78:                                               ; preds = %52
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %77
  br label %83

83:                                               ; preds = %82, %50
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %37
  br label %86

86:                                               ; preds = %85, %14
  %87 = call i32 @credential_clear(%struct.credential* %5)
  %88 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_request(i32*, %struct.credential*, %struct.strbuf*, i32*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local %struct.credential_cache_entry* @lookup_credential(%struct.credential*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @remove_credential(%struct.credential*) #2

declare dso_local i32 @warning(i8*, ...) #2

declare dso_local i32 @cache_credential(%struct.credential*, i32) #2

declare dso_local i32 @credential_clear(%struct.credential*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
