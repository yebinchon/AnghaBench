; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_dst.c_tr2_dst_too_many_files.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_dst.c_tr2_dst_too_many_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32* }
%struct.tr2_dst = type { i32, i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@TR2_SYSENV_MAX_FILES = common dso_local global i32 0, align 4
@tr2env_max_files = common dso_local global i32 0, align 4
@DISCARD_SENTINEL_NAME = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tr2_dst*, i8*)* @tr2_dst_too_many_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr2_dst_too_many_files(%struct.tr2_dst* %0, i8* %1) #0 {
  %3 = alloca %struct.tr2_dst*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca %struct.stat, align 4
  store %struct.tr2_dst* %0, %struct.tr2_dst** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %14 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %15 = load i32, i32* @TR2_SYSENV_MAX_FILES, align 4
  %16 = call i8* @tr2_sysenv_get(i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* @tr2env_max_files, align 4
  br label %30

30:                                               ; preds = %28, %24, %19, %2
  %31 = load i32, i32* @tr2env_max_files, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %102

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* %35)
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @is_dir_sep(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = call i32 @strbuf_addch(%struct.strbuf* %10, i8 signext 47)
  br label %49

49:                                               ; preds = %47, %34
  %50 = call i32 @strbuf_addbuf(%struct.strbuf* %11, %struct.strbuf* %10)
  %51 = load i8*, i8** @DISCARD_SENTINEL_NAME, align 8
  %52 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* %51)
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @stat(i32* %54, %struct.stat* %12)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %102

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* @opendir(i32* %60)
  store i32* %61, i32** %9, align 8
  br label %62

62:                                               ; preds = %75, %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @tr2env_max_files, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @readdir(i32* %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %66, %62
  %74 = phi i1 [ false, %66 ], [ false, %62 ], [ %72, %69 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %62

78:                                               ; preds = %73
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @closedir(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @tr2env_max_files, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %90 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @O_WRONLY, align 4
  %94 = load i32, i32* @O_CREAT, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @O_EXCL, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @open(i32* %92, i32 %97, i32 438)
  %99 = load %struct.tr2_dst*, %struct.tr2_dst** %3, align 8
  %100 = getelementptr inbounds %struct.tr2_dst, %struct.tr2_dst* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  store i32 -1, i32* %7, align 4
  br label %102

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101, %88, %57, %33
  %103 = call i32 @strbuf_release(%struct.strbuf* %10)
  %104 = call i32 @strbuf_release(%struct.strbuf* %11)
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @tr2_sysenv_get(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @is_dir_sep(i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @stat(i32*, %struct.stat*) #2

declare dso_local i32* @opendir(i32*) #2

declare dso_local i64 @readdir(i32*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @open(i32*, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
