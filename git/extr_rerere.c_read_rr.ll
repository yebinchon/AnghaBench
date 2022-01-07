; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_read_rr.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_read_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.repository = type { i32 }
%struct.string_list = type { i32 }
%struct.rerere_id = type { i32 }
%struct.TYPE_4__ = type { %struct.rerere_id* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"corrupt MERGE_RR\00", align 1
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.string_list*)* @read_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_rr(%struct.repository* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rerere_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %13 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %14 = load %struct.repository*, %struct.repository** %3, align 8
  %15 = call i32 @git_path_merge_rr(%struct.repository* %14)
  %16 = call i32* @fopen_or_warn(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %107

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %85, %20
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @strbuf_getwholeline(%struct.strbuf* %5, i32* %22, i8 signext 0)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %103

26:                                               ; preds = %21
  %27 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_hash_algo, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 2
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @get_sha1_hex(i8* %41, i8* %30)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %26
  %45 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @die(i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 46
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8* %61, i8** %7, align 8
  br label %76

62:                                               ; preds = %47
  store i64 0, i64* @errno, align 8
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @strtol(i8* %68, i8** %7, i32 10)
  store i32 %69, i32* %11, align 4
  %70 = load i64, i64* @errno, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @die(i32 %73)
  br label %75

75:                                               ; preds = %72, %62
  br label %76

76:                                               ; preds = %75, %56
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 9
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %84 = call i32 @die(i32 %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call %struct.rerere_id* @new_rerere_id_hex(i8* %92)
  store %struct.rerere_id* %93, %struct.rerere_id** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.rerere_id*, %struct.rerere_id** %10, align 8
  %96 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.rerere_id*, %struct.rerere_id** %10, align 8
  %98 = load %struct.string_list*, %struct.string_list** %4, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call %struct.TYPE_4__* @string_list_insert(%struct.string_list* %98, i8* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store %struct.rerere_id* %97, %struct.rerere_id** %101, align 8
  %102 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %102)
  br label %21

103:                                              ; preds = %21
  %104 = call i32 @strbuf_release(%struct.strbuf* %5)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @fclose(i32* %105)
  br label %107

107:                                              ; preds = %103, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen_or_warn(i32, i8*) #2

declare dso_local i32 @git_path_merge_rr(%struct.repository*) #2

declare dso_local i32 @strbuf_getwholeline(%struct.strbuf*, i32*, i8 signext) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @get_sha1_hex(i8*, i8*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local %struct.rerere_id* @new_rerere_id_hex(i8*) #2

declare dso_local %struct.TYPE_4__* @string_list_insert(%struct.string_list*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
